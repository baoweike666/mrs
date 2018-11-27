package com.core.web.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.common.utils.Page;
import com.core.po.BaseDict;
import com.core.po.Movie;
import com.core.po.User;
import com.core.service.BaseDictService;
import com.core.service.MovieService;
/**
 * 控制器类
 */
@Controller
public class MovieController {
	// 依赖注入
	@Autowired
	private MovieService movieService;
	@Autowired
	private BaseDictService baseDictService;
	// 来源
	@Value("${movie.type.type}")
	private String TYPE_TYPE;
	// type
	@Value("${movie.country.type}")
	private String COUNTRY_TYPE;
	// years
	@Value("${movie.years.type}")
	private String YEARS_TYPE;
	/**
	 *  列表
	 */
	@RequestMapping(value = "/movie/list.action")
	public String list(@RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String movieName, String movieType, String movieCountry,
			String movieYears, Model model) {
		// 条件查询所有movies
		Page<Movie> movies = movieService
				.findMovieList(page, rows, movieName,
                                        movieType, movieCountry,movieYears);
		model.addAttribute("page", movies);
		
		List<BaseDict> typeType = baseDictService
				.findBaseDictByTypeCode(TYPE_TYPE);
		
		List<BaseDict> countryType = baseDictService
				.findBaseDictByTypeCode(COUNTRY_TYPE);
		
		List<BaseDict> yearsType = baseDictService
				.findBaseDictByTypeCode(YEARS_TYPE);
		// 添加参数
		model.addAttribute("typeType", typeType);
		model.addAttribute("countryType", countryType);
		model.addAttribute("yearsType", yearsType);
		model.addAttribute("movieName", movieName);
		model.addAttribute("movieType", movieType);
		model.addAttribute("movieCountry", movieCountry);
		model.addAttribute("movieYears", movieYears);
		return "movie";
	}
	
	/**
	 * 创建
	 */
	@RequestMapping("/movie/create.action")
	@ResponseBody
	public String movieCreate(Movie movie, HttpSession session) {

	    // 执行Service层中的创建方法，返回的是受影响的行数
	    int rows = movieService.createMovie(movie);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 通过id获取信息
	 */
	@RequestMapping("/movie/getMovieById.action")
	@ResponseBody
	public Movie getMovieById(Integer id) {
	    Movie movie = movieService.getMovieById(id);
	    return movie;
	}
	/**
	 * 更新
	 */
	@RequestMapping("/movie/update.action")
	@ResponseBody
	public String movieUpdate(Movie movie) {
	    int rows = movieService.updateMovie(movie);
	    if(rows > 0){
	        return "OK";
	    }else{
	        return "FAIL";
	    }
	}

	/**
	 * 删除
	 */
	@RequestMapping("/movie/delete.action")
	@ResponseBody
	public String movieDelete(Integer id) {
	    int rows = movieService.deleteMovie(id);
	    if(rows > 0){			
	        return "OK";
	    }else{
	        return "FAIL";			
	    }
	}

}
