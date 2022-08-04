from RigSample.Character.iEye import IEye


class Eye(IEye):
    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def joint_eye_r(self) -> str:
        return f"{self.__namespace}:CC_Base_R_Eye"

    @property
    def joint_eye_l(self) -> str:
        return f"{self.__namespace}:CC_Base_L_Eye"

    @property
    def aim_vector(self) -> tuple[int, int, int]:
        return 0, -1, 0

    @property
    def up_vector(self) -> tuple[int, int, int]:
        return 0, 0, 1
