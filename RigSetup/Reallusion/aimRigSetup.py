from maya import cmds

from RigSample.Character import iEye
from RigSample.CharacterRig.iAimRig import IAimRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class AimRigSetup(IRigSetup):

    def __init__(self, eye: iEye.IEye, aim_rig: IAimRig):
        self.__eye = eye
        self.__rig = aim_rig

    def align_ctrls(self):
        # 左右目の真ん中に配置する
        cmds.pointConstraint(self.__eye.joint_eye_l, self.__rig.aim_ctrl_pos)
        cmds.pointConstraint(self.__eye.joint_eye_r, self.__rig.aim_ctrl_pos)

        cmds.delete(self.__eye.joint_eye_l, self.__eye.joint_eye_l, cn=True)
        cmds.xform(self.__rig.aim_ctrl, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))

    def constraint_ctrls(self):
        cmds.aimConstraint(self.__rig.aim_l_ctrl, self.__eye.joint_eye_l, aim=self.__eye.aim_vector, u=self.__eye.up_vector)
        cmds.aimConstraint(self.__rig.aim_r_ctrl, self.__eye.joint_eye_r, aim=self.__eye.aim_vector, u=self.__eye.up_vector)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
