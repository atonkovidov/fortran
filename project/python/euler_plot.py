##################################
# Importing necessary modules

import os
import numpy as np
import matplotlib.pyplot as plt

##################################
# Main Function
##################################


# Creating data via Fortran

# Initializing
path = '../fortran'
os.chdir(path)
cmd1 = 'make'
cmd2 = './euler'
cmd3 = 'make clean'

# Executing terminal commands
os.system(cmd1)
os.system(cmd2)
os.system(cmd3)

# Loading data file from fortran into python
file_path = '../fortran/output.txt'
data = np.loadtxt(file_path)


# Working with the data in Python

# Calculating the error
real_soln = []
x = data[:,0]
y = data[:,1]
real_soln = np.array(-(np.sqrt(2*np.log((x**2)+1)+4)))
error = sum(abs(real_soln - y))

   
# Graphing

# Main Plot
plt.plot(x, y, 'ro--', x, real_soln, 'bo-')
plt.title('Total Calculated Error = ' + str(error))

# Labelling/Fancifying and Saving
plt.xlabel('x')
plt.ylabel('y')
plt.legend(('Numerical Solution', 'Real Solution'))
plt.savefig("../python/result.png", bbox_inches='tight', dpi=96)


# End of program
##################################
