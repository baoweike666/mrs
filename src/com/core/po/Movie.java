package com.core.po;
import java.io.Serializable;

/**
 * 持久化类
 */
public class Movie implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer movie_id;          // 电影编号
	private String movie_name;         // 电影名称
	private String movie_type;      // 电影类型
	private String movie_country;    // 电影国家
	private String movie_years;       // 电影年份
	private Integer movie_avgscore;     // 电影平均分
	private Integer start;
	private Integer rows;

	public void setStart(Integer start) {
		this.start = start;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getStart() {
		return start;
	}

	public Integer getRows() {
		return rows;
	}

	public void setMovie_id(Integer movie_id) {
		this.movie_id = movie_id;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public void setMovie_type(String movie_type) {
		this.movie_type = movie_type;
	}

	public void setMovie_country(String movie_country) {
		this.movie_country = movie_country;
	}

	public void setMovie_years(String movie_years) {
		this.movie_years = movie_years;
	}

	public void setMovie_avgscore(Integer movie_avgscore) {
		this.movie_avgscore = movie_avgscore;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getMovie_id() {
		return movie_id;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public String getMovie_type() {
		return movie_type;
	}

	public String getMovie_country() {
		return movie_country;
	}

	public String getMovie_years() {
		return movie_years;
	}

	public Integer getMovie_avgscore() {
		return movie_avgscore;
	}
}
