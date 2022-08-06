from RigSample.Character.ISpine import ISpine


class Spine(ISpine):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def joint_waist(self):
        return f"{self.__namespace}:CC_Base_Waist"

    @property
    def joint_spine1(self):
        return f"{self.__namespace}:CC_Base_Spine01"

    @property
    def joint_spine2(self):
        return f"{self.__namespace}:CC_Base_Spine02"

    @property
    def joint_neck(self):
        return f"{self.__namespace}:CC_Base_NeckTwist01"

    @property
    def joints(self):
        return [self.joint_waist, self.joint_spine1, self.joint_spine2, self.joint_neck]
