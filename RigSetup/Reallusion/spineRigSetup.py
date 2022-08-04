from maya import cmds

from RigSample.Character import ISpine
from RigSample.CharacterRig import ISpineRig
from RigSample.CharacterRig.IBodyRig import IBodyRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class SpineRigSetup(IRigSetup):

    def __init__(self, spine: ISpine.ISpine, rig: ISpineRig.ISpineRig, body_rig: IBodyRig):
        self.__spine = spine
        self.__rig = rig
        self.__body_rig = body_rig

    def align_ctrls(self):
        cmds.parentConstraint(self.__spine.joint_waist, self.__rig.waist_fk_ctrl_pos, mo=False)
        cmds.parentConstraint(self.__spine.joint_spine1, self.__rig.spine1_fk_ctrl_pos, mo=False)
        cmds.parentConstraint(self.__spine.joint_spine2, self.__rig.spine2_fk_ctrl_pos, mo=False)

        cmds.parentConstraint(self.__spine.joint_waist, self.__rig.waist_ik_ctrl_pos, mo=False)
        cmds.pointConstraint(self.__spine.joint_neck, self.__rig.neck_ik_ctrl_pos, mo=False)

        cmds.delete(self.__spine.joint_waist, cn=True)
        cmds.delete(self.__spine.joint_spine1, cn=True)
        cmds.delete(self.__spine.joint_spine2, cn=True)
        cmds.delete(self.__spine.joint_waist, cn=True)
        cmds.delete(self.__spine.joint_neck, cn=True)

    def constraint_ctrls(self):

        self.__rig.create_fk_joints(self.__spine.joints)
        self.__rig.setup_fk()

        self.__rig.create_ik_joints(self.__spine.joints)
        self.__rig.setup_ik()

        self.setup_transform_blend()
        self.setup_rotate_blend()
        self.setup_visibility_blend()

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)

    def setup_transform_blend(self):
        for i in range(len(self.__spine.joints)):
            pair_blend_transform = f"{self.__spine.joints[i]}_pair_blend_transform"
            cmds.createNode("pairBlend", n=pair_blend_transform)
            cmds.setAttr(f"{pair_blend_transform}.rotInterpolation", 1)
            cmds.connectAttr(f"{self.__rig.fk_joints[i]}.translate", f"{pair_blend_transform}.inRotate1", force=True)
            cmds.connectAttr(f"{self.__rig.ik_joints[i]}.translate", f"{pair_blend_transform}.inRotate2", force=True)

            cmds.connectAttr(self.__body_rig.spine_blend_attr, f"{pair_blend_transform}.weight", force=True)
            for axis in "xyz":
                cmds.connectAttr(f"{pair_blend_transform}.or{axis}", f"{self.__spine.joints[i]}.t{axis}", force=True)

    def setup_rotate_blend(self):
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

    def setup_visibility_blend(self):
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
