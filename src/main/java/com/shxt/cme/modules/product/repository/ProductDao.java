package com.shxt.cme.modules.product.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.google.common.collect.Maps;
import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.Merchont;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

@Repository
public class ProductDao extends BaseDao {
	public Page<Product> findWithPage(Pageable pageable, Shop shop) {

		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_production ");
		sql.append(" WHERE shop_id='" + shop.getShopId() + "' ");
		Object[] args = new Object[] {};
		return queryForPage(sql.toString(), pageable, new ProductRowMapper(),
				args);

	}
	
	private class ProductRowMapper implements ParameterizedRowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
			Product product = new Product();

			product.setProId(rs.getString("pro_id"));
			product.setProName(rs.getString("pro_name"));
			product.setProPrice(rs.getString("pro_price"));
			product.setDisPrice(rs.getString("dis_price"));
			product.setIntroduction(rs.getString("introduction"));
			product.setImageAddress(rs.getString("image_address"));
			product.setShopId(rs.getString("shop_id"));
			return product;
		}
	}
	
	public Merchont findMerchontType(User user) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_merchont ");
		sql.append(" WHERE user_id='" + user.getUserId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new MerchontRowMapper());
	}
	
	private class MerchontRowMapper implements ParameterizedRowMapper<Merchont> {
		@Override
		public Merchont mapRow(ResultSet rs, int rowNum) throws SQLException {
			Merchont merchont = new Merchont();
			merchont.setMerchontId(rs.getString("merchont_Id"));
			merchont.setAccoutNum(rs.getString("accout_Num"));
			merchont.setRealName(rs.getString("real_Name"));
			merchont.setMerchontType(rs.getInt("merchont_Type"));
			merchont.setId(rs.getString("id"));
			merchont.setPhone(rs.getString("telephone"));
			return merchont;
		}
	}
	
	public Shop findShopInfo1(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=1 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	
	public Shop findShopInfo2(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=2 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public Shop findShopInfo3(Merchont merchont) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE shop_type=3 and merchont_id='" + merchont.getMerchontId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	private class ShopRowMapper implements
			ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Shop shop =new Shop();
			shop.setImageAddress(rs.getString("image_address"));
			shop.setIntroduction(rs.getString("introduction"));
			shop.setShopId(rs.getString("shop_id"));
			shop.setShopType(rs.getInt("shop_type"));
			shop.setShopName(rs.getString("shop_name"));
			shop.setShopQq(rs.getString("shop_qq"));
			shop.setMerchontId(rs.getString("merchont_id"));
			return shop;
		}
	}
	public void insertSelective(Product product, Shop shop) {
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_production(pro_id,pro_name,pro_price,dis_price,image_address,introduction,shop_id) ");
		sql.append(" values(?,?,?,?,?,?,?) ");
		Object[] args = new Object[] { DbUtils.getKey(),product.getProName(),
				product.getProPrice(), product.getDisPrice(),
				product.getImageAddress(),
				product.getIntroduction(), shop.getShopId() };
		update(sql.toString(), args);
	}

	public int updateByPrimaryKeySelective(Product product) {
		String sql = "UPDATE  t_production " + "SET " + "pro_name='"
				+ product.getProName() + "'" + ",pro_price='"
				+ product.getProPrice() + "'" + ",dis_price='"
				+ product.getDisPrice() + "'" + ",image_address='"
				+ product.getImageAddress() + "'" + ",introduction='"
				+ product.getIntroduction() + "'" + "WHERE pro_id='"
				+ product.getProId() + "'";
		int ss = update(sql, null);
		return ss;
	}

	public Product findInfoPro(Product product) {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_production ");
		sql.append(" WHERE pro_id='" + product.getProId() + "' ");
		Object[] args = new Object[] {};
		return queryForObject(sql.toString(), args, new ProductRowMapper());
	}

	public int deleteByPrimaryKeySelective(Product product) {
		String sql = "DELETE FROM  t_production " + "WHERE pro_id='"
				+ product.getProId() + "'";
		int ss = update(sql, null);
		return ss;
	}

}
