package web_basic.jsp_13.erp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TitleDaoImpl implements TitleDao {
	private static final TitleDaoImpl Instance = new TitleDaoImpl(); // 싱글턴 페턴 기억하기

	private Connection con;

	public void setCon(Connection con) {
		this.con = con;
	}

	public static TitleDaoImpl getInstance() {
		return Instance;
	}

	private TitleDaoImpl() {
	}

	
	
	
	private Title getTitle(ResultSet rs) throws SQLException {
		int tno = rs.getInt("tno");
		String tname = rs.getString("tname");
		return new Title(tno, tname);
	}

	@Override
	public List<Title> selectTitleByAll() {
		String sql = "select tno, tname from title";

		try (PreparedStatement pstmt = con.prepareStatement(sql); 
				ResultSet rs = pstmt.executeQuery();) {
			if (rs.next()) { // 결과 빈곳이라서 밑으로 이동이랑 조건 확인
				List<Title> list = new ArrayList<Title>();
				do {
					list.add(getTitle(rs));
				} while (rs.next());

//				System.out.println(list.size());
				return list;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Title selectTitleByNo(Title title) {
		String sql = "select tno, tname from title where tno = ?";

		try (PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, title.getTno());
//				System.out.println(pstmt);
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return getTitle(rs);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int insertTitle(Title title) {
		String sql = "insert into title values (?,?)";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, title.getTno());
			pstmt.setString(2, title.getTname());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int updateTitle(Title title) {
		String sql = "update title set tname = ? where tno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, title.getTname());
			pstmt.setInt(2, title.getTno());
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int deleteTitle(int titleNo) {
		String sql = "delete from title where tno = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, titleNo);
			return pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
