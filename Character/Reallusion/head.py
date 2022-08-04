from RigSample.Character.IHead import IHead


class Head(IHead):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def joint(self):
        return f"{self.__namespace}:CC_Base_Head"

    @classmethod
    def instantiate(cls, namespace):
        return cls(namespace)
