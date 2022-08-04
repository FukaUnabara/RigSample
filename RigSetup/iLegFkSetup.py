from abc import ABCMeta, abstractmethod


class ILegFkSetup(metaclass=ABCMeta):

    @abstractmethod
    def create_fk_joint(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ctrl(self):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ctrl(self):
        raise NotImplementedError()
