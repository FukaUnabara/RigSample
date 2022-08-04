from RigSample.Character.IFinger import IFinger


class Finger(IFinger):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "L" if is_left else "R"

        self.__thumb_joints = {}
        self.__middle_joints = {}
        self.__index_joints = {}
        self.__ring_joints = {}
        self.__pinky_joints = {}

        for index in "123":
            thumb_joint = f"{namespace}:CC_Base_{self.__side}_Thumb{index}"
            middle_joint = f"{namespace}:CC_Base_{self.__side}_Mid{index}"
            index_joint = f"{namespace}:CC_Base_{self.__side}_Index{index}"
            ring_joint = f"{namespace}:CC_Base_{self.__side}_Ring{index}"
            pinky_joint = f"{namespace}:CC_Base_{self.__side}_Pinky{index}"

            self.__thumb_joints[index] = thumb_joint
            self.__middle_joints[index] = middle_joint
            self.__index_joints[index] = index_joint
            self.__ring_joints[index] = ring_joint
            self.__pinky_joints[index] = pinky_joint

    @property
    def hand_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_Hand"

    def get_thumb_joint(self, index):
        return self.__thumb_joints[index]

    def get_middle_joint(self, index):
        return self.__middle_joints[index]

    def get_index_joint(self, index):
        return self.__index_joints[index]

    def get_ring_joint(self, index):
        return self.__ring_joints[index]

    def get_pinky_joint(self, index):
        return self.__pinky_joints[index]

    @classmethod
    def instantiate(cls, namespace, is_left):
        return cls(namespace, is_left)
