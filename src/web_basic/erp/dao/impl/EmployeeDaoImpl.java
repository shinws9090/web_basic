package web_basic.erp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web_basic.erp.dao.EmployeeDao;
import web_basic.erp.dto.Department;
import web_basic.erp.dto.Employee;
import web_basic.erp.dto.Title;

public class EmployeeDaoImpl implements EmployeeDao {
	private static final EmployeeDaoImpl Instance = new EmployeeDaoImpl();

	private Connection con;

	public void setCon(Connection con) {
		this.con = con;
	}

	public static EmployeeDaoImpl getInstance() {
//		if(instance==null) {
//			instance = new EmployeeDaoImpl();
//		}
		return Instance;
	}

	private EmployeeDaoImpl() {
	}

	TitleDaoImpl titleDao = TitleDaoImpl.getInstance();
	DepartmentDaoImpl deptDao = DepartmentDaoImpl.getInstance();

	private Employee getEmployee(ResultSet rs) throws SQLException {
		int empno = rs.getInt("empno");
		String empname = rs.getString("empname");
		Title title = new Title(rs.getInt("title"));
		Employee manager = new Employee(rs.getInt("manager"));
		int salary = rs.getInt("salary");
		Department dept = new Department(rs.getInt("dept"));

		// if문 조인
		/*
		 * try { if(rs.getString("tname")!=null) {
		 * title.setTname(rs.getString("tname")); } if(rs.getString("mgrname")!=null) {
		 * manager.setEmpname(rs.getNString("mgrname")); }
		 * if(rs.getString("deptname")!=null && rs.getInt("floor") != 0) {
		 * dept.setDeptName(rs.getString("deptname"));
		 * dept.setFloor(rs.getInt("floor")); } }catch(SQLException e) {
		 * 
		 * }
		 */

		try {
			dept.setDeptName(rs.getString("deptname"));
			dept.setFloor(rs.getInt("floor"));
			title.setName(rs.getString("tname"));
			manager.setEmpname(rs.getString("mgrname"));
		} catch (SQLException e) {
		}

		return new Employee(empno, empname, title, manager, salary, dept);
	}

	@Override
	public List<Employee> selectEmployeeByAll() {
		String sql = "select empno, empname, title, manager,salary,dept from employee";
		try (PreparedStatement pstmt = con.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				ArrayList<Employee> list = new ArrayList<Employee>();
				do {
					list.add(getEmployee(rs));
				} while (rs.next());
				return list;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Employee selectEmployeeByNo(Employee employee) {
		String sql = "select empno,empname,title,manager,salary,dept from employee where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, employee.getEmpno());
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return getEmployee(rs);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertEmployee(Employee employee) {
		String sql = "insert into employee values (?,?,?,?,?,?)";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, employee.getEmpno());
			pstmt.setString(2, employee.getEmpname());
			pstmt.setInt(3, employee.getTitle().getNo());
			pstmt.setInt(4, employee.getManager().getEmpno());
			pstmt.setInt(5, employee.getSalary());
			pstmt.setInt(6, employee.getDept().getDeptNo());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateEmployee(Employee employee) {
		String sql = "update employee set empname = ? where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, employee.getEmpname());
			pstmt.setInt(2, employee.getEmpno());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteEmployee(Employee employee) {
		String sql = "delete from employee where empno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, employee.getEmpno());
			return pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Employee> selectJoinEmployeeByAllSimple(String sql) {
		try (PreparedStatement pstmt = con.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				ArrayList<Employee> list = new ArrayList<Employee>();
				do {
					list.add(getEmployee(rs));
				} while (rs.next());
				return list;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}