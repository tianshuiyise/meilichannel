package com.shxt.cme.modules.MngBeautyShop.repository;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;


@Repository
public class MngBeautyShopDao  extends BaseDao {

	public Page<Shop> findWithPage(Pageable pageable, Shop shop, User user) {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * ");
		sql.append(" FROM t_shop ");
		sql.append(" WHERE  deleteFlag=0 AND shop_type="+shop.getShopType());
		String shopName=shop.getShopName();
		if(shopName!=null && !("").equals(shopName)){
			sql.append("  and shop_name like '%"+shop.getShopName().trim() +"%'");
		}
		return queryForPage(sql.toString(), pageable,new ShopRowMapper(), null);
	}


	private class ShopRowMapper implements
			ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)
				throws SQLException {
			Shop shop =new Shop();
			shop.setShopId(rs.getString("shop_id"));
			shop.setShopName(rs.getString("shop_name"));
			shop.setIntroduction(rs.getString("introduction"));
			shop.setImageAddress(rs.getString("image_address"));
			shop.setImageName(rs.getString("image_name"));
			shop.setShopType(rs.getInt("shop_type"));
			shop.setShopCord(rs.getString("shop_cord"));
			shop.setShopAdd(rs.getString("shop_add"));
			shop.setShopQq(rs.getString("shop_qq"));
			shop.setMerchontId(rs.getString("merchont_id"));
			
			
			return shop;
		}
	}


	public Shop getShopById(String shop_id) {
		String sql = "SELECT  *  FROM t_shop WHERE shop_id='"+shop_id+"'  AND deleteFlag=0";
		return queryForObject(sql, null, new ShopRowMapper());
	}


	public int modifyShop(Shop shop) {
		String sql = "UPDATE t_shop SET shop_cord=?,shop_add=?,"
				+ " shop_type=?, image_address=?,image_name=?,shop_qq=?,merchont_id=?, "
				+ " shop_name=? ,introduction=? "
				+ " WHERE deleteFlag=0 AND shop_id= '" + shop.getShopId() +"'";
		
		String imageAdd=shop.getImageAddress();
		String imageName="";
		if(imageAdd!=null && !("").equals(imageAdd)){
			//指定字符串出现的位置，从0开始
			int startIndex=imageAdd.lastIndexOf("/");
			//该子字符串从指定索引处的字符开始，直到此字符串末尾。
			imageName=imageAdd.substring(startIndex+1);
		}
		
		Object[] args=new Object[]{shop.getShopCord(),shop.getShopAdd(),shop.getShopType(),
				imageAdd,imageName,shop.getShopQq(),shop.getMerchontId(),
				shop.getShopName(),shop.getIntroduction()};
		return update(sql.toString(), args);
	}


	public int delete(String shop_id) {
		String sql=" update t_shop set  deleteFlag=1 where shop_id=?";
		Object[] args=new Object[]{shop_id};
		return update(sql.toString(), args);
	}


	public int add(Shop shop, User user) {
		String sql=" INSERT INTO t_shop"
				+ "(deleteFlag,shop_id,shop_cord,shop_add,shop_name,shop_type,introduction,image_address,image_name,shop_qq,merchont_id) "
				+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)  ";
		String shopId=DbUtils.getKey();
		String merchontId=user.getUserId();
		String imageAdd=shop.getImageAddress();
		String imageName="";
		if(imageAdd!=null && !("").equals(imageAdd)){
			//指定字符串出现的位置，从0开始
			int startIndex=imageAdd.lastIndexOf("/");
			//该子字符串从指定索引处的字符开始，直到此字符串末尾。
			imageName=imageAdd.substring(startIndex+1);
		}
		
		Object[] args=new Object[]{0,shopId,shop.getShopCord(),shop.getShopAdd(),shop.getShopName(),shop.getShopType(),
				shop.getIntroduction(),imageAdd,imageName,shop.getShopQq(),merchontId};
		
		return update(sql.toString(), args);
	}


	
}
