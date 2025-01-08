import 'employee.dart';
import 'machine_operator.dart';
import 'salary_calc.dart';

void main(){
  Employee emp=new Employee();
  emp.empName='EMPLOYEE';emp.basicSalary=1000;
  SalaryCalculator calc=new SalaryCalculator();
  double result= calc.calcSalary(emp);
  print('${emp.empName} is $result');


  MachineOperator operator=new MachineOperator();
  operator.opeName='OPERATOR';operator.basicSalary=1200;

  result= calc.calcSalary(operator);     //here i make calcSalary able to get Machine operator type
  print('${operator.opeName} is $result');
}