from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IHeadRig(IRig):

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @abstractmethod
    def create_rig_set(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def head_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def head_ctrl_pos(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ctrl_to(self, target):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ctrl(self, driven):
        raise NotImplementedError()
