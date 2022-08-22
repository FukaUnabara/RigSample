from maya import cmds

from RigSample.CharacterRig.IPelvisRig import IPelvisRig
from RigSample.Character.IPelvis import IPelvis
from RigSample.RigSetup.iRigSetup import IRigSetup


class PelvisRigSetup(IRigSetup):
    def __init__(self, pelvis: IPelvis, rig: IPelvisRig):
        self.__pelvis = pelvis
        self.__rig = rig

    def align_ctrls(self):
        cmds.parentConstraint(self.__pelvis.pelvis_joint, self.__rig.pelvis_ctrl_pos)
        cmds.delete(self.__pelvis.pelvis_joint, cn=True)
        cmds.xform(self.__rig.pelvis_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_ctrls(self):
        cmds.parentConstraint(self.__rig.pelvis_ctrl, self.__pelvis.pelvis_joint)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
