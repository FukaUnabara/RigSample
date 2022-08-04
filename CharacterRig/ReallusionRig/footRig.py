from maya import cmds

from RigSample.CharacterRig import iFootRig


class FootRig(iFootRig.IFootRig):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__is_left = is_left

    @property
    def __side(self):
        return "L" if self.__is_left else "R"

    @property
    def heel_reverse_ctrl(self):
        return f"{self.__namespace}:Heel_{self.__side}_Reverse_ctrl"

    @property
    def toe_reverse_ctrl(self):
        return f"{self.__namespace}:Toe_{self.__side}_Reverse_ctrl"

    @property
    def roll_out_ctrl(self):
        return f"{self.__namespace}:Roll_Out_{self.__side}_Reverse_ctrl"

    @property
    def roll_in_ctrl(self):
        return f"{self.__namespace}:Roll_In_{self.__side}_Reverse_ctrl"

    @property
    def heel_reverse_ctrl_pos(self):
        return f"{self.heel_reverse_ctrl}_pos"

    @property
    def toe_reverse_ctrl_pos(self):
        return f"{self.toe_reverse_ctrl}_pos"

    @property
    def roll_out_ctrl_pos(self):
        return f"{self.roll_out_ctrl}_pos"

    @property
    def roll_in_ctrl_pos(self):
        return f"{self.roll_in_ctrl}_pos"

    @property
    def ankle_reverse_ctrl_pos(self):
        return f"{self.__namespace}:Ankle_{self.__side}_Reverse_ctrl_pos"

    @property
    def toe_ik_handle(self):
        return f"{self.__namespace}:Toe_{self.__side}_ik_handle"

    @property
    def toe_ik_handle_blend_attr(self):
        return f"{self.toe_ik_handle}.ikBlend"

    @property
    def blend_ctrl(self) -> str:
        return f"{self.__namespace}:{self.__side}_Foot_blend_ctrl"

    @property
    def blend_attr(self) -> str:
        return f"{self.blend_ctrl}.IkFk"

    @property
    def __ctrls(self):
        return [self.heel_reverse_ctrl, self.toe_reverse_ctrl, self.roll_out_ctrl, self.roll_in_ctrl]

    def setup_reverse(self, foot_joint, toe_joint, leg_ik_handle):
        cmds.ikHandle(startJoint=foot_joint, endEffector=toe_joint, solver="ikSCsolver", name=self.toe_ik_handle)
        cmds.parent(self.toe_ik_handle, self.toe_reverse_ctrl)
        cmds.setAttr(f"{self.toe_ik_handle}.visibility", 0)

    def reset_ctrls_pos(self):
        cmds.xform(self.toe_reverse_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.xform(self.heel_reverse_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.xform(self.roll_in_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.xform(self.roll_out_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def lock_attrs(self, lock=True) -> None:
        for ctrl in self.__ctrls:
            cmds.setAttr(f"{ctrl}.t", lock=lock)
            cmds.setAttr(f"{ctrl}.s", lock=lock)

        cmds.setAttr(f"{self.roll_in_ctrl}.rx", lock=lock)
        cmds.setAttr(f"{self.roll_in_ctrl}.ry", lock=lock)

        cmds.setAttr(f"{self.roll_out_ctrl}.rx", lock=lock)
        cmds.setAttr(f"{self.roll_out_ctrl}.ry", lock=lock)

        cmds.setAttr(f"{self.toe_reverse_ctrl}.ry", lock=lock)
        cmds.setAttr(f"{self.toe_reverse_ctrl}.rz", lock=lock)

        cmds.setAttr(f"{self.heel_reverse_ctrl}.ry", lock=lock)
        cmds.setAttr(f"{self.heel_reverse_ctrl}.rz", lock=lock)

    def align_ankle_ctrl_pos(self, foot_joint):
        cmds.pointConstraint(foot_joint, self.ankle_reverse_ctrl_pos, mo=False)
        cmds.delete(foot_joint, cn=True)
