from RigSample.CharacterRig.iArmRig import IArmRig
from maya import cmds


class ArmRig(IArmRig):

    def __init__(self, namespace: str, is_left: bool):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "L" if is_left else "R"

    @property
    def ik_joints_parent(self):
        return f"{self.__namespace}:{self.__side}_Clavicle_ctrl"

    @property
    def elbow_offset(self):
        return 0, 0, -25

    @property
    def up_arm_fk_ctrl_pos(self):
        return f"{self.up_arm_fk_ctrl}_pos"

    @property
    def low_arm_fk_ctrl_pos(self):
        return f"{self.low_arm_fk_ctrl}_pos"

    @property
    def hand_fk_ctrl_pos(self):
        return f"{self.hand_fk_ctrl}_pos"

    @property
    def hand_ik_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Hand_ik_ctrl"

    @property
    def hand_ik_handle(self):
        return f"{self.__namespace}_{self.__side}_Hand_ik_handle"

    @property
    def hand_ik_ctrl_pos(self):
        return f"{self.hand_ik_ctrl}_pos"

    @property
    def elbow_ik_ctrl_pos(self):
        return f"{self.elbow_ik_ctrl}_pos"

    @property
    def blend_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Hand_Blend_ctrl"

    @property
    def blend_attr(self):
        return f"{self.blend_ctrl}.IkFk"

    @property
    def up_arm_fk_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Upperarm_fk_ctrl"

    @property
    def low_arm_fk_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Forearm_fk_ctrl"

    @property
    def hand_fk_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Hand_fk_ctrl"

    @property
    def elbow_ik_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Elbow_ik_ctrl"

    @property
    def up_arm_fk_joint(self):
        return f":{self.__namespace}:{self.__side}_up_arm_fk_bone"

    @property
    def low_arm_fk_joint(self):
        return f":{self.__namespace}:{self.__side}_low_arm_fk_bone"

    @property
    def hand_fk_joint(self):
        return f":{self.__namespace}:{self.__side}_hand_fk_bone"

    @property
    def fk_joints(self):
        return [self.up_arm_fk_joint, self.low_arm_fk_joint, self.hand_fk_joint]

    @property
    def fk_ctrls(self):
        return [self.up_arm_fk_ctrl, self.low_arm_fk_ctrl, self.hand_fk_ctrl]

    @property
    def fk_ctrl_poses(self):
        return [f"{self.up_arm_fk_ctrl}_pos", f"{self.low_arm_fk_ctrl}_pos", f"{self.hand_fk_ctrl}_pos"]

    @property
    def fk_joints_parent(self):
        return f"{self.__namespace}:{self.__side}_Clavicle_ctrl"

    @property
    def ik_ctrls(self):
        return [self.hand_ik_ctrl, self.elbow_ik_ctrl]

    @property
    def up_arm_ik_joint(self):
        return f":{self.__namespace}:{self.__side}_up_arm_ik_bone"

    @property
    def low_arm_ik_joint(self):
        return f":{self.__namespace}:{self.__side}_low_arm_ik_bone"

    @property
    def hand_ik_joint(self):
        return f":{self.__namespace}:{self.__side}_hand_ik_bone"

    @property
    def ik_joints(self):
        return [self.up_arm_ik_joint, self.low_arm_ik_joint, self.hand_ik_joint]

    @property
    def rig_set(self):
        return f"{self.__namespace}_{self.__side}_Arm_Rig_Set"

    def get_fk_joint(self, base_joint):
        return f"{base_joint}_fk"

    def align_fk_ctrl_to_joint(self):
        cmds.parentConstraint(self.up_arm_fk_joint, self.up_arm_fk_ctrl_pos, mo=False)
        cmds.parentConstraint(self.low_arm_fk_joint, self.low_arm_fk_ctrl_pos, mo=False)
        cmds.parentConstraint(self.hand_fk_joint, self.hand_fk_ctrl_pos, mo=False)

        self.reset_ctrl_pos()

        cmds.delete([self.up_arm_fk_ctrl_pos, self.low_arm_fk_ctrl_pos, self.hand_fk_ctrl_pos], cn=True)

    def create_fk_joint(self, joints):
        for fk_joint in self.fk_joints:
            if fk_joint:
                if cmds.objExists(fk_joint):
                    cmds.delete(fk_joint)

        for i in range(len(joints)):
            cmds.duplicate(joints[i], po=True, name=self.fk_joints[i])

        cmds.parent(self.hand_fk_joint, self.low_arm_fk_joint)
        cmds.parent(self.low_arm_fk_joint, self.up_arm_fk_joint)

        cmds.parent(self.up_arm_fk_joint, self.fk_joints_parent)

        # ジョイントは非表示にする
        for joint in self.fk_joints:
            cmds.setAttr(f"{joint}.visibility", 0)

    def constraint_fk(self):
        cmds.parentConstraint(self.up_arm_fk_ctrl, self.up_arm_fk_joint, mo=False)
        cmds.parentConstraint(self.low_arm_fk_ctrl, self.low_arm_fk_joint, mo=False)
        cmds.parentConstraint(self.hand_fk_ctrl, self.hand_fk_joint, mo=False)

    def create_ik_joint(self, joints):
        for ik_bone in self.ik_joints:
            if ik_bone:
                if cmds.objExists(ik_bone):
                    cmds.delete(ik_bone)

        for i in range(len(joints)):
            cmds.duplicate(joints[i], po=True, name=self.ik_joints[i])

        cmds.parent(self.hand_ik_joint, self.low_arm_ik_joint)
        cmds.parent(self.low_arm_ik_joint, self.up_arm_ik_joint)

        cmds.setAttr(f"{self.low_arm_ik_joint}.preferredAngleX", 5)
        cmds.parent(self.up_arm_ik_joint, self.ik_joints_parent)

        # ジョイントは非表示にする
        for joint in self.ik_joints:
            cmds.setAttr(f"{joint}.visibility", 0)

    def align_ik_ctrl_to_joint(self):
        cmds.pointConstraint(self.low_arm_ik_joint, self.elbow_ik_ctrl_pos, offset=self.elbow_offset)
        cmds.orientConstraint(self.hand_ik_joint, self.hand_ik_ctrl_pos)

        cmds.xform(self.hand_ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.xform(self.elbow_ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

        cmds.delete([self.low_arm_ik_joint, self.hand_ik_joint], cn=True)

    def constraint_ik(self):

        if cmds.objExists(self.hand_ik_handle):
            cmds.delete(self.hand_ik_handle)

        cmds.ikHandle(name=self.hand_ik_handle, startJoint=self.up_arm_ik_joint, endEffector=self.hand_ik_joint, solver="ikRPsolver")
        cmds.parent(self.hand_ik_handle, self.hand_ik_ctrl)
        cmds.setAttr(f"{self.hand_ik_handle}.visibility", 0)

        cmds.orientConstraint(self.hand_ik_ctrl, self.hand_ik_joint, mo=True)

        cmds.poleVectorConstraint(self.elbow_ik_ctrl, self.hand_ik_handle, w=1)

    def create_rig_set(self) -> str:
        if not cmds.objExists(self.rig_set):
            cmds.sets(self.up_arm_fk_ctrl, self.low_arm_fk_ctrl, self.hand_fk_ctrl, self.hand_ik_ctrl, self.elbow_ik_ctrl, n=self.rig_set)

        return self.rig_set

    def lock_attrs(self, lock=True) -> None:
        for fk_ctrl in self.fk_ctrls:
            cmds.setAttr(f"{fk_ctrl}.t", lock=lock)
            cmds.setAttr(f"{fk_ctrl}.s", lock=lock)

        for ik_ctrl in self.ik_ctrls:
            cmds.setAttr(f"{ik_ctrl}.s", lock=lock)

        for channel in "trs":
            for axis in "xyz":
                cmds.setAttr(f"{self.blend_ctrl}.{channel}{axis}", lock=lock)
        cmds.setAttr(f"{self.blend_ctrl}.visibility", lock=lock)

    def __remove_namespace(self, ctrl):
        return ctrl.split(":")[1]

    def reset_ctrl_pos(self):
        for fk_ctrl in self.fk_ctrls:
            cmds.xform(fk_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        for ik_ctrl in self.ik_ctrls:
            cmds.xform(ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_blend_ctrl(self, parent_joint):

        orient_offset = (0, 0, 0) if self.__is_left else (0, 180, 0)

        cmds.pointConstraint(parent_joint, self.blend_ctrl)
        cmds.orientConstraint(parent_joint, self.blend_ctrl, offset=orient_offset)
