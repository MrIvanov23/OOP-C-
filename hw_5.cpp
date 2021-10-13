#include <iostream>
#include <string>

//Part_1
template <typename T>
class  Pair1{
public:
	Pair1(T f, T s) {
		m_first = f;
		m_second = s;
	}
		
	T first() {
		return m_first;
	}

	T second() {
		return m_second;
	}

	T first() const {
		return m_first;
	}

	T second() const {
		return m_second;
	}
	
	~Pair1() {};

private:
	T m_first;
	T m_second;
};

//Part_2
template<typename T, typename U>
class Pair {
public:
	Pair(T f, U s) {
		m_first = f;
		m_second = s;
	}

	T first() {
		return m_first;
	}

	U second() {
		return m_second;
	}

	T first() const {
		return m_first;
	}

	U second() const {
		return m_second;
	}

	~Pair() {};

private:
	T m_first;
	U m_second;
};

//Part_3
template<typename U>
class Pair<std::string, U> {
public:
	Pair(std::string f, U s) {
		m_first = f;
		m_second = s;
	}

	std::string first() {
		return m_first;
	}

	U second() {
		return m_second;
	}
	~Pair() {};

private:
	std::string m_first;
	U m_second;

};



template<typename U>
class StringValuePair : public Pair<std::string, U> {
public:
	StringValuePair(std::string fir, U sec): Pair<std::string, U> (fir , sec){}
		
	~StringValuePair() {};

};

int main()
{
	
	//   Part_1
	std::cout << "Part_1" << std::endl;
	Pair1 <int> p1(6, 9);
	std::cout << "Pair: " << p1.first() << ' ' << p1.second() << std::endl;

	const Pair1<double> p2(3.4, 7.8);
	std::cout << "Pair: " << p2.first() << ' ' << p2.second() << std::endl << std::endl;
	
	//   Part_2
	std::cout << "Part_2" << std::endl;
	Pair<int, double> p_1(6, 7.8);
	std::cout << "Pair: " << p_1.first() << ' ' << p_1.second() << std::endl;

	const Pair<double, int> p_2(3.4, 5);
	std::cout << "Pair: " << p_2.first() << ' ' << p_2.second() << std::endl << std::endl;
	
	//   Part_3
	std::cout << "Part_3" << std::endl;


	StringValuePair <int> svp( "Amazing" , 7);
	std::cout << "Pair: " << svp.first() << ' ' << svp.second() << std::endl << std::endl;

	return 0;
}