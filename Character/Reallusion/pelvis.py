from RigSample.Character.IPelvis import IPelvis


class Pelvis(IPelvis):

    def __init__(self, namespace):
        self.__namespace = namespace

    @property
    def pelvis_joint(self):
        return f"{self.__namespace}:CC_Base_Pelvis"
