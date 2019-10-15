# Servomechanism control
## Capstone Project
`Karol Rola`

`Piotr Ogórek`

`Piotr Kozimor`

This project aims to design controller for servomechanism.

## Proposed mathematical model
![alt text](/doc/math_scheme.png "Model")

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
We have acquired data for steady state conditions for 5 given outputs.






# Useful links

[Manufacturer website](http://www.inteco.com.pl/products/modular-servo/)

[Test stand documentation](https://drive.google.com/file/d/1F0foLas4g3s24JEOM_dqSUn_Qu4ZN-Qn/view?usp=sharing)
