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

    @property
    @abstractmethod
    def pinky_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ring_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def middle_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def index_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def big_toe_joint(self):
        raise NotImplementedError()
