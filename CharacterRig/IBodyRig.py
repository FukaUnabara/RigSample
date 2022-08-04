from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IBodyRig(IRig):

    @property
    @abstractmethod
    def body_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def body_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine_blend_attr(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ctrl_to(self, target):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ctrl(self, driven):
        raise NotImplementedError()

    @abstractmethod
    def create_rig_set(self):
        raise NotImplementedError()
