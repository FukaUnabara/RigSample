from maya import cmds

from RigSample.CharacterRig import iLegRig


class LegRig(iLegRig.ILegRig):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "L" if is_left else "R"

    @property
    def up_leg_fk_ctrl(self) -> str:
        return f"{self.__namespace}:{self.__side}_Thigh_fk_ctrl"

    @property
    def low_leg_fk_ctrl(self):
        return f"{self.__namespace}:{self.__side}_Calf_fk_ctrl"

    @property
    def foot_fk_ctrl(self) -> str:
        return f"{self.__namespace}:{self.__side}_Foot_fk_ctrl"

    @property
    def fk_ctrls(self) -> []:
        return [self.up_leg_fk_ctrl, self.low_leg_fk_ctrl, self.foot_fk_ctrl]

    @property
    def up_leg_fk_ctrl_pos(self) -> str:
        return f"{self.up_leg_fk_ctrl}_pos"

    @property
    def low_leg_fk_ctrl_pos(self) -> str:
        return f"{self.low_leg_fk_ctrl}_pos"

    @property
    def foot_fk_ctrl_pos(self) -> str:
        return f"{self.foot_fk_ctrl}_pos"

    @property
    def up_leg_fk_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}UpLeg_fk_bone"

    @property
    def low_leg_fk_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}Leg_fk_bone"

    @property
    def foot_fk_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}Foot_fk_bone"

    @property
    def fk_joints(self) -> []:
        return [self.up_leg_fk_joint, self.low_leg_fk_joint, self.foot_fk_joint]

    @property
    def fk_joints_parent(self) -> str:
        return f"{self.__namespace}:body_ctrl"

    @property
    def foot_ik_ctrl(self) -> str:
        return f":{self.__namespace}:{self.__side}_Foot_ik_ctrl"

    @property
    def knee_ik_ctrl(self) -> str:
        return f":{self.__namespace}:{self.__side}_Knee_ik_ctrl"

    @property
    def ik_ctrls(self) -> []:
        return [self.foot_ik_ctrl, self.knee_ik_ctrl]

    @property
    def foot_ik_ctrl_pos(self) -> str:
        return f"{self.foot_ik_ctrl}_pos"

    @property
    def knee_ik_ctrl_pos(self) -> str:
        return f"{self.knee_ik_ctrl}_pos"

    @property
    def up_leg_ik_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}_UpLeg_ik_bone"

    @property
    def low_leg_ik_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}_Leg_ik_bone"

    @property
    def foot_ik_joint(self) -> str:
        return f":{self.__namespace}:{self.__side}_Foot_ik_bone"

    @property
    def ik_joints(self) -> []:
        return [self.up_leg_ik_joint, self.low_leg_ik_joint, self.foot_ik_joint]

    @property
    def ik_joints_parent(self) -> str:
        return f"{self.__namespace}:Pelvis_ctrl"

    @property
    def leg_ik_handle(self) -> str:
        return f":{self.__namespace}:{self.__side}_Leg_ik_handle"

    @property
    def rig_set(self) -> str:
        return f"{self.__namespace}_leg_rig_set"

    @property
    def knee_offset(self) -> tuple:
        return 0, 0, 50

    @property
    def blend_ctrl(self) -> str:
        return f"{self.__namespace}:{self.__side}_Foot_blend_ctrl"

    @property
    def blend_attr(self) -> str:
        return f"{self.blend_ctrl}.IkFk"

    @property
    def ik_handle_parent(self) -> str:
        return f"{self.__namespace}:Ankle_{self.__side}_Reverse_ctrl_pos"

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

    def align_fk_ctrl_to_joint(self) -> None:
        cmds.parentConstraint(self.up_leg_fk_ctrl, self.up_leg_fk_joint, mo=False)
        cmds.parentConstraint(self.low_leg_fk_ctrl, self.low_leg_fk_joint, mo=False)
        cmds.parentConstraint(self.foot_fk_ctrl, self.foot_fk_joint, mo=False)
        self.reset_ctrl_pos()

        cmds.delete([self.up_leg_fk_ctrl, self.low_leg_fk_ctrl, self.foot_fk_ctrl], cn=True)

    def create_rig_set(self) -> None:
        if cmds.objExists(self.rig_set):
            cmds.delete(self.rig_set)

        cmds.sets(self.up_leg_fk_ctrl, self.low_leg_fk_ctrl, self.foot_fk_ctrl, self.knee_ik_ctrl, self.foot_ik_ctrl, name=self.rig_set)

    def reset_ctrl_pos(self) -> None:

        for fk_ctrl in self.fk_ctrls:
            cmds.xform(fk_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

        for ik_ctrl in self.ik_ctrls:
            cmds.xform(ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def create_fk_joint(self, joints) -> None:
        for fk_joint in self.fk_joints:
            if fk_joint:
                if cmds.objExists(fk_joint):
                    cmds.delete(fk_joint)

        # 複製とリネーム
        duplicated = cmds.duplicate(joints, po=True)
        for i in range(len(joints)):
            cmds.rename(duplicated[i], self.fk_joints[i])

        cmds.parent(self.up_leg_fk_joint, self.fk_joints_parent)

        # ジョイントは非表示にする
        for joint in self.fk_joints:
            cmds.setAttr(f"{joint}.visibility", 0)

    def constraint_fk(self) -> None:
        cmds.parentConstraint(self.up_leg_fk_ctrl, self.up_leg_fk_joint, mo=False)
        cmds.parentConstraint(self.low_leg_fk_ctrl, self.low_leg_fk_joint, mo=False)
        cmds.parentConstraint(self.foot_fk_ctrl, self.foot_fk_joint, mo=False)

    def create_ik_joint(self, joints) -> None:
        for ik_bone in self.ik_joints:
            if ik_bone:
                if cmds.objExists(ik_bone):
                    cmds.delete(ik_bone)

        duplicated = cmds.duplicate(joints, po=True)
        for i in range(len(joints)):
            cmds.rename(duplicated[i], self.ik_joints[i])

        cmds.parent(self.ik_joints[0], self.ik_joints_parent)

        # set preferred angle
        cmds.setAttr(f"{self.low_leg_ik_joint}.preferredAngleX", -5)

        # ジョイントは非表示にする
        for joint in self.ik_joints:
            cmds.setAttr(f"{joint}.visibility", 0)

    def align_ik_ctrl_to_joint(self) -> None:
        cmds.pointConstraint(self.low_leg_ik_joint, self.knee_ik_ctrl_pos, offset=self.knee_offset)
        cmds.orientConstraint(self.foot_ik_joint, self.foot_ik_ctrl_pos, mo=True)

        cmds.xform(self.knee_ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.xform(self.foot_ik_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

        cmds.delete([self.low_leg_ik_joint, self.foot_ik_joint], cn=True)

    def constraint_ik(self) -> None:
        if cmds.objExists(self.leg_ik_handle):
            cmds.delete(self.leg_ik_handle)

        cmds.ikHandle(name=self.leg_ik_handle, startJoint=self.up_leg_ik_joint, endEffector=self.foot_ik_joint, solver="ikRPsolver")
        cmds.parent(self.leg_ik_handle, self.ik_handle_parent)

        cmds.orientConstraint(self.foot_ik_ctrl, self.foot_ik_joint, mo=True)

        cmds.poleVectorConstraint(self.knee_ik_ctrl, self.leg_ik_handle, w=1)

    def constraint_blend_ctrl(self, parent_joint) -> None:

        orient_offset = (0, 0, 0) if self.__is_left else (0, 180, 0)

        cmds.pointConstraint(parent_joint, self.blend_ctrl)
        cmds.orientConstraint(parent_joint, self.blend_ctrl, offset=orient_offset)

    def __remove_namespace(self, ctrl):
        return ctrl.split(":")[1]
