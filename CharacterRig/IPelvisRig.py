from abc import ABCMeta, abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IPelvisRig(IRig):

    @property
    @abstractmethod
    def pelvis_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def pelvis_ctrl_pos(self) -> str:
        raise NotImplementedError()
