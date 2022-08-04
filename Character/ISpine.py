from abc import ABCMeta, abstractmethod


class ISpine(metaclass=ABCMeta):
    @property
    @abstractmethod
    def joint_waist(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joint_spine1(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joint_spine2(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joint_neck(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joints(self):
        raise NotImplementedError()

    @classmethod
    @abstractmethod
    def instantiate(cls, namespace):
        raise NotImplementedError()
