from RigSample.Character import IHip
from RigSample.CharacterRig import IBodyRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class BodyRigSetup(IRigSetup):

    def __init__(self, body_rig: IBodyRig.IBodyRig, hip: IHip.IHip):
        self.__body_rig = body_rig
        self.__hip = hip

    def align_ctrls(self):
        self.__body_rig.align_ctrl_to(self.__hip.hip_joint)

    def constraint_ctrls(self):
        self.__body_rig.constraint_ctrl(self.__hip.hip_joint)

    def lock_ctrls(self):
        self.__body_rig.lock_attrs()
