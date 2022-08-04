from abc import ABCMeta, abstractmethod


class ILeg(metaclass=ABCMeta):

    @property
    @abstractmethod
    def thigh_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def shin_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joints(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def thigh_twists_joints(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def shin_twists_joints(self) -> []:
        raise NotImplementedError()

    @abstractmethod
    def setup_twist_expression(self):
        raise NotImplementedError()
