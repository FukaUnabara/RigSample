from maya import cmds

from RigSample.CharacterRig.IPelvisRig import IPelvisRig


class PelvisRig(IPelvisRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def pelvis_ctrl(self) -> str:
        return f"{self.__namespace}:Pelvis_ctrl"

    @property
    def pelvis_ctrl_pos(self) -> str:
        return f"{self.pelvis_ctrl}_pos"

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.pelvis_ctrl}.t", lock=lock)
        cmds.setAttr(f"{self.pelvis_ctrl}.s", lock=lock)
        cmds.setAttr(f"{self.pelvis_ctrl}.v", lock=lock)
