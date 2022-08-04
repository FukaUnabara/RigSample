from abc import ABCMeta, abstractmethod


class IArm(metaclass=ABCMeta):

    @property
    @abstractmethod
    def up_arm_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def joints(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_arm_twist_root(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_arm_twists_joints(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_twists_joints(self) -> []:
        raise NotImplementedError()

    @abstractmethod
    def setup_twist_expression(self) -> None:
        raise NotImplementedError()
