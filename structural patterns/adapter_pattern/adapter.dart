//definition : Convert interface of class into another interface that clients expect.
//if we have two objects have with different type , then using adapter we convert the type of object to be deal with another object 

import 'employee.dart';
import 'salary_calc.dart';

class Adapter extends SalaryCalculator{

      Employee _emp=new Employee();
  double calcSalary(_operator){
    _emp.basicSalary=_operator.basicSalary;
    return super.calcSalary(_emp);
  }

}
