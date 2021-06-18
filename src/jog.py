#!/usr/bin/env python

import rospy
from edo.states import EdoStates


if __name__ == '__main__':
    rospy.init_node('edo_jog', anonymous=True)
    states = EdoStates(enable_algorithm_node=True) 
    states.jog()
