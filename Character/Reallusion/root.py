from RigSample.Character.IRoot import IRoot


class Root(IRoot):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def root_joint(self):
        return f"{self.__namespace}:CC_Base_BoneRoot"

    @classmethod
    def instantiate(cls, namespace):
        return cls(namespace)
