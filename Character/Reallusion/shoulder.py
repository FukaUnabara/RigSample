from RigSample.Character.IShoulder import IShoulder


class Shoulder(IShoulder):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def l_joint(self):
        return f"{self.__namespace}:CC_Base_L_Clavicle"

    @property
    def r_joint(self):
        return f"{self.__namespace}:CC_Base_R_Clavicle"

    @classmethod
    def instantiate(cls, namespace):
        return cls(namespace)
