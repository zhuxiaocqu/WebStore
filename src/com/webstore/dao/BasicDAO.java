package com.webstore.dao;

import java.util.List;

/**
 * insert(Object object) 
 * delete(Object object) , 
 * query(int id) , 
 * query(String str) ,  
 * update(Object object)
 * 
 * @author zhuxiao
 *
 */
public interface BasicDAO {
	/**
	 * 插入数据到数据库
	 * @param object 要插入的对象
	 * @return 返回true，插入成功
	 * 		          返回false，插入失败
	 */
	public boolean insert(Object object);
	
	/**
	 * 从数据库删除数据
	 * @param object
	 * @return
	 */
	public boolean delete(Object object);
	
	/**
	 * 根据ID从数据库查询数据
	 * @param id
	 * @return 查询成功，返回查询到的数据并封装成对象
	 * 		          查询失败，返回null
	 */
	public Object query(int id);
	/**
	 * 根据对象特征从数据库查询数据
	 * @param str
	 * @return  List<Object>
	 * 			查询成功，返回查询到的数据并封装成对象
	 * 		             查询失败，返回null
	 */
	public List<Object> query(String str);
	
	/**
	 * 从数据库查询全部的数据
	 * @return List<Object>
	 * 		          查询成功，返回查询到的数据并封装成对象
	 * 		          查询失败，返回null
	 */
	public List<Object> queryAll();
	
	/**
	 * 根据传入的对象，从数据库中将其删除
	 * @param object
	 * @return 返回true，插入成功
	 * 		          返回false，插入失败
	 */
	public boolean update(Object object);
}
