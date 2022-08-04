from abc import abstractmethod
from RigSample.CharacterRig.iRig import IRig


class ILegRig(IRig):

    @property
    @abstractmethod
    def up_leg_fk_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_leg_fk_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_fk_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_leg_fk_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_leg_fk_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_fk_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_ctrls(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def rig_set(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_leg_fk_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_leg_fk_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_fk_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_joints(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def fk_joints_parent(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_ik_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def knee_ik_ctrl(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_ik_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def knee_ik_ctrl_pos(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_ctrls(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def up_leg_ik_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def low_leg_ik_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def foot_ik_joint(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_joints(self) -> []:
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_joints_parent(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def leg_ik_handle(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def ik_handle_parent(self) -> str:
        raise NotImplementedError()

    @property
    @abstractmethod
    def knee_offset(self) -> tuple:
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
    def create_rig_set(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def reset_ctrl_pos(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def align_fk_ctrl_to_joint(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def create_fk_joint(self, base_joints: []) -> None:
        raise NotImplementedError()

    @abstractmethod
    def constraint_fk(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def create_ik_joint(self, joints: []) -> None:
        raise NotImplementedError()

    @abstractmethod
    def align_ik_ctrl_to_joint(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def constraint_ik(self) -> None:
        raise NotImplementedError()

    @abstractmethod
    def constraint_blend_ctrl(self, parent_joint: []) -> None:
        raise NotImplementedError()
