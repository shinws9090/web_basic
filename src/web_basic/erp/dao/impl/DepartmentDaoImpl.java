package web_basic.erp.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import web_basic.erp.dao.DepartmentDao;
import web_basic.erp.dto.Department;
import web_basic.erp.dto.Employee;
import web_basic.erp.dto.Title;

public class DepartmentDaoImpl implements DepartmentDao {
	private static final DepartmentDaoImpl Instance = new DepartmentDaoImpl();
	private Connection con;
	
	
	public void setCon(Connection con) {
		this.con = con;
	}

	public static DepartmentDaoImpl getInstance() {
		return Instance;
	}

	private DepartmentDaoImpl() {
	}
	
	@Override
	public List<Department> selectDepartmentByAll() {
		String sql = "select deptno,deptname,floor from department";
		try (
				PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				List<Department> list = new ArrayList<Department>();
				do {
					list.add(getDepartment(rs));
				} while (rs.next());
				return list;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	private Department getDepartment(ResultSet rs) throws SQLException {
		int deptNo = rs.getInt("deptno");
		String deptName = rs.getString("deptname");
		int floor = rs.getInt("floor");
		return new Department(deptNo, deptName, floor);
	}

	@Override
	public Department selectDepartmentByNo(Department department) {
		String sql = "select deptno,deptname,floor from department where deptno = ?";

		try ( PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, department.getDeptNo());
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return getDepartment(rs);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int insertDepartment(Department department) {
		String sql = "insert into department values (?,?,?)";
		try ( PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, department.getDeptNo());
			pstmt.setString(2, department.getDeptName());
			pstmt.setInt(3, department.getFloor());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateDepartment(Department department) {
		String sql = "update department set deptname = ? ,floor = ? where deptno = ?";
		try ( PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, department.getDeptName());
			pstmt.setInt(3, department.getDeptNo());
			pstmt.setInt(2, department.getFloor());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteDepartment(Department department) {
		String sql = "delete from department where deptno = ?";
		try ( PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, department.getDeptNo());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List<Employee> selectDepartmentByDeptno(Department dept) {
		String sql = "select empno,empname,title,manager,salary,dept \r\n" + 
				"	from employee e \r\n" + 
				"	where dept = (select deptno from department d2 where deptno=?)";
		try (
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, dept.getDeptNo());
			ResultSet rs = pstmt.executeQuery() ;
				
			if (rs.next()) {
				List<Employee> list = new ArrayList<Employee>();
				do {
					list.add(new Employee(rs.getInt("empno"), rs.getString("empname"),
							new Title(rs.getInt("title")), new Employee(rs.getInt("manager"))
							, rs.getInt("salary"), new Department (rs.getInt("dept"))));
				} while (rs.next());
				return list;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
