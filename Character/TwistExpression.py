from maya import cmds


class TwistExpression:

    @classmethod
    def setup(cls, twist_joints, joint):
        node_twist_multiply = cmds.createNode("multiplyDivide")
        up_arm_twist_count = len(twist_joints)
        for i in range(up_arm_twist_count):
            cmds.connectAttr(f"{joint}.rotateY", f"{node_twist_multiply}.input1Y", force=True)
            cmds.connectAttr(f"{node_twist_multiply}.outputY", f"{twist_joints[i]}.ry", force=True)
        multiply = 1 / up_arm_twist_count + 1
        cmds.setAttr(f"{node_twist_multiply}.input2Y", multiply)
