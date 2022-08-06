from abc import ABCMeta, abstractmethod


class IHip(metaclass=ABCMeta):

    @property
    @abstractmethod
    def hip_joint(self):
        raise NotImplementedError()
