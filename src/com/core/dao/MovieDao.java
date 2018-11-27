package com.core.dao;
import java.util.List;
import com.core.po.Movie;
/**
 * Movie接口
 */
public interface MovieDao {
    // 列表
	public List<Movie> selectMovieList(Movie movie);
	// 数
	public Integer selectMovieListCount(Movie movie);
	
	// 创建
	public int createMovie(Movie movie);
	// 通过id查询
	public Movie getMovieById(Integer id);
	// 更新
	public int updateMovie(Movie movie);
	// 删除
	int deleteMovie(Integer id);

}
