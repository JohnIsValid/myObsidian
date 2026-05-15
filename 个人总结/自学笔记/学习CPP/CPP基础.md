# 命名规范

```cpp
1、类名、函数名，大写字母开头

class Node; // 类名
class LeafNode; // 类名
void Draw(void); // 函数名
void SetValue(int value); // 函数名

2、变量、参数，小写字母开头

BOOL flag;
int drawMode;

3、常量，全用大写字母，用下划线分割单词

const int MAX = 100;
const int MAX_LENGTH = 100;

4、静态变量，加前缀 s_（表示 static）

static int s_initValue; // 静态变量

5、全局变量，加前缀 g_（表示 global）

int g_howManyPeople; // 全局变量
int g_howMuchMoney; // 全局变量
6、类的数据成员，加前缀 m_（表示 member），可避免数据成员与成员函数的参数同名

void Object::SetValue(int width, int height)
{
    m_width = width;
    m_height = height;
}
```

# include是什么

```cpp
#include <iostream>

//#include 为包含头文件命令；
//来自标准库的头文件都使用<>;
//来自自定义的头文件都使用""；
//iostream 中 IO 即 Input 和 Output 的首字母结合 - stream 是指我们发送到屏幕上的数据流；

//代表当前文件中将包含iostream这个库中的文件，因此当前文件可以访问iostream中的所有代码;
//而iostream本身是一个输入流和输出流的库，既可以使用cout和cin等方法;
```

# using namespace是什么

```cpp
using namespace std;
cout << myCharacter << endl;

//代表想使用标准命名空间的命令
//如果没有 using namespace std ，那么上述就会变成 std::cout << myCharacter << std::endl
//std 代表一个标准命名空间
```

# main

```cpp
int main(){
	//可以理解为事件一开始，在这里返回的是int类型
}
```

# 变量类型

```cpp
	int myInt;					// 4 byte 
	short myShort;				// <= int
	long myLong;				// >= int
	bool myBool;				// 1 byte
	char MyChar;				// 1 byte
	float myFloat;				// 4 byte 
	double myDouble;			// 8 byte 
	
	//科学计数法：1234 = 1.234 * 10³ = 1.234e3
```

# 单引号和双引号的区别

```cpp
myCharacter = 'y';
//单引号象征一个字符，双引号象征一串字符
//''代表一个字符，""代表多个字符
```

# 表达式和语句的区别

```cpp
//Expression
//表达式
//运算符和操作数的组合,会返回一个值
n+33;

//Statement
//语句
//语句会执行一系列的操作,但不会返回一个值
int x; 

//ExpressionStatement
//表达式语句
//执行操作的同时会赋值
int x = 33;

```

# 真值

```cpp

//真值
//在数值上任何值为0的东西都有一个为False的真值
//例如： 0是真值 0.00是真值 0.00000是真值
0 = false;
0.00 = false;
0.00000 = false;
0.0000001 = true;
```

# 关系运算符

```cpp
	//关系运算符
	// >	大于
	// <	小于
	// >=	大于等于
	// <=	小于等于
	// ==	等于
	// !=	不等于
	// !	反转运算 boolx = !false   boolx = true
```

# if…else…语句

```cpp
#include <iostream>
using namespace std;

int a = 30;
int b = 12;

int main(){

	if (a > b)
	{
		cout << "a greate than b" << endl;
	}
	else if (a < b)
	{
		cout << "b greate than a" << endl;
	}
	else
	{
		cout << "a equal to b" << endl;
	}

	system("pause");
}
```

# while（先检查，再执行）

```cpp
#include <iostream>
using namespace std;

int main() {
	int myInt = 0;
	int count = 0;

	while (count <= 10)
	{
		count++;
		cout << count << endl;
	}
	system("pause");
}
```

# do while(先执行，再检查)

```cpp
#include <iostream>
using namespace std;

int main() {
	double numA = 3.14;
	double numB = 3.14;

	int count = 0;

	bool condition = true;

	do
	{
		cout << "the number A is:" << numA << endl;
		cout << "the number B is:" << numB << endl;
		cout << "count = " << count << endl;
		cout << "numA + numB * count= " << (numA + numB) * count << endl;
		count++;

		if (count >= 100)
		{
			condition = false;
		}
		else
		{
			condition = true;
		}

	} while (condition);

	system("pause");
}
```

# for

```cpp
#include <iostream>
using namespace std;

int main() {
	
	for (int i = 0; i <= 10; i = i + 2)
	{
		cout << i << endl;
	}

	system("pause");
}
```

# switc

```cpp
#include <iostream>

using namespace std;

enum PlayerStatus
{
	PS_Running,
	PS_Walking,
	PS_Crouching,
};

const float RunSpeed = 800.f;
const float WalkSpeed = 500.f;
const float CrouchSpeed = 350.f;

void UpdateMovementSpeed(PlayerStatus P_Status, float& Speed);
void SwitchOnInt(int i);

int main()
{
	float MovementSpeed;

	int myInt = 30;

	PlayerStatus status = PS_Walking;

	UpdateMovementSpeed(status,MovementSpeed);

	cout << "Now speed is :" << MovementSpeed << endl;

	SwitchOnInt(myInt);

	system("Pause");
}

void UpdateMovementSpeed(PlayerStatus P_Status, float& Speed)
{
	switch (P_Status)
	{
	case PS_Running:
		Speed = RunSpeed;
		break;
	case PS_Walking:
		Speed = WalkSpeed;
		break;
	case PS_Crouching:
		Speed = CrouchSpeed;
		break;
	default:
		Speed = WalkSpeed;
		break;
	}
}

void SwitchOnInt(int i)
{
	switch (i)
	{
	case 0:
		cout << "Your number was zero\\n";
	case 1:
		cout << "Your number was one\\n";
	case 2:
		cout << "Your number was two\\n";
	default:
		cout << "Your number was unknow\\n";
		break;
	}
}
```

# 指针

# 结构体

```cpp
#include <iostream>
#include <string>
using namespace std;

struct LocationVector
{
	float x;
	float y;
	float z;
};

struct Player
{
	int Level;
	float Health;
	float Damage;
	float Stamina;
	LocationVector Location = { 0.f, 0.f, 0.f };

	void TakeDamage(float dmg)
	{
		Health -= dmg;
	}

	int GetLevel()
	{
		if (Level>10)
		{
			cout << "level is greater than 10 \\n";
		}
		return Level;
	}

	void DisPlayLocation()
	{
		cout << "Location.x = " << Location.x << endl;
		cout << "Location.y = " << Location.y << endl;
		cout << "Location.z = " << Location.z << endl;
	}
};

int main()
{
	Player p_1;
	p_1.Level = 9;
	p_1.Health = 100.f;
	p_1.Damage = 10.f;
	p_1.Stamina = 20.f;
	p_1.TakeDamage(40.f);

	cout << "p_1 level = " << p_1.GetLevel() << endl;
	cout << "p_1 takes " << 40.f << " damage!" << endl;
	cout << "p_1 health = " << p_1.Health << endl;

	p_1.DisPlayLocation();
	Player p_2 = { 10,100.f,40.f,20.f ,{ 31.f, 22.f, 155.f } };
	p_2.DisPlayLocation();

	system("Pause");
}

```

# 引用

```cpp
#include <iostream>
using namespace std;

void printName(string nameA, string nameB)
{
	cout << nameA << endl;
	cout << nameB << endl;
}

void changeStrByCopy(string str)
{
	str += "hello";
}
void changeStrByRef(string& str)
{
	str += "hello";
}

string changeStrByCopyA(string str)
{
	return str += "hello";
}

int main() {

	string myStr = "John";
	string& myRef = myStr;	//此时myRef和myStr已经指向了同一内存
	printName(myStr, myRef);

	myRef += "Mick";
	printName(myStr, myRef);

	changeStrByCopy(myStr);
	printName(myStr, myRef);
	printName(changeStrByCopyA(myRef), myRef);
	changeStrByRef(myStr);
	printName(myStr, myRef);

	system("pause");
}
```

# 函数重载

```cpp
#include <iostream>
using na`mespace std;

void print(string str);
void print(int i);

void print(string str) {
	cout << str << endl;
}

void print(int i) {
	cout << i << endl;
}

void print(string str1, string str2) {
	cout << str1 << endl;
	cout << str2 << endl;
}

void print(int i, string str) {
	cout << i << endl;
	cout << str << endl;
}

int main() {

	print("hello");
	print(3);
	print("hello", "hello");
	print(3, "hello");

	system("pause");
}

```

# 局部变量和全局变量重名了怎么办？

```cpp
#include <iostream>
using namespace std;

int a = 30;
int b = 12;

int main(){
	{
		int a = 33;
		cout << a << endl;
		cout << ::a << endl;
	}
	system("pause");
}
```

# 字符串

```cpp
#include <iostream>
#include <string>

//using namespace std;

int main()
{

	char MyCStringA[5] = { 'd','o','g','s' };
	std::cout << MyCStringA << std::endl;

	char MyCStringB[5] = "dogs";
	std::cout << MyCStringB << std::endl;

	std::string myString;
	myString = "My dog's name is: ";
	std::string first = "Spot";
	std::string last = "Jones";
	myString += (first + last);
	std::cout << myString << std::endl;

	system("pause");
}

```

# 常量

```cpp
#include <iostream>
#include <string>

using namespace std;

//定义一个常量的时候必须给它赋值
const int a = 30;	
int b = 10;

//const int& 的意为可以接受引用的int变量
void pov(int& num)
{
	cout << num << endl;
	num = num + 1;
}

//const int& 的意为可以接受常量int的引用
void povsxx(const int& num)

{
	cout << num << endl;
	//不可修改const的int因为常量无法修改
	//num = num + 1;
}

int main()
{
	const float pi = 3.1415926;
	//pi++;
	//非法，因为pi被const标记为常量了
	//pov(3); 不能是一个值，必须接受一个引用作为参数；
	pov(b);

	povsxx(a);
	povsxx(b);
	povsxx(30);

	system("pause");
}
```

# 数组

# 与或

```cpp
#include <iostream>
#include <string>

using namespace std;

int i = 1;
int j = 2;
int k = 3;

int main()
{

	//OR（||） AND（&&）

	if (i = k || i == j)
	{
		cout << "This will never be printed." << endl;
	}

	if (i <= k && i < j && i == j)
	{
		cout << "This will be printed." << endl;
	}

	system("pause");
}

```

# 自定义函数

```cpp
#include <iostream>
using namespace std;

void welcome() 
{
	cout << "welcome\\n";
}

int add(int a, int b)
{
	int result;
	result = a + b;
	return result;
}

void printNumber(int numberToPrint)
{
	cout << numberToPrint << endl;
}

int main(){

	int c;

	welcome();
	c = add(3, 2);
	printNumber(c);

	system("pause");
}
```

# 增量运算符

```cpp
#include <iostream>
using namespace std;

int x = 10;
int y = 10;

void printNumber(int valueToPrint)
{
	cout << valueToPrint << endl;
}

int main()
{
	int i = 1;

	//i = i+1 = 1+1 = 2
	i += 1;
	
	//i = i-1 = 2-1 = 1
	i -= 1;
	
	//i = i*6 = 1*6 = 6
	i *= 6;
	
	//i = i/3 = 6/3 = 2
	i /= 3;
	
	//i = i%1 = 2%1 = 0
	i %= 1;

	// ++x   x++

	cout << x++ << endl;
	cout << ++y << endl;

	printNumber(x);
	printNumber(y);

}
```

# 枚举

```cpp
#include <iostream>

using namespace std;

enum PlayerStatus
{
	PS_Crouched,
	PS_Standing,
	PS_Walking,
	PS_Running

};

enum MovementStatus
{
	MS_Crouched,
	PS_Running
};

int main()
{
	PlayerStatus nowState;
	MovementStatus secondState;
	nowState = PS_Standing;
	//当多个枚举中有相同名称的选项时，通过 枚举类型 + :: 的方式来选择
	nowState = PlayerStatus::PS_Running;
	secondState = MovementStatus::PS_Running;

	if (nowState == PS_Standing)
	{
		cout << "The player is Standing" << endl;
	}

	system("Pause");
}
```

# 指针

```cpp
#include <iostream>
#include <string>
using namespace std;

//创建指针结构体

struct Container
{
	string name;
	int x;
	int y;
	int z;
};

int main()
{

	int* ptr;	//一个存储int类型数据的地址
	int a = 100;
	int b = 50;

	ptr = &a;	//将ptr指向a, &a即为a的地址；
	cout << ptr << " : " << *ptr << endl;

	ptr = &b;	//将ptr指向b
	cout << ptr << " : " << *ptr << endl;

	//指针与数组
	int numbers[] = { 0,1,2,3,4,5,6,7,8,9 };
	int* NumPtr = numbers;
	cout << NumPtr << " : " << *NumPtr << endl;

	//指针运动
	NumPtr++;
	cout << NumPtr << " : " << *NumPtr << endl;
	NumPtr += 3;
	cout << NumPtr << " : " << *NumPtr << endl;

	//创建指针结构体
	Container containerStruct = {"John",5,6,7};

	Container* PtrToCont = &containerStruct;

	//(*xxx).xxx 的方法获取指针结构体里的对象
	cout << PtrToCont << " : " << (*PtrToCont).name << endl;
	cout << PtrToCont << " : " << (*PtrToCont).x << endl;
	cout << PtrToCont << " : " << (*PtrToCont).y << endl;
	cout << PtrToCont << " : " << (*PtrToCont).z << endl;

	//xxx->xxx 的方法获取指针结构体里的对象
	cout << PtrToCont << " : " << PtrToCont -> name << endl;
	cout << PtrToCont << " : " << PtrToCont -> x << endl;
	cout << PtrToCont << " : " << PtrToCont -> y << endl;
	cout << PtrToCont << " : " << PtrToCont -> z << endl;

	//非指针的变量直接用·就可以了；
	Container testStr = { "hello",1,2,3 };
	cout << testStr.name << endl;

	system("Pause");
}

```

# 类和对象

```cpp
#include <iostream>
#include <string>
using namespace std;

class Dog
{
public:

	//构造函数必须与类同名
	//Dog()
	//{
	//	Bark();
	//	name = "littleDog";
	//	age = 10;
	//	health = 20.f;
	//	sound = "Woof!Woof!Woof!";
	//}

	Dog();

	string name;
	int age;
	float health;
	string sound;

	//类里的函数
	//void Bark()
	//{
	//	cout << this->sound << endl;
	//}

	//外部构建类的内部函数
	void Bark();
};

Dog::Dog()
{
	name = "littleDog";
	age = 10;
	health = 20.f;
	sound = "Woof!Woof!Woof!";
	Bark();
}

//外部构建类的内部函数
void Dog::Bark()
{
	cout << this->sound << endl;
}

int main()
{
	Dog Alex;
	Alex.name = "Gallager ";

	cout << Alex.name << endl;
	cout << Alex.age << endl;
	cout << Alex.health << endl;
	
	system("Pause");
}

```

# 继承

```cpp

#include <iostream>
#include<string>
using namespace std;

void printMassage(string msg)
{
	cout << msg << endl;
}

class Animal
{
public:
	//普通的构造函数，不带参数；
	Animal();

	//构造函数的第二种用法，带可配置的参数；
	Animal(string name, int age, int numberOfLimbs);

	string name;
	int age;
	int numberOfLimbs;

	void Report()
	{
		cout << endl;
		cout << "Name : " << this->name << endl;
		cout << "Age  : " << this->age << endl;
		cout << "Limbs: " << this->numberOfLimbs << endl;
	}
};

//继承父类
//class Dog : Animal 没有public会导致继承自animal里的所有内容还是Private的；
class Dog :public Animal
{
public:
	Dog();
	Dog(string name, int age, int numberOfLimbs);

	void Speak();
};

//多余2层的嵌套继承
class Corgi :public Dog
{
public:
	Corgi(string name, int age, int numberOfLimbs);
};

int main()
{
	Animal animal_1;
	animal_1.Report();

	Animal animal_2("Cheetah",7,5 );
	animal_2.Report();

	Dog dog("spot",4,5);
	dog.Speak();

	printMassage("	Dog dog_1();");
	Dog dogx;

	 
	Corgi Corgi("corgia",3,4);

	system("pause");
}

Animal::Animal()
{
	this->name = "DEFAULT";
	this->age = 10;
	this->numberOfLimbs = 4;

	cout << "AN ANIMAL HAS BEEN BORNED\\n";
}
Animal::Animal(string name, int age, int numberOfLimbs) 
	//构造函数的初始化列表；
	:name(name), age(age), numberOfLimbs(numberOfLimbs)
{
	Report(); 
}

Dog::Dog() 
{
	cout << "A DOG HAS BEEN BORNED" << endl;
}

//用 : 来初始化，Dog想继承谁；
Dog::Dog(string name, int age, int numberOfLimbs):Animal(name, age, numberOfLimbs)
{
	//可以调用父类的构造函数
	//Animal(name, age, numberOfLimbs);
}

void Dog::Speak()
{
	cout << "Woof!" << endl;
}

Corgi::Corgi(string name, int age, int numberOfLimbs):Dog(name,age,numberOfLimbs){}
```

# 访问修饰符（访问说明符）

```cpp
#include <iostream>
#include<string>
using namespace std;

//public	公开访问
//protected	只可以从同一类或派生类中访问
//private	无法从外部访问

class Creature
{
public:
	Creature();

	string GetName();
	int GetHealth();

	Creature(string name, int health);

	void SetName(string name);
	void SetHealth(int health);

	void TakeDamage(int dmg);

private:
	string name;
	float health;

protected:
	int numberOfLimbs;
};

class Gorblin : public Creature
{
public:
	Gorblin();
};

int main()
{
	Creature Eason("Jack",200);
	//Creature Eason;

	cout << Eason.GetName() << "'s Health is: " << Eason.GetHealth() << endl;
	Eason.SetName("Howard");
	Eason.SetHealth(1000);
	cout << Eason.GetName() << "'s Health is: " << Eason.GetHealth() << endl;
	Eason.TakeDamage(30);

	Gorblin Gobby;

	system("pause");

}

Creature::Creature()
{
	this->name = "Unknow";
	this->health = 100;
	numberOfLimbs = 2;
}

Creature::Creature(string name,int health)
{
	cout << "A creature has been created!" << endl;
	this->name = name;
	this->health = health;
	numberOfLimbs = 2;
}

void Creature::SetName(string name)
{
	this->name = name;
}

void Creature::SetHealth(int health)
{
	this->health = health;
}

string Creature::GetName()
{
	return name;
}
int Creature::GetHealth()
{
	return health;
}

void Creature::TakeDamage(int dmg)
{
	float total;
	total = this->health - dmg;

	if (total <= 0)
	{
		cout << this->GetName() << " has DIED!" << endl;
	}
	else
	{
		this->health -= dmg;
		cout << this->GetName() << " get " << dmg << " point damage!" << endl;
		cout << "Now health is:" << this->health << endl;
	}
}

Gorblin::Gorblin()
{
	numberOfLimbs = 5;
	SetName("Gobby");
	SetHealth(150);

	cout << GetName() << endl;
	cout << GetHealth() << endl;
}
```

# 栈和堆（stack and Heap）

# 解构函数

```cpp
#include <iostream>
#include<string>
using namespace std;

class Character
{
public:
	Character();
	~Character();

	int* age;
	float* health;

};

int main()
{
	Character* Char = new Character;
	delete Char;

	system("pause");
}

Character::Character()
{
	age = new int(1);
	health = new float(100.f);
	cout << "A new character was created.\\n";
}

Character::~Character()
{
	cout << "Character destroyed.\\n";
}
```

# Static关键字

```cpp
// static的参数在函数中不会被销毁；

#include <iostream>
#include <string>

using namespace std;

void updateCountA();
void updateCountB();

int main(){

    for (int i = 0; i < 10; ++i) {
        updateCountA();
        updateCountB();
    }
}
void updateCountA(){
    static int count1 = 0;
    count1 ++;
    cout << count1 << endl;
}
void updateCountB(){
    int count2 = 0;
    count2 ++;
    cout << count2 << endl;
}
```

```cpp
// static的参数在类中共享；
#include <iostream>
#include <string>
using namespace std;

 class Item
 {
 public:
     static int stack;
 };

 int Item::stack = 10;

int main()
{

    Item item1;
    Item item2;

    item1.stack = 20;

    cout << item1.stack << endl;
    cout << item2.stack << endl;
}
```

# 头文件