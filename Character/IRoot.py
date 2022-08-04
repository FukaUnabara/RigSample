from abc import ABCMeta, abstractmethod


class IRoot(metaclass=ABCMeta):

    @property
    @abstractmethod
    def root_joint(self):
        raise NotImplementedError()
