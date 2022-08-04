from RigSample.Character import IFoot
from RigSample.CharacterRig import iLegRig, iFootRig
from RigSample.RigSetup.iIkFkBlendSetup import IBlend
from RigSample.RigSetup.iRigSetup import IRigSetup


class FootRigSetup(IRigSetup):

    def __init__(self, foot: IFoot.IFoot, rig: iFootRig.IFootRig, leg_rig: iLegRig.ILegRig, blend_setup: IBlend):
        self.__foot = foot
        self.__rig = rig
        self.__leg_rig = leg_rig
        self.__blend_setup = blend_setup

    def align_ctrls(self):
        self.__rig.align_ankle_ctrl_pos(self.__foot.foot_joint)

    def constraint_ctrls(self):
        foot_joint = self.__foot.foot_joint
        toe_joint = self.__foot.toe_joint
        leg_ik_handle = self.__leg_rig.leg_ik_handle

        self.__rig.setup_reverse(foot_joint, toe_joint, leg_ik_handle)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.toe_ik_handle_blend_attr, to_ik=True)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
