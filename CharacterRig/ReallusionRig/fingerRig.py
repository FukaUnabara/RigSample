from maya import cmds
from RigSample.CharacterRig.IFingerRig import IFingerRig


class FingerRig(IFingerRig):

    def __init__(self, namespace, is_left):
        self.__namespace = namespace
        self.__is_left = is_left
        self.__side = "Left" if is_left else "Right"

        self.__thumb_ctrls = {}
        self.__middle_ctrls = {}
        self.__index_ctrls = {}
        self.__ring_ctrls = {}
        self.__pinky_ctrls = {}
        self.__all_ctrls = []
        for index in "123":
            thumb_ctrl = f"{namespace}:{self.__side}HandThumb{index}_ctrl"
            middle_ctrl = f"{namespace}:{self.__side}HandMiddle{index}_ctrl"
            index_ctrl = f"{namespace}:{self.__side}HandIndex{index}_ctrl"
            ring_ctrl = f"{namespace}:{self.__side}HandRing{index}_ctrl"
            pinky_ctrl = f"{namespace}:{self.__side}HandPinky{index}_ctrl"

            self.__all_ctrls.append(thumb_ctrl)
            self.__all_ctrls.append(middle_ctrl)
            self.__all_ctrls.append(index_ctrl)
            self.__all_ctrls.append(ring_ctrl)
            self.__all_ctrls.append(pinky_ctrl)

            self.__thumb_ctrls[index] = thumb_ctrl
            self.__middle_ctrls[index] = middle_ctrl
            self.__index_ctrls[index] = index_ctrl
            self.__ring_ctrls[index] = ring_ctrl
            self.__pinky_ctrls[index] = pinky_ctrl

    @property
    def rig_set(self):
        return f"{self.__namespace}_finger_rig_set"

    @property
    def hand_ctrl(self):
        return f"{self.__namespace}:{self.__side}Hand_ctrl"

    def get_thumb_ctrl(self, index):
        return self.__thumb_ctrls[index]

    def get_middle_ctrl(self, index):
        return self.__middle_ctrls[index]

    def get_index_ctrl(self, index):
        return self.__index_ctrls[index]

    def get_ring_ctrl(self, index):
        return self.__ring_ctrls[index]

    def get_pinky_ctrl(self, index):
        return self.__pinky_ctrls[index]

    def get_thumb_ctrl_pos(self, index):
        return f"{self.get_thumb_ctrl(index)}_pos"

    def get_middle_ctrl_pos(self, index):
        return f"{self.get_middle_ctrl(index)}_pos"

    def get_index_ctrl_pos(self, index):
        return f"{self.get_index_ctrl(index)}_pos"

    def get_pinky_ctrl_pos(self, index):
        return f"{self.get_pinky_ctrl(index)}_pos"

    def get_ring_ctrl_pos(self, index):
        return f"{self.get_ring_ctrl(index)}_pos"

    def create_rig_set(self):
        if cmds.objExists(self.rig_set):
            cmds.delete(self.rig_set)

        cmds.sets(self.__all_ctrls, name=self.rig_set)

    def parent_to_hand_joint(self, hand_joint):
        cmds.parentConstraint(hand_joint, self.hand_ctrl)

    def lock_attrs(self, lock=True) -> None:
        for ctrl in self.__all_ctrls:
            if "Thumb" in ctrl:
                cmds.setAttr(f"{ctrl}.t", lock=lock)
                cmds.setAttr(f"{ctrl}.rz", lock=lock)
                cmds.setAttr(f"{ctrl}.ry", lock=lock)
                cmds.setAttr(f"{ctrl}.s", lock=lock)
            else:
                cmds.setAttr(f"{ctrl}.t", lock=lock)
                cmds.setAttr(f"{ctrl}.rx", lock=lock)
                cmds.setAttr(f"{ctrl}.ry", lock=lock)
                cmds.setAttr(f"{ctrl}.s", lock=lock)
