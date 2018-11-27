package com.core.service.impl;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.common.utils.Page;
import com.core.dao.MovieDao;
import com.core.po.Movie;
import com.core.service.MovieService;
/**
 * 管理
 */
@Service("movieService")
@Transactional
public class MovieServiceImpl implements MovieService {
	// 声明DAO属性并注入
	@Autowired
	private MovieDao movieDao;
	// 列表
	public Page<Movie> findMovieList(Integer page, Integer rows,
										String movieName, String movieType, String movieCountry,
										String movieYears) {
		// 创建对象
         Movie movie = new Movie();
		// 判断电影名称
		if(StringUtils.isNotBlank(movieName)){
			movie.setMovie_name(movieName);
		}
		// 判断电影类型
		if(StringUtils.isNotBlank(movieType)){
			movie.setMovie_type(movieType);
		}
		// 判断电影国家
		if(StringUtils.isNotBlank(movieCountry)){
			movie.setMovie_country(movieCountry);
		}
		// 判断电影年份
		if(StringUtils.isNotBlank(movieYears)){
			movie.setMovie_years(movieYears);
		}
		// 当前页
		movie.setStart((page-1) * rows) ;
		// 每页数
		movie.setRows(rows);
		// 查询列表
		List<Movie> movies =
                            movieDao.selectMovieList(movie);
		// 查询列表总记录数
		Integer count = movieDao.selectMovieListCount(movie);
		// 创建Page返回对象
		Page<Movie> result = new Page<>();
		result.setPage(page);
		result.setRows(movies);
		result.setSize(rows);
		result.setTotal(count);
		return result;
	}
	/**
	 * 创建
	 */
	@Override
	public int createMovie(Movie movie) {
	    return movieDao.createMovie(movie);
	}
	/**
	 * 通过id查询
	 */
	@Override
	public Movie getMovieById(Integer id) {
	    Movie movie = movieDao.getMovieById(id);
	    return movie;		
	}
	/**
	 * 更新
	 */
	@Override
	public int updateMovie(Movie movie) {
	    return movieDao.updateMovie(movie);
	}
	/**
	 * 删除
	 */
	@Override
	public int deleteMovie(Integer id) {
	    return movieDao.deleteMovie(id);
	}

	
}
