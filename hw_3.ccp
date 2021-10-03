#include <iostream>
#include <cmath>
#include <string>

/////////// Part_1
class Figure {
public:
    virtual double area() = 0;
};

class Parallelogram : Figure {
public:
    double area() override = 0;
};

class Circle : Figure {
public:
    double r;
    double area() override {
        double pi = 3.14;
        double S;
        S = r * pow(pi, 2);
        return S;
    };
};

class Rectangle : Parallelogram {
public:
    double x;
     double area() override {
        double S;
        S = pow(x, 2);
        return S;
    };
};

class Square : Parallelogram {
public:
    double x;
    double y;
    double area() override {
        double S;
        S = x*y ;
        return S;
    };
};

class Rhombus : Parallelogram {
public:
    double d1;
    double d2;
    double area() override {
        double S;
        S = (d1 * d2) / 2;
        return S;
    };
};

/////////// Part_2
class Car {
public:
    std::string company;
    std::string model;
    Car()
    {
        std::cout << "Car" << std::endl;
    }
    ~Car()
    {
        std::cout << "~Car" << std::endl;
    }
};

class PassengerCar : Car {
public:
    PassengerCar()
    {
        std::cout << "PassengerCar" << std::endl;
    }
    ~PassengerCar()
    {
        std::cout << "~PassengerCar" << std::endl;
    }
};

class Bus : Car {
public:
    Bus()
    {
        std::cout << "Bus" << std::endl;
    }
    ~Bus()
    {
        std::cout << "~Bus" << std::endl;
    }
};

class Minivan : PassengerCar, Bus {
public:
    Minivan()
    {
        std::cout << "Minivan" << std::endl;
    }
    ~Minivan()
    {
        std::cout << "~Minivan" << std::endl;
    }
};

/////////// Part_3
class Fraction {
public:
    int numerator;
    int denominator;

    friend Fraction operator + (const Fraction& lhs, const Fraction& rhs);
    friend Fraction operator - (const Fraction& lhs, const Fraction& rhs);
    friend Fraction operator * (const Fraction& lhs, const Fraction& rhs);
    friend Fraction operator / (const Fraction& lhs, const Fraction& rhs);
    friend std::string operator > (const Fraction& lhs, const Fraction& rhs);
};

Fraction operator +(const Fraction& lhs, const Fraction& rhs) {
    Fraction result;
    result.numerator = lhs.numerator*rhs.denominator + rhs.numerator * lhs.denominator;
    result.denominator = lhs.denominator * rhs.denominator;
    return result;
}

Fraction operator - (const Fraction& lhs, const Fraction& rhs) {
    Fraction result;
    result.numerator = lhs.numerator * rhs.denominator - rhs.numerator * lhs.denominator;
    result.denominator = lhs.denominator * rhs.denominator;
    return result;
}

Fraction operator * (const Fraction& lhs, const Fraction& rhs) {
    Fraction result;
    result.numerator = lhs.numerator * rhs.numerator;
    result.denominator = lhs.denominator * rhs.denominator;
    return result;
}

Fraction operator / (const Fraction& lhs, const Fraction& rhs) {
    Fraction result;
    result.numerator = lhs.numerator * rhs.denominator;
    result.denominator = lhs.denominator * rhs.numerator;
    return result;
}

std::string operator > (const Fraction& lhs, const Fraction& rhs) {
    int l = lhs.numerator * rhs.denominator;
    int r = rhs.numerator * lhs.denominator;
    if (l > r)
        return "true";
    else
        return "false";
}

/////////// Part_4

class Card {
    enum suit;
    enum value;
    bool position;
public:
    void Flip() {
        if (position = true)
            position = false;
        else if (position = false)
            position = true;
    }

    int  GetValue() {
        return value(1);
    }

};

int main()
{
    //Part_1
    Square sqe;
    sqe.x = 6;
    sqe.y = 9;
    std::cout << sqe.area() << std::endl;
    Circle cir;
    cir.r = 6;
    std::cout << cir.area() << std::endl;

    
    //Part_2
     Minivan Minivan;

    //Part_3
    Fraction one{ 3, 7 };
    Fraction two{ 9 ,2 };
    Fraction three = one / two;
    std::cout << one.numerator << "/" << one.denominator << " fold "
              << two.numerator << "/" << two.denominator << " result:"
              << three.numerator << " " << three.denominator << std::endl;

    std::string result =  two > one;
    std::cout << "Is one more than two? Return: " << result << std::endl;

   
    return 0;
}
