from abc import ABCMeta, abstractmethod


class IFoot(metaclass=ABCMeta):

    @property
    @abstractmethod
    def foot_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def toe_joint(self):
        raise NotImplementedError()
