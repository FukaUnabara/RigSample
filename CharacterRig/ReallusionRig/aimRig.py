from RigSample.CharacterRig.iAimRig import IAimRig
from maya import cmds


class AimRig(IAimRig):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def aim_ctrl_pos(self) -> str:
        return f"{self.aim_ctrl}_pos"

    @property
    def aim_l_ctrl(self) -> str:
        return f"{self.__namespace}:aim_l_ik_ctrl"

    @property
    def aim_r_ctrl(self) -> str:
        return f"{self.__namespace}:aim_r_ik_ctrl"

    @property
    def aim_ctrl(self) -> str:
        return f"{self.__namespace}:aim_ik_ctrl"

    @property
    def ctrl_set(self) -> str:
        object_set = f"{self.__namespace}:aim_ik_ctrl_set"
        if not cmds.objExists(object_set):
            cmds.sets(self.aim_ctrl_pos, self.aim_l_ctrl, self.aim_r_ctrl, name=object_set)
        return f"{self.__namespace}:aim_ik_ctrl_set"

    def lock_attrs(self, lock=True) -> None:
        cmds.setAttr(f"{self.aim_ctrl}.r", lock=lock)
        cmds.setAttr(f"{self.aim_l_ctrl}.r", lock=lock)
        cmds.setAttr(f"{self.aim_r_ctrl}.r", lock=lock)

        cmds.setAttr(f"{self.aim_ctrl}.s", lock=lock)
        cmds.setAttr(f"{self.aim_l_ctrl}.s", lock=lock)
        cmds.setAttr(f"{self.aim_r_ctrl}.s", lock=lock)

        cmds.setAttr(f"{self.aim_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.aim_l_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.aim_r_ctrl}.visibility", lock=lock)
