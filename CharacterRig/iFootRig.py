from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IFootRig(IRig):

    @property
    @abstractmethod
    def heel_reverse_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def toe_reverse_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def roll_out_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def roll_in_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def heel_reverse_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def toe_reverse_ctrl_pos(self):
        raise NotImplementedError()

    @property
    def ball_reverse_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def roll_out_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def roll_in_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ankle_reverse_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ball_reverse_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def big_toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def index_toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def middle_toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ring_toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def pinky_toe_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def big_toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def index_toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def middle_toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ring_toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def pinky_toe_ik_handle_blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def blend_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def blend_attr(self) -> str:
        raise NotImplementedError()

    @abstractmethod
    def setup_reverse(self, foot_joint, toe_joint, big_thumb_joint, index_joint, middle_joint, ring_joint, pinky_joint):
        raise NotImplementedError()

    @abstractmethod
    def reset_ctrls_pos(self):
        raise NotImplementedError()

    @abstractmethod
    def align_ankle_ctrl_pos(self, ankle_joint):
        raise NotImplementedError()
