from abc import abstractmethod

from RigSample.CharacterRig.iRig import IRig


class ISpineRig(IRig):
    @property
    @abstractmethod
    def waist_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine1_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine2_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def neck_fk_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_joints(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def joint_parent(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def waist_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine1_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine2_fk_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_ctrls(self):
        raise NotImplementedError()

    @property
    def waist_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine1_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine2_fk_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def waist_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine1_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def spine2_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def neck_ik_joint(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_joints(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def waist_ik_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def neck_ik_ctrl(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_ctrls(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def waist_ik_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def neck_ik_ctrl_pos(self):
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self):
        raise NotImplementedError()

    @abstractmethod
    def create_fk_joints(self, joints):
        raise NotImplementedError()

    @abstractmethod
    def create_ik_joints(self, joints):
        raise NotImplementedError()

    @abstractmethod
    def lock_attrs(self, lock=True):
        raise NotImplementedError()

    @abstractmethod
    def setup_fk(self):
        raise NotImplementedError()

    @abstractmethod
    def setup_ik(self):
        raise NotImplementedError()
