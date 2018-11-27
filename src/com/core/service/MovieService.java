package com.core.service;
import com.common.utils.Page;
import com.core.po.Movie;
public interface MovieService {
	// 查询列表
	public Page<Movie> findMovieList(Integer page, Integer rows,
                                     String movieName, String movieType,
                                     String movieCountry, String movieYears);
	
	public int createMovie(Movie movie);
	
	// 通过id查询
	public Movie getMovieById(Integer id);
	// 更新
	public int updateMovie(Movie movie);
	// 删除
	public int deleteMovie(Integer id);

}
