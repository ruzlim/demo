import os
import sys

parent_dir = os.getcwd()
lib_dir = os.path.join(parent_dir, 'Lib38')
sys.path.append(lib_dir)

import pandas as pd
# import numpy as np


print(f'\nos : {os}')
print(f'\nparent_dir : {parent_dir}')
print(f'\nlib_dir : {lib_dir}')
print('\n')
for i in sys.path:
    print(f'i : {i}')
print(f'\npd : {pd}')
# print(f'\nnp : {np}')
print('\n')
