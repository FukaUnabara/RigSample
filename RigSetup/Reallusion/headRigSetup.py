from RigSample.Character import IHead
from RigSample.CharacterRig import IHeadRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class HeadRigSetup(IRigSetup):

    def __init__(self, head: IHead.IHead, head_rig: IHeadRig.IHeadRig):
        self.__head = head
        self.__rig = head_rig

    def align_ctrls(self):
        self.__rig.align_ctrl_to(self.__head.joint)

    def constraint_ctrls(self):
        self.__rig.constraint_ctrl(self.__head.joint)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
