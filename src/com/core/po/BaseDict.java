package com.core.po;
import java.io.Serializable;
/**
 * 数据字典持久化类
 */
public class BaseDict implements Serializable {
	private static final long serialVersionUID = 1L;
	private String dict_id;          // 数据字典id
	private String dict_type_code;  // 数据字典类别代码
	private String dict_type_name;  // 数据字典类别名称
	private String dict_item_name;  // 数据字典项目名称

	
	public String getDict_id() {
		return dict_id;
	}
	public void setDict_id(String dict_id) {
		this.dict_id = dict_id;
	}
	public String getDict_type_code() {
		return dict_type_code;
	}
	public void setDict_type_code(String dict_type_code) {
		this.dict_type_code = dict_type_code;
	}
	public String getDict_type_name() {
		return dict_type_name;
	}
	public void setDict_type_name(String dict_type_name) {
		this.dict_type_name = dict_type_name;
	}
	public String getDict_item_name() {
		return dict_item_name;
	}
	public void setDict_item_name(String dict_item_name) {
		this.dict_item_name = dict_item_name;
	}

}
