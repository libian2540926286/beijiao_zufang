/**
 * 
 */
package com.beijiao.dao;

import java.util.List;

import com.beijiao.model.Product;

/**
 * @author cmy
 *上午11:11:38
 */
public interface ProductMapper {

	/*
	 * 查询产品
	 */
	public Product selectProduct(int productId);
	public List<Product> selectListProduct();
	
	/*
	 * 添加推广产品
	 */
	public int addProduct(Product product);
	/*
	 * 删除推广产品
	 */
	public int deleteProduct(int productId);
	/*
	 * 修改推广产品
	 */
	public int changeProduct();
}
