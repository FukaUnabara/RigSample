from RigSample.Character import IRoot
from RigSample.CharacterRig.iRootRig import IRootRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class RootRigSetup(IRigSetup):

    def __init__(self, root: IRoot.IRoot, rig: IRootRig):
        self.__root = root
        self.__rig = rig

    def align_ctrls(self):
        self.__rig.align_ctrl_to(self.__root.root_joint)

    def constraint_ctrls(self):
        self.__rig.constraint_root_bone(self.__root.root_joint)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
