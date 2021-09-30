  
#include <iostream>
#include <cstdint>

class Power {

    int first;
    int second;

public:

   void set() {
       first = 6;
       second = 4;
    }

   void calculate() {
       set();
       std::cout << pow(first, second) << "\n";
   }
};

class RGBA {
    std::uint8_t m_red = 0;
    std::uint8_t m_green = 0;
    std::uint8_t m_blue = 0;
    std::uint8_t m_alpha = 255;

  
public:

    void Change(std::uint8_t red, std::uint8_t green, std::uint8_t blue, std::uint8_t alpha) {
        m_red = red;
        m_green = green;
        m_blue = blue;
        m_alpha = alpha;
    }
    
    void print() {

        std::cout << "red: " << static_cast<uint16_t>(m_red) <<
            ", green: " << static_cast<uint16_t>(m_green) <<
            ", blue: " << static_cast<uint16_t>(m_blue) <<
            ", alpha: " << static_cast<uint16_t>(m_alpha) << ".\n";
    }

};

class Steck {
    int arr[10];
    int sizeSteck;

public:
    void reset() {
        for (int i = 0; i < 10; i++){
            arr[i] = 0;
            sizeSteck = -1;
        }
    }

    bool push(int data) {
        if (sizeSteck < 10)
        {
            arr[++sizeSteck] = data;
            return true;
        }
        else
        {
            std::cout << "Steck overflow! \n";
            return false;
        }
    }
    
    void pop() {
        if (sizeSteck != -1) {
            arr[sizeSteck--] = 0;
        }
        else {
            std::cout << "Steck is empty";
        }
    }
    
    
    void print() {
        std::cout << "( ";
        for (int i = 0; i <= sizeSteck ; i++)
        {
            std::cout << arr[i] << " ";

        }
        std::cout << ")\n";
    }
};


int main()
{
 // Part_1
    Power part_1;
    part_1.calculate();

// Part_2

    RGBA part_2;
    part_2.Change(2, 5, 9, 8);
    part_2.print();
   
// Part_3
    Steck stack;
    stack.reset();
    stack.print();

    stack.push(3);
    stack.push(7);
    stack.push(5);
    stack.print();

    stack.pop();
    stack.print();

    stack.pop();
    stack.pop();
    stack.print();

    return 0;
}
