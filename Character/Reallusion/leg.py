from RigSample.Character.TwistExpression import TwistExpression
from RigSample.Character.ILeg import ILeg


class Leg(ILeg):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "L" if is_left else "R"

    @property
    def thigh_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_Thigh"

    @property
    def shin_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_Calf"

    @property
    def foot_joint(self):
        return f"{self.__namespace}:CC_Base_{self.__side}_Foot"

    @property
    def joints(self):
        return [self.thigh_joint, self.shin_joint, self.foot_joint]

    @property
    def thigh_twists_joints(self) -> []:
        twist_joint = f"{self.__namespace}:CC_Base_{self.__side}_ThighTwist02"
        return [twist_joint]

    @property
    def shin_twists_joints(self) -> []:
        twist_joint = f"{self.__namespace}:CC_Base_{self.__side}_CalfTwist02"
        return [twist_joint]

    def setup_twist_expression(self):
        TwistExpression.setup(self.thigh_twists_joints, self.thigh_joint)
        TwistExpression.setup(self.shin_twists_joints, self.shin_joint)
