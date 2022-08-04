from abc import ABCMeta, abstractmethod


class IEye(metaclass=ABCMeta):

    @property
    @abstractmethod
    def joint_eye_r(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def joint_eye_l(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def aim_vector(self) -> tuple[int, int, int]:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_vector(self) -> tuple[int, int, int]:
        raise NotImplementedError()
