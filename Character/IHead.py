from abc import ABCMeta, abstractmethod


class IHead(metaclass=ABCMeta):
    @property
    @abstractmethod
    def joint(self):
        raise NotImplementedError()

    @classmethod
    @abstractmethod
    def instantiate(cls, namespace):
        raise NotImplementedError()
