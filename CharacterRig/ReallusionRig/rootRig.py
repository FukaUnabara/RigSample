from maya import cmds

from RigSample.CharacterRig.iRootRig import IRootRig


class RootRig(IRootRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def root_ctrl(self):
        return f"{self.__namespace}:root_ctrl"

    @property
    def root_ctrl_pos(self):
        return f"{self.__namespace}:root_ctrl_pos"

    @property
    def rig_set(self):
        return f"{self.__namespace}_root_rig_set"

    @classmethod
    def instantiate(cls, namespace: str):
        return cls(namespace)

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.root_ctrl}.s", lock=lock)
        cmds.setAttr(f"{self.root_ctrl}.visibility", lock=lock)

    def align_ctrl_to(self, target):
        cmds.parentConstraint(target, self.root_ctrl_pos, mo=False)

        cmds.xform(self.root_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
        cmds.delete(target, cn=True)

    def constraint_root_bone(self, root_bone):
        cmds.parentConstraint(self.root_ctrl, root_bone, mo=False)
