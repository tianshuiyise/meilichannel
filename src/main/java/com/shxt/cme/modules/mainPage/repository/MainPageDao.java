package com.shxt.cme.modules.mainPage.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.modules.IDao;
import com.shxt.framework.persistence.jdbc.support.BaseDao;

/** 
 * @Project:  美丽频道    
 * @author：   ASus
 * @class： MainPageDao   
 * @Description:   类描述  TODO
 * @date： 2015-7-17 下午1:47:54 
 * @version： 1.0 
 */
@Repository
public class MainPageDao extends BaseDao implements IDao<Shop>{

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#findWithPage(org.springframework.data.domain.Pageable, java.lang.Object, com.shxt.cme.domain.User)
	 */
	@Override
	public Page<Shop> findWithPage(Pageable pageable, Shop t, User user) {
		return null;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#getById(java.lang.String)
	 */
	@Override
	public Shop getById(String id) {
		return null;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#modify(java.lang.Object)
	 */
	@Override
	public int modify(Shop t) {
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#delete(java.lang.String)
	 */
	@Override
	public int delete(String id) {
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#detail(java.lang.String)
	 */
	@Override
	public Shop detail(String id) {
		String sql="SELECT  shop_id,shop_add,shop_cord,shop_name,shop_type,introduction,image_address,image_name,shop_qq " +
				"FROM t_shop WHERE deleteFlag=0 and  shop_id=?";
		Object[] orgs=new Object[]{id};
		return queryForObject(sql, orgs, new ShopRowMapper());
	}

	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#add(java.lang.Object, com.shxt.cme.domain.User)
	 */
	@Override
	public int add(Shop t, User user) {
		return 0;
	}

	
	private class ShopRowMapper implements ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)throws SQLException {
	Shop shop =new Shop();
	String shopId=rs.getString("shop_id");
	shop.setShopId(shopId);
	shop.setShopName(rs.getString("shop_name"));
	shop.setShopAdd(rs.getString("shop_add"));
	shop.setIntroduction(rs.getString("introduction"));
	shop.setImageAddress(rs.getString("image_address"));
	shop.setImageName(rs.getString("image_name"));
	shop.setShopType(rs.getInt("shop_type"));
	shop.setShopCord(rs.getString("shop_cord"));
	shop.setShopQq(rs.getString("shop_qq"));
	
	List<Product> productionList=new ArrayList<Product>();
	if(shopId!=null && !("").equals(shopId)){
		productionList=getProductions(shopId.toString());
		shop.setProductions(productionList);
	}
	
	
	return shop;
}

		
}
	
	
	/** @Description: TODO
	 * @param string
	 * @return  
	 * @return: List<String>
	*/
	
	private List<Product> getProductions(String id) {
		
		String sql="SELECT pro_id as proId,pro_name as proName FROM t_production WHERE deleteFlag=0  AND shop_id='"+id+"'";
		
		return jdbcTemplate.query(sql, new ProductRowMapper());
	}
	
	
	private class ProductRowMapper implements ParameterizedRowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum)throws SQLException {
			Product product =new Product();
			product.setProName(rs.getString("proName"));
			product.setProId(rs.getString("proId"));
			return product;
		}
	
	}


	/** @Description: TODO
	 * @param shopId
	 * @return  
	 * @return: List<Product>
	*/
	
	public List<Product> getAllProduct(String shopId) {
		String sql="SELECT * FROM t_production WHERE deleteFlag=0  AND shop_id='"+shopId+"'";
		
		return jdbcTemplate.query(sql, new AllProductRowMapper());
	}
	
	private class AllProductRowMapper implements ParameterizedRowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum)throws SQLException {
			Product product =new Product();
			product.setProName(rs.getString("pro_name"));
			product.setProId(rs.getString("pro_id"));
			
			product.setImageAddress(rs.getString("image_address"));
			product.setImageName(rs.getString("image_name"));
			product.setIntroduction(rs.getString("introduction"));
			
			
			
			return product;
		}
	
	}
}
