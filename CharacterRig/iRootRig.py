from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IRootRig(IRig):

    @property
    @abstractmethod
    def root_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def root_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ctrl_to(self, target):
        raise NotImplementedError()

    @abstractmethod
    def constraint_root_bone(self, root_bone):
        raise NotImplementedError()

    @classmethod
    def instantiate(cls, namespace: str):
        raise NotImplementedError()
