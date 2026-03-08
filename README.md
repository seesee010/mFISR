# mFISR
This is my own implimentation of the legendary code from quake 3.
The fast inverse square root.
Made with the `Newton-Raphson-Iteration`

## Specifications
I will write Fast inverse square root in x86-64bit Intel ASM!

## Math

$$
y_{n+1} = y_n \cdot \left(1.5 - \frac{x}{2} \cdot y_n^2\right)
$$

### About this formular
In this formular you can see y, if you gonna preform that calculation multible times, it will get more precised.

So this formular will approach as:

$$
y = \frac{1}{\sqrt{x}}
$$

## Precision

<img width="826" height="425" alt="image" src="https://github.com/user-attachments/assets/8cf0cc47-7dde-4d59-b268-1d3f4f8708aa" />

In that picture you can see the precision, like how much steps it will need to get percised
