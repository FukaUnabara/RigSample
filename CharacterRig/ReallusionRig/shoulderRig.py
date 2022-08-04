from maya import cmds

from RigSample.CharacterRig.IShoulderRig import IShoulderRig


class ShoulderRig(IShoulderRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @classmethod
    def instantiate(cls, namespace):
        return cls(namespace)

    @property
    def l_shoulder_ctrl(self):
        return f"{self.__namespace}:L_Clavicle_ctrl"

    @property
    def r_shoulder_ctrl(self):
        return f"{self.__namespace}:R_Clavicle_ctrl"

    @property
    def l_shoulder_ctrl_pos(self):
        return f"{self.l_shoulder_ctrl}_pos"

    @property
    def r_shoulder_ctrl_pos(self):
        return f"{self.r_shoulder_ctrl}_pos"

    @property
    def rig_set(self):
        return f"{self.__namespace}_shoulder"

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.l_shoulder_ctrl}.t", lock=lock)
        cmds.setAttr(f"{self.l_shoulder_ctrl}.s", lock=lock)

        cmds.setAttr(f"{self.r_shoulder_ctrl}.t", lock=lock)
        cmds.setAttr(f"{self.r_shoulder_ctrl}.s", lock=lock)

        cmds.setAttr(f"{self.l_shoulder_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.r_shoulder_ctrl}.visibility", lock=lock)

    def align_ctrl_to(self, target, is_left):
        ctrl_pos = self.l_shoulder_ctrl_pos if is_left else self.r_shoulder_ctrl_pos
        cmds.parentConstraint(target, ctrl_pos, mo=False)
        cmds.delete(target, cn=True)

        ctrl = self.l_shoulder_ctrl if is_left else self.r_shoulder_ctrl
        cmds.xform(ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_ctrl(self, shoulder_joint, is_left):
        ctrl = self.l_shoulder_ctrl if is_left else self.r_shoulder_ctrl
        ctrl_pos = self.l_shoulder_ctrl_pos if is_left else self.r_shoulder_ctrl_pos
        cmds.pointConstraint(shoulder_joint, ctrl_pos, mo=False)
        cmds.orientConstraint(ctrl, shoulder_joint, mo=False)

    def create_rig_set(self):
        if cmds.objExists(self.rig_set):
            cmds.delete(self.rig_set)

        cmds.sets(self.l_shoulder_ctrl, self.r_shoulder_ctrl, name=self.rig_set)
