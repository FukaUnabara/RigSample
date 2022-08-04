from abc import ABCMeta, abstractmethod


class IBlend(metaclass=ABCMeta):

    @abstractmethod
    def create_blend(self, base_joints, fk_joints, ik_joints, blend_attr) -> None:
        raise NotImplementedError()

    @abstractmethod
    def setup_visibility_blend(self, fk_ctrls, ik_ctrls, blend_attr):
        raise NotImplementedError()

    @abstractmethod
    def setup_ik_blend(self, blend_attr, switch_attr, to_ik):
        raise NotImplementedError()
