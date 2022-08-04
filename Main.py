import pathlib

import maya.cmds as cmds
import maya.mel as mel

from RigSample.Character.Reallusion.arm import Arm
from RigSample.Character.Reallusion.eye import Eye
from RigSample.Character.Reallusion.finger import Finger
from RigSample.Character.Reallusion.foot import Foot
from RigSample.Character.Reallusion.head import Head
from RigSample.Character.Reallusion.hip import Hip
from RigSample.Character.Reallusion.leg import Leg
from RigSample.Character.Reallusion.root import Root
from RigSample.Character.Reallusion.shoulder import Shoulder
from RigSample.Character.Reallusion.spine import Spine
from RigSample.CharacterRig.ReallusionRig.aimRig import AimRig
from RigSample.CharacterRig.ReallusionRig.armRig import ArmRig
from RigSample.CharacterRig.ReallusionRig.bodyRig import BodyRig
from RigSample.CharacterRig.ReallusionRig.fingerRig import FingerRig
from RigSample.CharacterRig.ReallusionRig.footRig import FootRig
from RigSample.CharacterRig.ReallusionRig.headRig import HeadRig
from RigSample.CharacterRig.ReallusionRig.legRig import LegRig
from RigSample.CharacterRig.ReallusionRig.rootRig import RootRig
from RigSample.CharacterRig.ReallusionRig.shoulderRig import ShoulderRig
from RigSample.CharacterRig.ReallusionRig.spineRig import SpineRig
from RigSample.RigSetup.Reallusion.aimRigSetup import AimRigSetup
from RigSample.RigSetup.Reallusion.armRigSetup import ArmSetup
from RigSample.RigSetup.Reallusion.bodyRigSetup import BodyRigSetup
from RigSample.RigSetup.Reallusion.fingerRigSetup import FingerRigSetup
from RigSample.RigSetup.Reallusion.footRigSetup import FootRigSetup
from RigSample.RigSetup.Reallusion.headRigSetup import HeadRigSetup
from RigSample.RigSetup.Reallusion.ikFkBlendSetup import Blend
from RigSample.RigSetup.Reallusion.legRigSetup import LegSetup
from RigSample.RigSetup.Reallusion.rootRigSetup import RootRigSetup
from RigSample.RigSetup.Reallusion.shoulderRigSetup import ShoulderRigSetup
from RigSample.RigSetup.Reallusion.spineRigSetup import SpineRigSetup


class SetupRig:

    def __init__(self, namespace):
        self.__namespace = namespace

        print("Create Rig setup instances")
        hip = Hip(namespace)
        body_rig = BodyRig(namespace)
        self.body_rig_setup = BodyRigSetup(body_rig, hip)

        blend = Blend()

        l_arm = Arm(namespace, is_left=True)
        l_arm_rig = ArmRig(namespace, is_left=True)
        self.l_arm_rig_setup = ArmSetup(l_arm, l_arm_rig, blend)

        r_arm = Arm(namespace, is_left=False)
        r_arm_rig = ArmRig(namespace, is_left=False)
        self.r_arm_rig_setup = ArmSetup(r_arm, r_arm_rig, blend)

        head = Head(namespace)
        head_rig = HeadRig(namespace)
        self.head_setup = HeadRigSetup(head, head_rig)

        l_leg = Leg(namespace, is_left=True)
        l_leg_rig = LegRig(namespace, is_left=True)
        self.l_leg_setup = LegSetup(l_leg, l_leg_rig, blend)

        r_leg = Leg(namespace, is_left=False)
        r_leg_rig = LegRig(namespace, is_left=False)
        self.r_leg_setup = LegSetup(r_leg, r_leg_rig, blend)

        l_foot = Foot(namespace, is_left=True)
        l_foot_rig = FootRig(namespace, is_left=True)
        self.l_foot_setup = FootRigSetup(l_foot, l_foot_rig, l_leg_rig, blend)

        r_foot = Foot(namespace, is_left=False)
        r_foot_rig = FootRig(namespace, is_left=False)
        self.r_foot_setup = FootRigSetup(r_foot, r_foot_rig, r_leg_rig, blend)

        root = Root(namespace)
        root_rig = RootRig(namespace)
        self.root_setup = RootRigSetup(root, root_rig)

        shoulder = Shoulder(namespace)
        shoulder_rig = ShoulderRig(namespace)
        self.shoulder_setup = ShoulderRigSetup(shoulder, shoulder_rig)

        spine = Spine(namespace)
        spine_rig = SpineRig(namespace)
        self.spine_setup = SpineRigSetup(spine, spine_rig,body_rig)

        l_finger = Finger(namespace, is_left=True)
        l_finger_rig = FingerRig(namespace, is_left=True)
        self.l_finger_setup = FingerRigSetup(l_finger, l_finger_rig)

        r_finger = Finger(namespace, is_left=False)
        r_finger_rig = FingerRig(namespace, is_left=False)
        self.r_finger_setup = FingerRigSetup(r_finger, r_finger_rig)

        eye = Eye(namespace)
        aim_rig = AimRig(namespace)
        self.aim_rig_setup = AimRigSetup(eye, aim_rig)

    def setup(self):
        scene_path = cmds.file(q=True, sn=True)
        print(scene_path)

        scene_dir = pathlib.Path(scene_path).parent
        print(scene_dir)
        rig_file_path = f"{scene_dir}\\Rig.ma"
        print(rig_file_path)
        rig_file_path = rig_file_path.replace("\\", "/")

        print("Import rig as reference")
        mel.eval(f'file -r -type "mayaAscii"  -ignoreVersion -gl -mergeNamespacesOnClash true -namespace ":{self.__namespace}" -options "v=0;p=17;f=0" "{rig_file_path}"')

        print("Start align controllers!")
        self.root_setup.align_ctrls()
        self.body_rig_setup.align_ctrls()
        self.spine_setup.align_ctrls()
        self.shoulder_setup.align_ctrls()
        self.l_arm_rig_setup.align_ctrls()
        self.r_arm_rig_setup.align_ctrls()
        self.l_finger_setup.align_ctrls()
        self.r_finger_setup.align_ctrls()
        self.l_leg_setup.align_ctrls()
        self.r_leg_setup.align_ctrls()
        self.head_setup.align_ctrls()
        self.aim_rig_setup.align_ctrls()
        self.l_foot_setup.align_ctrls()
        self.r_foot_setup.align_ctrls()

        print("Constraint controllers")
        self.root_setup.constraint_ctrls()
        self.body_rig_setup.constraint_ctrls()
        self.spine_setup.constraint_ctrls()
        self.shoulder_setup.constraint_ctrls()
        self.l_arm_rig_setup.constraint_ctrls()
        self.l_finger_setup.constraint_ctrls()
        self.r_arm_rig_setup.constraint_ctrls()
        self.r_finger_setup.constraint_ctrls()
        self.l_leg_setup.constraint_ctrls()
        self.r_leg_setup.constraint_ctrls()
        self.head_setup.constraint_ctrls()
        self.aim_rig_setup.constraint_ctrls()
        self.l_foot_setup.constraint_ctrls()
        self.r_foot_setup.constraint_ctrls()

        print("Lock controllers")
        self.root_setup.lock_ctrls()
        self.body_rig_setup.lock_ctrls()
        self.spine_setup.lock_ctrls()
        self.shoulder_setup.lock_ctrls()
        self.l_arm_rig_setup.lock_ctrls()
        self.l_finger_setup.lock_ctrls()
        self.r_arm_rig_setup.lock_ctrls()
        self.r_finger_setup.lock_ctrls()
        self.l_leg_setup.lock_ctrls()
        self.r_leg_setup.lock_ctrls()
        self.head_setup.lock_ctrls()
        self.aim_rig_setup.lock_ctrls()
        self.l_foot_setup.lock_ctrls()
        self.r_foot_setup.lock_ctrls()


if __name__ == '__main__':
    NAMESPACE = "character1"
    instance = SetupRig(NAMESPACE)
    instance.setup()
