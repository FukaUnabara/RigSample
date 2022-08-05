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
        big_thumb = self.__foot.big_toe_joint
        index = self.__foot.index_joint
        middle = self.__foot.middle_joint
        ring = self.__foot.ring_joint
        pinky = self.__foot.pinky_joint

        self.__rig.setup_reverse(foot_joint, toe_joint, big_thumb, index, middle, ring, pinky)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.toe_ik_handle_blend_attr, to_ik=True)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.big_toe_ik_handle_blend_attr, to_ik=True)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.pinky_toe_ik_handle_blend_attr, to_ik=True)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.middle_toe_ik_handle_blend_attr, to_ik=True)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.ring_toe_ik_handle_blend_attr, to_ik=True)
        self.__blend_setup.setup_ik_blend(self.__rig.blend_attr, self.__rig.index_toe_ik_handle_blend_attr, to_ik=True)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
