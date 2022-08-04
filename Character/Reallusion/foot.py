from RigSample.Character.IFoot import IFoot


class Foot(IFoot):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__side = "L" if is_left else "R"
        self.__is_left = is_left

    @property
    def foot_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_Foot"

    @property
    def toe_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_ToeBase"

    @classmethod
    def instantiate(cls, namespace, is_left):
        return cls(namespace, is_left)
