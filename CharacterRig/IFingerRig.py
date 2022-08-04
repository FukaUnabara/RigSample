from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IFingerRig(IRig):

    @abstractmethod
    def create_rig_set(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_ctrl(self):
        raise NotImplementedError()

    @abstractmethod
    def get_thumb_ctrl(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_middle_ctrl(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_index_ctrl(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_ring_ctrl(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_pinky_ctrl(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_thumb_ctrl_pos(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_middle_ctrl_pos(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_index_ctrl_pos(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_pinky_ctrl_pos(self, index):
        raise NotImplementedError()

    @abstractmethod
    def get_ring_ctrl_pos(self, index):
        raise NotImplementedError()

    @abstractmethod
    def parent_to_hand_joint(self, hand_joint):
        raise NotImplementedError()
