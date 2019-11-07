package com.sec.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.sec.model.Movies;

public class MovieDao {

	private JdbcTemplate jdbcTemp;
	
	public void setTemplate(JdbcTemplate jdbcTemp) {
		this.jdbcTemp = jdbcTemp;
	}


	public List<Movies> getMoviesByPage(int pageid, int total) {
		// TODO Auto-generated method stub
		String sql = "select * from dcom limit "+(pageid-1)+","+total;
		
		return jdbcTemp.query(sql,new RowMapper<Movies>() {
			public Movies mapRow(ResultSet rs, int row) throws SQLException{
				Movies m = new Movies();
				m.setMovId(rs.getInt(1));
				m.setGenres(rs.getString(2));
				m.setImdbR(rs.getDouble(3));
				m.setMovName(rs.getString(4));
				m.setReldate(rs.getDate(5));
				m.setTag(rs.getString(6));
				m.setTime(rs.getInt(7));
				m.setUrl(rs.getString(8));
				return m;
			}
		});
	}
	
	
	
}
