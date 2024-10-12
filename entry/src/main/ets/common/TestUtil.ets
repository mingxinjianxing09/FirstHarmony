/**
 * 学习arkTS语法的类
 *
 */
export class TestUtil {
  static getInfo() {
    // console.log(hello);
    // for(let str of strs) {
    //    console.log(str);
    // }
    // let n = 0;
    // while (n<3) {
    //    console.log(`index ${n}`)
    //    n++;
    // }
    // do {
    //   console.log(`index ${n}`)
    //   n++;
    // } while (n < 3)
    // try {
    //   divide(10, 2);
    //   divide(10, 2);
    //   add(5,3)
    //   do_add(add)
    // } catch (e) {
    //   console.log(e)
    // } finally {
    //   console.log("最终执行")
    // }
    //这里调用了闭包，这里的z其实就是g();并且保留了对count的引用
    let z = f();
    z();
    z();
  }
}

let strs: string[] = ['a', 'b', 'c', 'd'];

let hello: string = "hello";

/**
 *
 * @param a
 * @param b
 * @param t
 * @param x
 * @param numbers rest参数（函数的最后一个参数，允许函数或方法接受任意数量的实参）
 * @returns 返回类型可以显式的标注也可以不写（如果可以从函数体推断出函数返回类型可以不写）
 */
function divide(a: number, b: number, t?: string, x: number = 2, ...numbers: number[]): number {
  if (b == 0) {
    throw new Error()
  }
  console.log(`t=${t};x=${x};numbers=${numbers}`)
  return a / b;
}

let c: number = 5;

function add(a: number, b: number) {
  //函数中定义的变量，只能在函数内部访问，不能从外部访问（如果变量名和外部作用域中相同，内部局部变量将覆盖外部定义）
  let c: number = a + b;
  console.log(`${a} + ${b} = ${c}`)
  return c;
}

//箭头函数（返回值类型可以省略）
let subtraction = (a: number, b: number): number => {
  return a - b;
}
//箭头函数简洁写法
let subtraction2 = (a: number, b: number) => a - b;


/**
 * 接口（类可以实现多个接口，接口中的方法必须在实现类中实现）
 * 接口通常包含属性和方法的声明
 */
interface DateInterface {
  //声明属性
  d: string;

  //声明方法
  now(): string;
}

//接口的实现类
class DateUtil implements DateInterface {
  d: string = '';

  now(): string {
    throw new Error("Method not implemented.");
  }

}

/**
 * 类中包含字段、方法和属性
 */
class Cat {
  //静态字段，属于类本身
  static num: number = 20;
  //字段（类中的变量，分为实例变量和静态变量）
  private _name: string = '';

  public set name(value: string) {
    this._name = value;
  }

  public get name(): string {
    return this._name;
  }

  private _age: number = 0;

  public set age(value: number) {
    this._age = value;
  }

  public get age(): number {
    return this._age;
  }

  //定义构造函数（如果未定义会自动创建具有空参的默认构造函数）
  constructor(name: string, age: number) {
    this._name = name;
    this._age = age;
  }
}


class Dog {
  name: string = '';
  age: number = 0;
}

//对象字面量（某些情况下可以代替new表达式）
let dog: Dog = { name: "小布什", age: 59 }

let dog2 = new Dog();

class Frog {
}

//泛型Record<K,V>，键值对（类似Map）K可以是字符串类型或数值类型，V可以是任何类型
let map: Record<string, number> = {
  'key1': 1,
  'key2': 2
}
//使用
map['key1'];

//定义联合类型
type Animal = Cat | Dog | Frog | number;
let animal: Animal = new Cat("猫咪", 0);
animal = new Dog();
animal = 10;

//函数类型(通常用于定义回调)
type addFun = (a: number, b: number) => number;

function do_add(f: addFun) {
  f(1, 2);
}

/**
 * 闭包(闭包会保留对外部函数的变量的引用，即使外部函数已经返回了)
 *
 * @returns
 */
function f(): () => number {
  let count = 0;
  let g = (): number => {
    count++;
    console.log(count.toString());
    return count;
  }
  return g;
}


