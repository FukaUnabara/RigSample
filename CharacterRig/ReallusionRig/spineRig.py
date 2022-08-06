from maya import cmds

from RigSample.CharacterRig.ISpineRig import ISpineRig


class SpineRig(ISpineRig):

    @property
    def rig_root(self):
        return f"{self.__namespace}:rig"

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
        return f"{self.__namespace}:root_ctrl"

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
    def fk_ctrls(self):
        return [self.waist_fk_ctrl, self.spine1_fk_ctrl, self.spine2_fk_ctrl]

    @property
    def waist_ik_ctrl(self):
        return f"{self.__namespace}:Waist_ik_ctrl"

    @property
    def spine_ik_ctrl(self):
        return f"{self.__namespace}:Spine_ik_ctrl"

    @property
    def neck_ik_ctrl(self):
        return f"{self.__namespace}:Neck_ik_ctrl"

    @property
    def ik_ctrls(self):
        return [self.waist_ik_ctrl, self.spine_ik_ctrl, self.neck_ik_ctrl]

    def __init__(self, namespace):
        self.__namespace = namespace

    def lock_attrs(self, lock=True) -> None:

        for fk in self.fk_ctrls:
            for attr in "ts":
                cmds.setAttr(f"{fk}.{attr}", lock=lock)
                cmds.setAttr(f"{fk}.{attr}", lock=lock)

        cmds.setAttr(f"{self.waist_ik_ctrl}.s", lock=True)
        cmds.setAttr(f"{self.neck_ik_ctrl}.s", lock=True)

        cmds.setAttr(f"{self.waist_ik_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.spine1_fk_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.spine2_fk_ctrl}.visibility", lock=lock)
        cmds.setAttr(f"{self.neck_ik_ctrl}.visibility", lock=lock)
