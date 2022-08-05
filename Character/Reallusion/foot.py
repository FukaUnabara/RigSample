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

    @property
    def pinky_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_PinkyToe1"

    @property
    def ring_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_RingToe1"

    @property
    def middle_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_MidToe1"

    @property
    def index_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_IndexToe1"

    @property
    def big_toe_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_BigToe1"
