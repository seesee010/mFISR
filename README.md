# mISR
This is my own implimentation of an inverted square root.
Although it doesn't use such magic as the fast inverted square root technique from quate 3.
Made with the `Newton-Raphson-Iteration`

## Specifications
I will write an inverse square root in x86-64bit Intel ASM!

## Math

Here is the math behind the algo it uses in x86 ASM
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

In that picture you can see how much iterations are needed to get a certian approuch to the real inverted square root value

## DOCS
Now it is docs time...

> [!IMPORTANT]
> Code will only work if you are amsble it with an intel asm or using gcc with the extra attribute
> `-masm=intel` to gcc. I will not be the respond if this was the wrong advice!

### Getting started
First you want to asmble it yourslef or with the ./make-it-ready script, this script will auto detect your operating system and then asmble mISR for you.
And on win it is called .\make-it-ready.exe 

Both are avaible in the bin/ of this repository.

### Use the func as lib
1. There is a c header file called `main-header.h` in lib/, use that if you wanna call it in c

The func need following header:
```c
// value = the value you want to input
// the hash, on which you want start on (DO NOT SET IT TO 0 OR 1), if you are unsure just set it to any "random" value you can get.
float mFISR_calc(float value, float hash);
```

You want to compile your code into that same ASM (intel!), or use any other magic trick you have!
You may want to just use it as any other lib!...
