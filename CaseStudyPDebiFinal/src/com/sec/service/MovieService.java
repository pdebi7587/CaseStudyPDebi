package com.sec.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.sec.model.Movies;
import com.sec.model.User;
import com.sec.repository.MovieRepository;

@Service
public class MovieService implements MovieRepository{
	
	
	@Autowired
	MovieRepository movRepository;
	
	
	private JdbcTemplate jdbcTemp;
	
	
//	public void saveMovies (Movies mov) {
//		movRepository.save(mov);
//	}
//	
	




//	public List<Movies> getAllMovies(){
//		
//		List<Movies> mov = new ArrayList<Movies>();
//		
//		movRepository.findAll().forEach(
//				(e)->{mov.add(e);
//				});
//		
//		return mov;
//		
//		
//	}






	@Override
	public <S extends Movies> S save(S entity) {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public <S extends Movies> Iterable<S> saveAll(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public Optional<Movies> findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public boolean existsById(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}






	@Override
	public Iterable<Movies> findAll() {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public Iterable<Movies> findAllById(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}






	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}






	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		
	}






	@Override
	public void delete(Movies entity) {
		// TODO Auto-generated method stub
		
	}






	@Override
	public void deleteAll(Iterable<? extends Movies> entities) {
		// TODO Auto-generated method stub
		
	}






	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}


	public EmployeeDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}

	@Override
	public List<Employee> empList() {
		List<Employee> list = jdbcTemp.query("SELECT * FROM EMP_DETAILS", new RowMapper<Employee>() {

			@Override
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee emp = new Employee();

				emp.setName(rs.getString("ename"));
				emp.setDesignation(rs.getString("designation"));
				emp.setDept(rs.getString("dept"));
				emp.setSalary(rs.getInt("salary"));
				emp.setLocation(rs.getString("location"));

				return emp;
			}

		});

		return list;
	}

}



	@Override
	public List<Movies> movList() {
		// TODO Auto-generated method stub
		List<Movies> list = jdbcTemp.query("select * from dcom", newRowMapper<Movies>()){
			
			public Movies mapRow(ResultSet rs, int rowNum) {
				Movies mov = new Movies();
				
				mov.setMovId(rs.getInt());
				
				
			}
			
		
		
		
		return null;
	}

}
