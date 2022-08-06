from maya import cmds

from RigSample.Character.IHip import IHip
from RigSample.CharacterRig.IBodyRig import IBodyRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class BodyRigSetup(IRigSetup):

    def __init__(self, body_rig: IBodyRig, hip: IHip):
        self.__body_rig = body_rig
        self.__hip = hip

    def align_ctrls(self):
        cmds.parentConstraint(self.__hip.hip_joint, self.__body_rig.body_ctrl)
        cmds.delete(self.__hip.hip_joint, cn=True)

        cmds.xform(self.__body_rig.body_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_ctrls(self):
        cmds.parentConstraint(self.__body_rig.body_ctrl, self.__hip.hip_joint)
        # pass

    def lock_ctrls(self):
        self.__body_rig.lock_attrs()
