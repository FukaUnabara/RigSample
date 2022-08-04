from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IShoulderRig(IRig):

    @classmethod
    @abstractmethod
    def instantiate(cls, namespace):
        raise NotImplementedError()

    @property
    @abstractmethod
    def l_shoulder_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def r_shoulder_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def l_shoulder_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def r_shoulder_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ctrl_to(self, target, is_left):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ctrl(self, driven, is_left):
        raise NotImplementedError()

    @abstractmethod
    def create_rig_set(self):
        raise NotImplementedError()
