from maya import cmds

from RigSample.CharacterRig.IHeadRig import IHeadRig


class HeadRig(IHeadRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def rig_set(self):
        return f"{self.__namespace}_head_set"

    @property
    def head_ctrl(self):
        return f"{self.__namespace}:Head_ctrl"

    @property
    def head_ctrl_pos(self):
        return f"{self.head_ctrl}_pos"

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.head_ctrl}.t", lock=lock)
        cmds.setAttr(f"{self.head_ctrl}.s", lock=lock)

    def create_rig_set(self):
        if cmds.objExists(self.rig_set):
            cmds.delete(self.rig_set)

    def align_ctrl_to(self, target):
        cmds.parentConstraint(target, self.head_ctrl_pos, mo=False)
        cmds.delete(target, cn=True)

    def constraint_ctrl(self, head_joint):
        cmds.pointConstraint(head_joint, self.head_ctrl_pos)
        cmds.orientConstraint(self.head_ctrl, head_joint)
