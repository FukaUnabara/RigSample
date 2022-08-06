from maya import cmds

from RigSample.Character.ISpine import ISpine
from RigSample.CharacterRig.IBodyRig import IBodyRig
from RigSample.CharacterRig.ISpineRig import ISpineRig
from RigSample.RigSetup import TransformFunc
from RigSample.RigSetup.iRigSetup import IRigSetup


class SpineRigSetup(IRigSetup):

    def __init__(self, spine: ISpine, rig: ISpineRig, hip_rig: IBodyRig):
        self.__spine = spine
        self.__rig = rig
        self.__body_rig = hip_rig

    def align_ctrls(self):

        cmds.parentConstraint(self.__spine.joint_waist, f"{self.__rig.waist_fk_ctrl}_pos", mo=False)
        cmds.parentConstraint(self.__spine.joint_spine1, f"{self.__rig.spine1_fk_ctrl}_pos", mo=False)
        cmds.parentConstraint(self.__spine.joint_spine2, f"{self.__rig.spine2_fk_ctrl}_pos", mo=False)

        cmds.pointConstraint(self.__spine.joint_waist, f"{self.__rig.waist_ik_ctrl}_pos", mo=False)
        cmds.pointConstraint(self.__spine.joint_spine2, f"{self.__rig.spine_ik_ctrl}_pos", mo=False)
        cmds.pointConstraint(self.__spine.joint_neck, f"{self.__rig.neck_ik_ctrl}_pos", mo=False)

        cmds.delete(self.__spine.joint_waist, cn=True)
        cmds.delete(self.__spine.joint_spine1, cn=True)
        cmds.delete(self.__spine.joint_spine2, cn=True)
        cmds.delete(self.__spine.joint_neck, cn=True)

    def constraint_ctrls(self):

        self.__constraint_ik()
        self.__constraint_fk()

        self.__setup_transform_blend()
        self.__setup_rotate_blend()
        self.__setup_visibility_blend()

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)

    def __constraint_ik(self):
        # 複製とリネーム
        duplicated = cmds.duplicate(self.__spine.joints, po=True)
        for i in range(len(duplicated)):
            cmds.rename(duplicated[i], self.__rig.ik_joints[i])

        # ik骨の階層・表示設定
        cmds.parent(self.__rig.waist_ik_joint, self.__body_rig.body_ctrl)
        for i in self.__rig.ik_joints:
            cmds.setAttr(f"{i}.v", False)

        start_joint = self.__rig.waist_ik_joint
        end_effector = self.__rig.neck_ik_joint
        spine_ik_handle, effector, ik_curve = cmds.ikHandle(startJoint=start_joint, endEffector=end_effector, sol="ikSplineSolver", pcv=False)

        # spline ik handleを動かすためのジョイント作成と位置合わせ
        hip_ik_ctrl_joint = cmds.joint(self.__rig.waist_ik_ctrl)
        spine_ik_ctrl_joint = cmds.joint(self.__rig.spine_ik_ctrl)
        neck_ik_ctrl_joint = cmds.joint(self.__rig.neck_ik_ctrl)

        cmds.pointConstraint(self.__rig.waist_ik_ctrl, hip_ik_ctrl_joint)
        cmds.pointConstraint(self.__rig.spine_ik_ctrl, spine_ik_ctrl_joint)
        cmds.pointConstraint(self.__rig.neck_ik_ctrl, neck_ik_ctrl_joint)

        cmds.delete(self.__rig.waist_ik_ctrl, self.__rig.spine_ik_ctrl, self.__rig.neck_ik_ctrl, cn=True)

        TransformFunc.bake_transform_to_offset_parent_matrix([hip_ik_ctrl_joint])
        TransformFunc.bake_transform_to_offset_parent_matrix([spine_ik_ctrl_joint])
        TransformFunc.bake_transform_to_offset_parent_matrix([neck_ik_ctrl_joint])

        cmds.parent(spine_ik_handle, self.__rig.rig_root)
        cmds.parent(ik_curve, self.__rig.rig_root)

        cmds.setAttr(f"{ik_curve}.v", False)
        cmds.skinCluster(neck_ik_ctrl_joint, spine_ik_ctrl_joint, hip_ik_ctrl_joint, ik_curve)

        self.__setup_ik_roll(spine_ik_handle)

    # y軸回転の設定
    def __setup_ik_roll(self, spine_ik_handle):
        roll_pma_node = cmds.createNode("plusMinusAverage")
        cmds.connectAttr(f"{self.__rig.waist_ik_ctrl}.ry", f"{roll_pma_node}.input1D[0]", f=True)
        cmds.connectAttr(f"{self.__rig.spine_ik_ctrl}.ry", f"{roll_pma_node}.input1D[1]", f=True)
        cmds.connectAttr(f"{roll_pma_node}.output1D", f"{spine_ik_handle}.roll", f=True)

        waist_divide_node = cmds.createNode("multiplyDivide")
        cmds.connectAttr(f"{self.__rig.waist_ik_ctrl}.ry", f"{waist_divide_node}.input1X", f=True)
        cmds.setAttr(f"{waist_divide_node}.input2X", -1)

        twist_pma_node = cmds.createNode("plusMinusAverage")
        cmds.connectAttr(f"{waist_divide_node}.outputX", f"{twist_pma_node}.input1D[0]", f=True)
        cmds.connectAttr(f"{self.__rig.neck_ik_ctrl}.ry", f"{twist_pma_node}.input1D[1]", f=True)
        cmds.connectAttr(f"{self.__rig.spine_ik_ctrl}.ry", f"{twist_pma_node}.input1D[2]", f=True)

        cmds.connectAttr(f"{twist_pma_node}.output1D", f"{spine_ik_handle}.twist", f=True)

        # cmds.connectAttr(f"{self.__rig.neck_ik_ctrl}.ry")

    def __constraint_fk(self):
        duplicated = cmds.duplicate(self.__spine.joints, po=True)
        for fk_joint in range(len(duplicated)):
            cmds.rename(duplicated[fk_joint], self.__rig.fk_joints[fk_joint])

        # fk骨の階層設定
        cmds.parent(self.__rig.waist_fk_joint, self.__body_rig.body_ctrl)

        for fk_joint in self.__rig.fk_joints:
            cmds.setAttr(f"{fk_joint}.v", False)

        cmds.parentConstraint(self.__rig.waist_fk_ctrl, self.__rig.waist_fk_joint)
        cmds.parentConstraint(self.__rig.spine1_fk_ctrl, self.__rig.spine1_fk_joint)
        cmds.parentConstraint(self.__rig.spine2_fk_ctrl, self.__rig.spine2_fk_joint)

    def __setup_transform_blend(self):
        for i in range(len(self.__spine.joints)):
            pair_blend_transform = f"{self.__spine.joints[i]}_pair_blend_transform"
            cmds.createNode("pairBlend", n=pair_blend_transform)
            cmds.setAttr(f"{pair_blend_transform}.rotInterpolation", 1)
            cmds.connectAttr(f"{self.__rig.fk_joints[i]}.translate", f"{pair_blend_transform}.inRotate1", force=True)
            cmds.connectAttr(f"{self.__rig.ik_joints[i]}.translate", f"{pair_blend_transform}.inRotate2", force=True)

            cmds.connectAttr(self.__body_rig.spine_blend_attr, f"{pair_blend_transform}.weight", force=True)
            for axis in "xyz":
                cmds.connectAttr(f"{pair_blend_transform}.or{axis}", f"{self.__spine.joints[i]}.t{axis}", force=True)

    def __setup_rotate_blend(self):
        for i in range(len(self.__spine.joints)):
            pair_blend_rotate = f"{self.__spine.joints[i]}_pair_blend_rotate"
            cmds.createNode("pairBlend", n=pair_blend_rotate)
            cmds.setAttr(f"{pair_blend_rotate}.rotInterpolation", 1)

            cmds.connectAttr(f"{self.__rig.fk_joints[i]}.rotate", f"{pair_blend_rotate}.inRotate1", force=True)
            cmds.connectAttr(f"{self.__rig.ik_joints[i]}.rotate", f"{pair_blend_rotate}.inRotate2", force=True)
            # ペアブレンドとアトリビュートの接続
            cmds.connectAttr(self.__body_rig.spine_blend_attr, f"{pair_blend_rotate}.weight", force=True)
            for axis in "xyz":
                cmds.connectAttr(f"{pair_blend_rotate}.or{axis}", f"{self.__spine.joints[i]}.r{axis}", force=True)

    def __setup_visibility_blend(self):
        condition_node = cmds.createNode("condition")
        cmds.setAttr(f"{condition_node}.colorIfTrueR", 1)
        cmds.setAttr(f"{condition_node}.colorIfFalseR", 0)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 1)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 0)

        cmds.connectAttr(self.__body_rig.spine_blend_attr, f"{condition_node}.firstTerm", f=True)

        for fk in self.__rig.fk_ctrls:
            cmds.connectAttr(f"{condition_node}.outColorR", f"{fk}Shape.visibility", f=True)
        for ik in self.__rig.ik_ctrls:
            cmds.connectAttr(f"{condition_node}.outColorG", f"{ik}Shape.visibility", f=True)
