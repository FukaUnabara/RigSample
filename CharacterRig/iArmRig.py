from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class IArmRig(IRig):

    @property
    @abstractmethod
    def up_arm_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_arm_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_ctrls(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_arm_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_joints(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_joints_parent(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_ctrls(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_arm_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_arm_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_joints(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_joints_parent(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_ik_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def elbow_ik_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_ik_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def elbow_ik_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def hand_ik_handle(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_ctrl_poses(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def blend_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def blend_attr(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def elbow_offset(self):
        raise NotImplementedError()

    @abstractmethod
    def create_rig_set(self) -> str:
        raise NotImplementedError()

    @abstractmethod
    def align_fk_ctrl_to_joint(self):
        raise NotImplementedError()

    @abstractmethod
    def create_fk_joint(self, base_joints):
        raise NotImplementedError()

    @abstractmethod
    def constraint_fk(self):
        raise NotImplementedError()

    @abstractmethod
    def create_ik_joint(self, joints):
        raise NotImplementedError()

    @abstractmethod
    def align_ik_ctrl_to_joint(self):
        raise NotImplementedError()

    @abstractmethod
    def constraint_ik(self):
        raise NotImplementedError()

    @abstractmethod
    def constraint_blend_ctrl(self, parent_joint):
        raise NotImplementedError()
