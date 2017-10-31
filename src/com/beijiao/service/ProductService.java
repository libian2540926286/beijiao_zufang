/**
 * 
 */
package com.beijiao.service;

import java.util.List;

import com.beijiao.model.Product;

/**
 * @author cmy
 *上午11:15:37
 */
public interface ProductService {

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
}
