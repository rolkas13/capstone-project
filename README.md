# Servomechanism control
## Capstone Project
`Karol Rola`

`Piotr Ogórek`

`Piotr Kozimor`

This project aims to design controller for servomechanism.

## Proposed mathematical model
![alt text](/doc/images\math_scheme.png "Model")

$$
v(t) = Ri(t)+ K_e\omega(t) \\
J\dot{\omega}(t) = K_mi(t) - \beta\omega(t) \\
$$
where: \
$v(t)$ - input voltage \
$i(t)$ - armature current \
$\omega(t)$ - angular velocity of the rotor \
$R$ - resistance of armature winding \
$J$ - moment of inertia of the moving parts \
$\beta$ - damping coefificient due to viscous friction \
$K_e\omega(t)$ - back EMF \
$K_mi(t)$ - electromechanical torque



## Sensors scaling

### Motor Encoder
Rotor of DC motor was rotated 10 times. Obtaning raw measurements gave us following results:
| Start position | Final position |
| - | - |
| -92.7568 | -155.4122 |

$$
(enc_f - enc_s)/ 10/ 2 =-3.1328
$$
The result is close to $\pi$. That meas that enccoer reading is already scaled to radians.

### Input Encoder
Absolute encoder, produces output with range [-99.11, 97.61]. Additional processing is neccessary for continous angle measurement.


### Tachometer
We have acquired data for steady state conditions for 5 given outputs. Then we compare tachometer and encoder outputs. Given below chart we have noticed that the tachometer output is already scaled to $rad/s$.

![alt text](/doc/images/identification.svg "Model")


## Identification

### Motor Inertia

Given the datasheet parameter motor inertia is established as:

$J_M = 1.8 * 10^{-5}  [kg*m^2]$

### Rotating mass inertia

Rotating mass has following dimensions and mass:

![alt text](/doc/images/brass_inertia_load.png "Model")

Inertia of the solid cylinder is given by the following equation:

$J_{SM}=\frac{1}{2}mr^2=1.1*10^{-3} [kg*m^2]$


### Resistance of the net
First of all we have mesure the voltage of idle DC motor. In order to accomplish this task we have disconnected the DC motor power supply and measure the voltage value which is given below:\
 $U=6.65 [V]$ 

Then after reconnecting the motor we have locked the motor and measure the current with help of current probe. The result is given below:\
$I=2.45 [A]$

Finally we have used well-known Ohm formula to calculate resistance of the net:

$$
R=U/I \\
R=6.65/2.45=2.71 [\Omega]
$$
# Useful links

[Manufacturer website](http://www.inteco.com.pl/products/modular-servo/)

[Test stand documentation](https://drive.google.com/file/d/1F0foLas4g3s24JEOM_dqSUn_Qu4ZN-Qn/view?usp=sharing)
