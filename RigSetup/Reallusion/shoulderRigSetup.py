from RigSample.Character import IShoulder
from RigSample.CharacterRig import IShoulderRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class ShoulderRigSetup(IRigSetup):

    def __init__(self, shoulder: IShoulder.IShoulder, shoulder_rig: IShoulderRig.IShoulderRig):
        self.__shoulder_rig = shoulder_rig
        self.__shoulder = shoulder

    def align_ctrls(self):
        self.__shoulder_rig.align_ctrl_to(self.__shoulder.l_joint, is_left=True)
        self.__shoulder_rig.align_ctrl_to(self.__shoulder.r_joint, is_left=False)

    def constraint_ctrls(self):
        self.__shoulder_rig.constraint_ctrl(self.__shoulder.l_joint, is_left=True)
        self.__shoulder_rig.constraint_ctrl(self.__shoulder.r_joint, is_left=False)

    def lock_ctrls(self):
        self.__shoulder_rig.lock_attrs(True)
