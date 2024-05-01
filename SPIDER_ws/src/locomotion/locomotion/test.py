import numpy as np
from scipy.optimize import fsolve
import matplotlib.pyplot as plt

# Constant / known values
L2 = 0.2
L3 = 0.495
K = 0.35
H = 0.3048
LN = 0.08

def SPIDER_FSOLVE(x, tn):
    global L2, L3, K, H, LN
    # equations
    G = [(LN + L2 * np.cos(x[0]) + L3 * np.cos(x[1])) * np.cos(tn) - 0.35,
         (LN + L2 * np.cos(x[0]) + L3 * np.cos(x[1])) * np.sin(tn) - x[3],
         L2 * np.sin(x[0]) + L3 * np.sin(x[1]) + H,
         0.08 + L2 * np.cos(x[0]) + L3 * np.cos(x[1]) - x[2]]
    return G

VerticalAngledeg = np.zeros(100)
ElbowAngledeg = np.zeros(100)
L_array = np.zeros(100)
D_Array = np.zeros(100)

thetan = np.deg2rad(15)

for i in range(100):
    # Guesses: t2, t3, L, D
    guesses = [np.deg2rad(50), np.deg2rad(330), 0.5, 0.5]
    thetas = fsolve(SPIDER_FSOLVE, guesses, args=(thetan,))
    
    VerticalAngledeg[i] = np.rad2deg(thetas[0])
    ElbowAngledeg[i] = np.rad2deg(thetas[1])
    L_array[i] = thetas[2]
    D_Array[i] = thetas[3]
    thetan = thetan - np.deg2rad(0.3)

Thetanarray = np.linspace(-15, 15, 100)

x = Thetanarray
y1 = VerticalAngledeg
y2 = ElbowAngledeg

plt.plot(x, y1)
plt.plot(x, y2)
plt.show()

Outer_Leg_D_Input = D_Array[0] - D_Array[-1]
