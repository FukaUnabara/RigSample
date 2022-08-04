from maya import cmds

from RigSample.CharacterRig.ISpineRig import ISpineRig


class SpineRig(ISpineRig):

    @property
    def ik_ctrls(self):
        return [self.waist_ik_ctrl, self.neck_ik_ctrl]

    @property
    def fk_ctrls(self):
        return [self.waist_fk_ctrl, self.spine1_fk_ctrl, self.spine2_fk_ctrl]

    @property
    def waist_ik_joint(self):
        return f"{self.__namespace}:waist_ik_joint"

    @property
    def spine1_ik_joint(self):
        return f"{self.__namespace}:spine1_ik_joint"

    @property
    def spine2_ik_joint(self):
        return f"{self.__namespace}:spine2_ik_joint"

    @property
    def neck_ik_joint(self):
        return f"{self.__namespace}:neck_ik_joint"

    @property
    def ik_joints(self):
        return [self.waist_ik_joint, self.spine1_ik_joint, self.spine2_ik_joint, self.neck_ik_joint]

    @property
    def waist_fk_joint(self):
        return f":{self.__namespace}:waist_fk_joint"

    @property
    def spine1_fk_joint(self):
        return f":{self.__namespace}:spine1_fk_joint"

    @property
    def spine2_fk_joint(self):
        return f":{self.__namespace}:spine2_fk_joint"

    @property
    def neck_fk_joint(self):
        return f":{self.__namespace}:neck_fk_joint"

    @property
    def fk_joints(self):
        return [self.waist_fk_joint, self.spine1_fk_joint, self.spine2_fk_joint, self.neck_fk_joint]

    @property
    def joint_parent(self):
        return f"{self.__namespace}:body_ctrl"

    @property
    def waist_fk_ctrl(self):
        return f"{self.__namespace}:Waist_fk_ctrl"

    @property
    def spine1_fk_ctrl(self):
        return f"{self.__namespace}:Spine01_fk_ctrl"

    @property
    def spine2_fk_ctrl(self):
        return f"{self.__namespace}:Spine02_fk_ctrl"

    @property
    def waist_fk_ctrl_pos(self):
        return f"{self.waist_fk_ctrl}_pos"

    @property
    def spine1_fk_ctrl_pos(self):
        return f"{self.spine1_fk_ctrl}_pos"

    @property
    def spine2_fk_ctrl_pos(self):
        return f"{self.spine2_fk_ctrl}_pos"

    @property
    def waist_ik_ctrl(self):
        return f"{self.__namespace}:Waist_ik_ctrl"

    @property
    def neck_ik_ctrl(self):
        return f"{self.__namespace}:Neck_ik_ctrl"

    @property
    def waist_ik_ctrl_pos(self):
        return f"{self.waist_ik_ctrl}_pos"

    @property
    def neck_ik_ctrl_pos(self):
        return f"{self.neck_ik_ctrl}_pos"

    @property
    def rig_set(self):
        return f"{self.__namespace}:rig_set"

    def __init__(self, namespace):
        self.__namespace = namespace

    def create_fk_joints(self, joints):

        for fk_joint in self.fk_joints:
            if cmds.objExists(fk_joint):
                cmds.delete(fk_joint)

        duplicated = cmds.duplicate(joints, po=True)
        for i in range(len(duplicated)):
            cmds.rename(duplicated[i], self.fk_joints[i])

        # fk骨の階層設定
        cmds.parent(self.waist_fk_joint, self.joint_parent)

        for i in self.fk_joints:
            cmds.setAttr(f"{i}.v", False)

    def create_ik_joints(self, joints):

        for ik_joint in self.ik_joints:
            if cmds.objExists(ik_joint):
                cmds.delete(ik_joint)

        duplicated = cmds.duplicate(joints, po=True)
        for i in range(len(duplicated)):
            cmds.rename(duplicated[i], self.ik_joints[i])

        # fk骨の階層設定
        cmds.parent(self.waist_ik_joint, self.joint_parent)

        for i in self.ik_joints:
            cmds.setAttr(f"{i}.v", False)

    def setup_fk(self):

        cmds.parentConstraint(self.waist_fk_ctrl, self.waist_fk_joint)
        cmds.parentConstraint(self.spine1_fk_ctrl, self.spine1_fk_joint)
        cmds.parentConstraint(self.spine2_fk_ctrl, self.spine2_fk_joint)

    def setup_ik(self, waist_joint, spine2_joint, neck_joint):

        start_joint = self.waist_ik_joint
        end_effector = self.neck_ik_joint
        spine_ik_handle, effector, ik_curve = cmds.ikHandle(startJoint=start_joint, endEffector=end_effector, sol="ikSplineSolver")

        # spline ik handleを動かすためのジョイント作成と位置合わせ
        waist_ik_ctrl_joint = cmds.joint()
        cmds.pointConstraint(start_joint, waist_ik_ctrl_joint)

        if not cmds.listRelatives(waist_ik_ctrl_joint, parent=True)[0] == self.waist_ik_ctrl:
            cmds.parent(waist_ik_ctrl_joint, self.waist_ik_ctrl)

        neck_ik_ctrl_joint = cmds.joint()
        cmds.pointConstraint(end_effector, neck_ik_ctrl_joint)

        cmds.delete(neck_ik_ctrl_joint, waist_ik_ctrl_joint, cn=True)

        if not cmds.listRelatives(neck_ik_ctrl_joint, parent=True)[0] == self.neck_ik_ctrl:
            cmds.parent(neck_ik_ctrl_joint, self.neck_ik_ctrl)

        cmds.skinCluster(neck_ik_ctrl_joint, waist_ik_ctrl_joint, ik_curve)

    def lock_attrs(self, lock=True) -> None:

        for fk in self.fk_ctrls:
            for attr in "ts":
                cmds.setAttr(f"{fk}.{attr}", lock=lock)
                cmds.setAttr(f"{fk}.{attr}", lock=lock)

        cmds.setAttr(f"{self.waist_ik_ctrl}.t", lock=True)
        cmds.setAttr(f"{self.waist_ik_ctrl}.s", lock=True)
        cmds.setAttr(f"{self.neck_ik_ctrl}.s", lock=True)

        cmds.setAttr(f"{self.waist_ik_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.spine1_fk_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.spine2_fk_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.neck_ik_ctrl}.visibility", lock=lock)

    def __remove_namespace(self, ctrl):
        return ctrl.split(":")[1]
