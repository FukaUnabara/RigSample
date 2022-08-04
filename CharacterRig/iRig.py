from abc import ABCMeta, abstractmethod


class IRig(metaclass=ABCMeta):

    @abstractmethod
    def lock_attrs(self, lock=True) -> None:
        raise NotImplementedError()
