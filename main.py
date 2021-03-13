# -*- coding: utf-8 -*-

import sys
import os

def multiply(factor1, factor2):
    product = factor1 * factor2
    return (product)

if __name__ == '__main__':

    __location__ = os.path.realpath(
    os.path.join(os.getcwd(), os.path.dirname(__file__)))
    x = float(sys.argv[1])
    y = float(sys.argv[2])
    sys.stdout.write(str(squared(x,y)))
    
