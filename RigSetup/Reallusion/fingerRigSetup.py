from maya import cmds

from RigSample.Character import IFinger
from RigSample.CharacterRig import IFingerRig
from RigSample.RigSetup.iRigSetup import IRigSetup


class FingerRigSetup(IRigSetup):

    def __init__(self, finger: IFinger.IFinger, finger_rig: IFingerRig.IFingerRig):
        self.__finger = finger
        self.__rig = finger_rig

    def align_ctrls(self):
        delete_constraint_targets = []
        for index in "123":
            thumb_joint = self.__finger.get_thumb_joint(index)
            thumb_ctrl_pos = self.__rig.get_thumb_ctrl_pos(index)
            cmds.parentConstraint(thumb_joint, thumb_ctrl_pos)

            middle_joint = self.__finger.get_middle_joint(index)
            middle_ctrl_pos = self.__rig.get_middle_ctrl_pos(index)
            cmds.parentConstraint(middle_joint, middle_ctrl_pos)

            index_joint = self.__finger.get_index_joint(index)
            index_ctrl_pos = self.__rig.get_index_ctrl_pos(index)
            cmds.parentConstraint(index_joint, index_ctrl_pos)

            ring_joint = self.__finger.get_ring_joint(index)
            ring_ctrl_pos = self.__rig.get_ring_ctrl_pos(index)
            cmds.parentConstraint(ring_joint, ring_ctrl_pos)

            pinky_joint = self.__finger.get_pinky_joint(index)
            pinky_ctrl_pos = self.__rig.get_pinky_ctrl_pos(index)
            cmds.parentConstraint(pinky_joint, pinky_ctrl_pos)

            delete_constraint_targets.append(thumb_joint)
            delete_constraint_targets.append(middle_joint)
            delete_constraint_targets.append(index_joint)
            delete_constraint_targets.append(ring_joint)
            delete_constraint_targets.append(pinky_joint)

        for joint in delete_constraint_targets:
            cmds.delete(joint, cn=True)

    def constraint_ctrls(self):

        self.__rig.parent_to_hand_joint(self.__finger.hand_joint)

        for i in "123":
            thumb_joint = self.__finger.get_thumb_joint(i)
            thumb_ctrl = self.__rig.get_thumb_ctrl(i)
            cmds.parentConstraint(thumb_ctrl, thumb_joint)

            middle_joint = self.__finger.get_middle_joint(i)
            middle_ctrl = self.__rig.get_middle_ctrl(i)
            cmds.parentConstraint(middle_ctrl, middle_joint)

            index_joint = self.__finger.get_index_joint(i)
            index_ctrl = self.__rig.get_index_ctrl(i)
            cmds.parentConstraint(index_ctrl, index_joint)

            ring_joint = self.__finger.get_ring_joint(i)
            ring_ctrl = self.__rig.get_ring_ctrl(i)
            cmds.parentConstraint(ring_ctrl, ring_joint)

            pinky_joint = self.__finger.get_pinky_joint(i)
            pinky_ctrl = self.__rig.get_pinky_ctrl(i)
            cmds.parentConstraint(pinky_ctrl, pinky_joint)

    def lock_ctrls(self):
        self.__rig.lock_attrs(True)
