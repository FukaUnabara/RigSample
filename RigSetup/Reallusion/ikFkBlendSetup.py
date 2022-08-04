from maya import cmds

from RigSample.RigSetup.iIkFkBlendSetup import IBlend


class Blend(IBlend):

    def create_blend(self, base_joints, fk_joints, ik_joints, blend_attr) -> None:
        for i in range(len(base_joints)):

            pair_blend_transform = f"pair_blend_transform_{base_joints[i]}"
            pair_blend_rotate = f"pair_blend_rotate_{base_joints[i]}"
            if cmds.objExists(pair_blend_transform):
                cmds.delete(pair_blend_transform)
            if cmds.objExists(pair_blend_rotate):
                cmds.delete(pair_blend_rotate)

            # translate---
            cmds.createNode("pairBlend", n=pair_blend_transform)
            cmds.setAttr(f"{pair_blend_transform}.rotInterpolation", 1)
            cmds.connectAttr(f"{fk_joints[i]}.translate", f"{pair_blend_transform}.inRotate1", force=True)
            cmds.connectAttr(f"{ik_joints[i]}.translate", f"{pair_blend_transform}.inRotate2", force=True)
            # ペアブレンドとアトリビュートの接続
            cmds.connectAttr(f"{blend_attr}", f"{pair_blend_transform}.weight", force=True)
            for axis in "xyz":
                cmds.connectAttr(f"{pair_blend_transform}.or{axis}", f"{base_joints[i]}.t{axis}", force=True)

            # rotate----
            cmds.createNode("pairBlend", n=pair_blend_rotate)
            cmds.setAttr(f"{pair_blend_rotate}.rotInterpolation", 1)

            cmds.connectAttr(f"{fk_joints[i]}.rotate", f"{pair_blend_rotate}.inRotate1", force=True)
            cmds.connectAttr(f"{ik_joints[i]}.rotate", f"{pair_blend_rotate}.inRotate2", force=True)
            # ペアブレンドとアトリビュートの接続
            cmds.connectAttr(f"{blend_attr}", f"{pair_blend_rotate}.weight", force=True)
            for axis in "xyz":
                cmds.connectAttr(f"{pair_blend_rotate}.or{axis}", f"{base_joints[i]}.r{axis}", force=True)

    def setup_visibility_blend(self, fk_ctrls, ik_ctrls, blend_attr):
        condition_node = cmds.createNode("condition")
        cmds.setAttr(f"{condition_node}.colorIfTrueR", 1)
        cmds.setAttr(f"{condition_node}.colorIfFalseR", 0)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 1)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 0)

        cmds.connectAttr(blend_attr, f"{condition_node}.firstTerm", f=True)

        for fk in fk_ctrls:
            cmds.connectAttr(f"{condition_node}.outColorR", f"{fk}.visibility", f=True)
        for ik in ik_ctrls:
            cmds.connectAttr(f"{condition_node}.outColorG", f"{ik}.visibility", f=True)

    def setup_ik_blend(self, blend_attr, switch_attr, to_ik):
        condition_node = cmds.createNode("condition")
        cmds.setAttr(f"{condition_node}.colorIfTrueR", 1)
        cmds.setAttr(f"{condition_node}.colorIfFalseR", 0)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 1)
        cmds.setAttr(f"{condition_node}.colorIfTrueG", 0)

        cmds.connectAttr(blend_attr, f"{condition_node}.firstTerm", f=True)

        out_color = f"{condition_node}.outColorG" if to_ik else f"{condition_node}.outColorR"
        cmds.connectAttr(out_color, switch_attr, f=True)
