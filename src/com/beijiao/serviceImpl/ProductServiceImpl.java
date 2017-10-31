/**
 * 
 */
package com.beijiao.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.beijiao.dao.ProductMapper;
import com.beijiao.model.Product;
import com.beijiao.service.ProductService;

/**
 * @author cmy
 *ÉÏÎç11:30:25
 */
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductMapper productMapper;
	/* (non-Javadoc)
	 * @see com.beijiao.service.ProductService#selectProduct(int)
	 */
	@Override
	public Product selectProduct(int productId) {
		// TODO Auto-generated method stub
		return productMapper.selectProduct(productId);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ProductService#selectListProduct()
	 */
	@Override
	public List<Product> selectListProduct() {
		// TODO Auto-generated method stub
		return productMapper.selectListProduct();
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ProductService#addProduct(com.beijiao.model.Product)
	 */
	@Override
	public int addProduct(Product product) {
		// TODO Auto-generated method stub
		return productMapper.addProduct(product);
	}

	/* (non-Javadoc)
	 * @see com.beijiao.service.ProductService#deleteProduct(int)
	 */
	@Override
	public int deleteProduct(int productId) {
		// TODO Auto-generated method stub
		return productMapper.deleteProduct(productId);
	}

}
