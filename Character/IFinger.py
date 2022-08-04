from abc import ABCMeta, abstractmethod


class IFinger(metaclass=ABCMeta):

    @property
    @abstractmethod
    def hand_joint(self):
        raise NotImplementedError()

    @abstractmethod
    def get_thumb_joint(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_middle_joint(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_index_joint(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_ring_joint(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_pinky_joint(self, index):
        raise NotImplementedError()
