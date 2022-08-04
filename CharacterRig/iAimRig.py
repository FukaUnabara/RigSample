from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IAimRig(IRig):

    @property
    @abstractmethod
    def aim_l_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def aim_r_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def aim_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def aim_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def ctrl_set(self) -> str:
        raise NotImplementedError()
