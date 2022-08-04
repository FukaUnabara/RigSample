from maya import cmds

from RigSample.CharacterRig.IBodyRig import IBodyRig


class BodyRig(IBodyRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def body_ctrl(self):
        return f"{self.__namespace}:body_ctrl"

    @property
    def body_ctrl_pos(self):
        return f"{self.__namespace}:body_ctrl_pos"

    @property
    def rig_set(self):
        return f"{self.__namespace}:body_rig_set"

    @property
    def spine_blend_attr(self):
        return f"{self.body_ctrl}.IkFk"

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.body_ctrl}.s", lock=lock)
        cmds.setAttr(f"{self.body_ctrl}.visibility", lock=lock)

    def align_ctrl_to(self, target):
        cmds.parentConstraint(target, self.body_ctrl_pos)
        cmds.delete(target, cn=True)

        cmds.xform(self.body_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_ctrl(self, driven):
        cmds.parentConstraint(self.body_ctrl, driven)

    def create_rig_set(self):
        if cmds.objExists(self.rig_set):
            cmds.delete(self.rig_set, cn=True)

        cmds.sets(self.body_ctrl, name=self.rig_set)
