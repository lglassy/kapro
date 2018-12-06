
# standard modules

import glob
import os
import os.path
import platform
import shutil
import setuptools
import sys
import sysconfig

setuptools.setup(
    name         = 'kapro', 
    version      = '0.1', 
    description  = 'small document database with sqlite storage engine', 
    author       = 'Lou Glassy',

    packages = setuptools.find_packages('src'),

    package_dir  = { '': 'src' }, 

    ) 

# end of file
