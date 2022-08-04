from RigSample.Character.ILeg import ILeg
from RigSample.CharacterRig.iLegRig import ILegRig
from RigSample.RigSetup.iIkFkBlendSetup import IBlend
from RigSample.RigSetup.iRigSetup import IRigSetup


class LegSetup(IRigSetup):

    def __init__(self, leg: ILeg, leg_rig: ILegRig, blend_setup: IBlend):
        self.__leg = leg
        self.__rig = leg_rig
        self.__blend_setup = blend_setup

        self.__leg.setup_twist_expression()

    def align_ctrls(self):
        self.__rig.create_fk_joint(self.__leg.joints)
        self.__rig.align_fk_ctrl_to_joint()

        self.__rig.create_ik_joint(self.__leg.joints)
        self.__rig.align_ik_ctrl_to_joint()

    def constraint_ctrls(self):
        self.__rig.constraint_fk()
        self.__rig.constraint_ik()
        self.__rig.constraint_blend_ctrl(self.__leg.foot_joint)
        self.__blend_setup.create_blend(self.__leg.joints, self.__rig.fk_joints, self.__rig.ik_joints, self.__rig.blend_attr)
        self.__blend_setup.setup_visibility_blend(self.__rig.fk_ctrls, self.__rig.ik_ctrls, self.__rig.blend_attr)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
