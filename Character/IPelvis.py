from abc import ABCMeta, abstractmethod


class IPelvis(metaclass=ABCMeta):

    @property
    @abstractmethod
    def pelvis_joint(self):
        raise NotImplementedError()
