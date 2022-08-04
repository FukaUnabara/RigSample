from abc import abstractmethod, ABCMeta


class IRigSetup(metaclass=ABCMeta):

    @abstractmethod
    def align_ctrls(self):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ctrls(self):
        raise NotImplementedError()

    @abstractmethod
    def lock_ctrls(self):
        raise NotImplementedError()
