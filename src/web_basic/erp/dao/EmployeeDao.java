package web_basic.erp.dao;

import java.util.List;

import web_basic.erp.dto.Employee;

public interface EmployeeDao {
	
	List<Employee> selectEmployeeByAll();
	Employee selectEmployeeByNo(Employee employee);
	int insertEmployee(Employee employee);
	int updateEmployee(Employee employee);
	int deleteEmployee(Employee employee);

	List<Employee> selectJoinEmployeeByAllSimple(String sql);
	

}
