package com.shxt.cme.modules.shop.repository;

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
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.Merchont;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

@Repository
public class ShopDao extends BaseDao{
	public void insertShop1(Shop shop,User user) {
		// TODO Auto-generated method stub
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_shop(shop_id,shop_name,shop_qq,introduction,image_address,image_name,shop_type,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?,?) ");
		Object[] args=new Object[]{DbUtils.getKey(),shop.getShopName(),shop.getShopQq(),shop.getIntroduction(),
									shop.getImageAddress(),shop.getImageName(),1,user.getUserId()};
		
		update(sql.toString(), args);
	}
	public void insertShop2(Shop shop,User user) {
		// TODO Auto-generated method stub
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_shop(shop_id,shop_name,shop_qq,introduction,image_address,image_name,shop_type,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?,?) ");
		Object[] args=new Object[]{DbUtils.getKey(),shop.getShopName(),shop.getShopQq(),shop.getIntroduction(),
									shop.getImageAddress(),shop.getImageName(),2,user.getUserId()};
		
		update(sql.toString(), args);
	}
	public void insertShop3(Shop shop,User user) {
		// TODO Auto-generated method stub
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into  t_shop(shop_id,shop_name,shop_qq,introduction,image_address,image_name,shop_type,merchont_id) ");
		sql.append(" values(?,?,?,?,?,?,?,?)  ");
		Object[] args=new Object[]{DbUtils.getKey(),shop.getShopName(),shop.getShopQq(),shop.getIntroduction(),
									shop.getImageAddress(),shop.getImageName(),3,user.getUserId()};
		
		update(sql.toString(), args);
	}
	

	private class ShopRowMapper implements
			ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Shop shop =new Shop();
			shop.setImageAddress(rs.getString("image_address"));
			shop.setImageName(rs.getString("image_name"));
			shop.setIntroduction(rs.getString("introduction"));
			shop.setShopId(rs.getString("shop_id"));
			shop.setShopName(rs.getString("shop_name"));
			shop.setShopType(rs.getInt("shop_type"));
			shop.setShopQq(rs.getString("shop_qq"));
			shop.setMerchontId(rs.getString("merchont_id"));
			return shop;
		}
	}
	public Merchont findMerchontType(User user){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_merchont ");
		sql.append(" WHERE merchont_id='"+user.getUserId()+"' ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new MerchontRowMapper());
	}
	private class MerchontRowMapper implements
	ParameterizedRowMapper<Merchont> {
	@Override
	public Merchont mapRow(ResultSet rs, int rowNum)
		throws SQLException {
	Merchont merchont =new Merchont();
	merchont.setMerchontId(rs.getString("merchont_Id"));
	merchont.setAccoutNum(rs.getString("accout_Num"));
	merchont.setRealName(rs.getString("real_Name"));
	merchont.setMerchontType(rs.getInt("merchont_Type"));
	merchont.setId(rs.getString("id"));
	return merchont;
	}
	}
	public Shop findShopInfo(Pageable pageable,User user){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE merchont_id='"+user.getUserId()+"' ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public Shop findShop1(Merchont merchont){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE merchont_id='"+merchont.getMerchontId()+"' and shop_type=1 ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public Shop findShop2(Merchont merchont){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE merchont_id='"+merchont.getMerchontId()+"' and shop_type=2 ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public Shop findShop3(Merchont merchont){
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE merchont_id='"+merchont.getMerchontId()+"' and shop_type=3 ");
		Object[] args=new Object[]{};
		return queryForObject(sql.toString(), args, new ShopRowMapper());
	}
	public int updateShopInfo(Shop shop){
		String sql= "UPDATE  t_shop " + "SET "+ "shop_name='"+shop.getShopName()+"'"
				+ ",shop_qq='"+shop.getShopQq()+"'" 
				+ ",introduction='"+shop.getIntroduction()+"'" 
				+ ",image_address='"+shop.getImageAddress()+"'" 
				+ ",image_name='"+shop.getImageName()+"'" 
				+ "WHERE shop_id='"+shop.getShopId()+"'";
    	System.out.println("sql==="+sql);
    	int ss=update(sql, null);
    	System.out.println("结果ss=="+ss);
    	return ss;
	}
}
