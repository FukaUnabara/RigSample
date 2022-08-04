from abc import ABCMeta, abstractmethod


class IShoulder(metaclass=ABCMeta):

    @property
    @abstractmethod
    def l_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def r_joint(self):
        raise NotImplementedError()

    @classmethod
    @abstractmethod
    def instantiate(cls, namespace):
        raise NotImplementedError()
