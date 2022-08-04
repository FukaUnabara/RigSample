from RigSample.Character.TwistExpression import TwistExpression
from RigSample.Character.iArm import IArm


class Arm(IArm):

    def __init__(self, namespace: str, is_left: bool):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "L" if is_left else "R"

    @property
    def joints(self) -> []:
        return [self.up_arm_joint, self.low_arm_joint, self.hand_joint]

    @property
    def up_arm_joint(self) -> str:
        return f"{self.__namespace}:CC_Base_{self.__side}_Upperarm"

    @property
    def low_arm_joint(self) -> str:
        return f"{self.__namespace}:CC_Base_{self.__side}_Forearm"

    @property
    def hand_joint(self) -> str:
        return f"{self.__namespace}:CC_Base_{self.__side}_Hand"

    @property
    def up_arm_twists_joints(self) -> []:
        twist_joint2 = f"{self.__namespace}:CC_Base_{self.__side}_UpperarmTwist02"
        return [twist_joint2]

    @property
    def low_arm_twists_joints(self) -> []:
        twist_joint2 = f"{self.__namespace}:CC_Base_{self.__side}_ForearmTwist02"
        return [twist_joint2]

    @property
    def up_arm_twist_root(self) -> []:
        return f"{self.__namespace}:CC_Base_{self.__side}_UpperarmTwist01"

    def setup_twist_expression(self) -> None:
        TwistExpression.setup(self.up_arm_twists_joints, self.up_arm_joint)
        TwistExpression.setup(self.low_arm_twists_joints, self.low_arm_joint)
