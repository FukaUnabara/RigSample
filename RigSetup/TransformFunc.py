import maya.api.OpenMaya as om
from maya import cmds


def bake_transform_to_offset_parent_matrix(nodes):
    for node in nodes:
        local_matrix = om.MMatrix(cmds.xform(node, q=True, m=True, ws=False))
        offset_parent_matrix = om.MMatrix(cmds.getAttr(f"{node}.offsetParentMatrix"))
        baked_matrix = local_matrix * offset_parent_matrix
        cmds.setAttr(f"{node}.offsetParentMatrix", baked_matrix, type="matrix")

        cmds.xform(node, t=(0, 0, 0), ro=(0, 0, 0), s=(1, 1, 1))
