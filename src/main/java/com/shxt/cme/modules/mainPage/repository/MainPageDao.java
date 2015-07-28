package com.shxt.cme.modules.mainPage.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.stereotype.Repository;

import com.shxt.cme.domain.Member;
import com.shxt.cme.domain.OrderBean;
import com.shxt.cme.domain.Product;
import com.shxt.cme.domain.ReviewBean;
import com.shxt.cme.domain.Shop;
import com.shxt.cme.domain.User;
import com.shxt.cme.domain.UserBean;
import com.shxt.cme.modules.IDao;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.framework.utils.DbUtils;

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


	/** @Description: TODO
	 * @param review
	 * @return  
	 * @return: List<ReviewBean>
	*/
	
	public List<ReviewBean> getAllReview(ReviewBean review) {
		
		/*String sql="SELECT overallStatus,o.order_id,r.reviewDate,r.reviewMes,p.shop_id,o.user_id FROM t_review r LEFT JOIN t_order o ON r.orderId=o.order_id LEFT JOIN  t_production p ON p.pro_id=o.pro_id " +
				"WHERE  p.deleteFlag=0 and r.deleteFlag=0 and o.deleteFlag=0  AND shop_id='"+review+"'";
		*/
		StringBuilder build=new StringBuilder();
		build.append("SELECT DISTINCT overallStatus,o.order_id,r.reviewDate,r.reviewMes,p.shop_id,o.user_id FROM " +
				"t_review r LEFT JOIN " +
				"t_order o ON r.orderId=o.order_id LEFT JOIN  " +
				"t_production p ON p.pro_id=o.pro_id " +
				"WHERE  p.deleteFlag=0 and r.deleteFlag=0 and o.deleteFlag=0  ");
		if(null!=review.getShopId() && !("").equals(review.getShopId())){
			build.append(" AND p.shop_id= '"+review.getShopId()+"'   ");
		}
		if(null!=review.getProId() && !("").equals(review.getProId())){
			build.append(" AND p.pro_id= '"+review.getProId()+"'   ");
		}
		return jdbcTemplate.query(build.toString(), new ReviewRowMapper());
	}
	
	private class ReviewRowMapper implements ParameterizedRowMapper<ReviewBean> {
		@Override
		public ReviewBean mapRow(ResultSet rs, int rowNum)throws SQLException {
			ReviewBean reviewBean =new ReviewBean();
			reviewBean.setOverallStatus(rs.getString("overallStatus"));
			reviewBean.setOrderId(rs.getString("order_id"));
			reviewBean.setReviewDate(rs.getString("reviewDate"));
			reviewBean.setReviewMes(rs.getString("reviewMes"));
			String userId=rs.getString("user_id");
			reviewBean.setUserId(userId);
			if(null!=userId && !("").equals(userId)){
				UserBean user=getUserNameById(userId);
				if(user!=null){
					reviewBean.setUserName(user.getUserName());
				}
			}
			return reviewBean;
		}
	}
	
	/** @Description: TODO
	 * @param userId
	 * @return  
	 * @return: String
	*/
	
	private UserBean getUserNameById(String userId) {
		String sql="SELECT user_name as userName FROM t_user WHERE deleteFlag=0 AND  user_id='"+userId+"'";
		return queryForObject(sql, null, new userRowMapper());
	}
	
	private class userRowMapper implements ParameterizedRowMapper<UserBean> {
		@Override
		public UserBean mapRow(ResultSet rs, int rowNum)throws SQLException {
			UserBean user =new UserBean();
			user.setUserName(rs.getString("userName"));
			return user;
		}
	}

	private class ProductNameRowMapper implements ParameterizedRowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum)throws SQLException {
			Product product =new Product();
			product.setProName(rs.getString("proName"));
			return product;
		}
	}

	/** @Description: TODO
	 * @param shopId
	 * @return  
	 * @return: List<OrderBean>
	*/
	public List<OrderBean> getAllOrder(OrderBean orderBean) {
		StringBuilder build=new StringBuilder();
		build.append("SELECT DISTINCT od.order_id ,od.pro_id,od.member_id,od.user_id,od.appoint_time FROM t_order AS od LEFT JOIN  " +
				"t_production p ON od.pro_id=p.pro_id " +
				"WHERE od.deleteFlag=0 AND p.deleteFlag=0 ");
		if(null!=orderBean.getShopId() && !("").equals(orderBean.getShopId())){
			build.append(" AND p.shop_id= '"+orderBean.getShopId()+"'   ");
		}
		if(null!=orderBean.getProId() && !("").equals(orderBean.getProId())){
			build.append(" AND p.pro_id= '"+orderBean.getProId()+"'   ");
		}
		return jdbcTemplate.query(build.toString(), new OrderRowMapper());
	}
	
	private class OrderRowMapper implements ParameterizedRowMapper<OrderBean> {
		@Override
		public OrderBean mapRow(ResultSet rs, int rowNum)throws SQLException {
			OrderBean order =new OrderBean();
			order.setOrderId(rs.getString("order_id"));
			String userId=rs.getString("user_id");
			String proId=rs.getString("pro_id");
			String memerId=rs.getString("member_id");
			order.setProId(proId);
			order.setMemberId(memerId);
			order.setUserId(userId);
			order.setAppointTime(rs.getString("appoint_time"));
			if(null!=userId && !("").equals(userId)){
				UserBean user=getUserNameById(userId);
				if(user!=null){
					order.setUserName(user.getUserName());
				}
			}
			if(null!=memerId && !("").equals(memerId)){
				UserBean user=getUserNameById(memerId);
				if(user!=null){
					order.setMemberName(user.getUserName());
				}
			}
			if(null!=proId && !("").equals(proId)){
				Product pro=getProNameById(proId);
				if(pro!=null){
					order.setProName(pro.getProName());
				}
			}
			return order;
		}

		/** @Description: TODO
		 * @param proId
		 * @return  
		 * @return: Product
		*/
		
		private Product getProNameById(String proId) {
			String sql="SELECT pro_name AS proName FROM t_production  WHERE deleteFlag=0 AND  pro_id='"+proId+"'";
			return jdbcTemplate.queryForObject(sql, new ProductNameRowMapper());
		}
	}


	/** @Description: TODO
	 * @param shopType
	 * @return  
	 * @return: List<Shop>
	*/
	
	public List<Shop> getShops(int shopType) {
		
		String sql="SELECT shop_id, shop_name,shop_type,introduction,image_address,image_name FROM t_shop WHERE  deleteFlag=0 AND shop_type=?  LIMIT 0,7";
		Object[] args=new Object[]{shopType};
		return jdbcTemplate.query(sql, args, new ShopsRowMapper());
	}
	/** @Description: TODO
	 * @return  
	 * @return: List<Shop>
	*/
	
	public List<Shop> getShops() {
		String sql="SELECT shop_id, shop_name,shop_type,introduction,image_address,image_name FROM t_shop WHERE  deleteFlag=0 ";
		return jdbcTemplate.query(sql,  new ShopsRowMapper());
	}
	private class ShopsRowMapper implements ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)throws SQLException {
			Shop shop =new Shop();
			String shopId=rs.getString("shop_id");
			shop.setShopId(shopId);
			shop.setShopName(rs.getString("shop_name"));
			shop.setIntroduction(rs.getString("introduction"));
			shop.setImageAddress(rs.getString("image_address"));
			shop.setImageName(rs.getString("image_name"));
			shop.setShopType(rs.getInt("shop_type"));
			return shop;
		}
	}


	/* (non-Javadoc)
	 * @see com.shxt.cme.modules.IDao#findWithPage(org.springframework.data.domain.Pageable, java.lang.Object, com.shxt.cme.domain.User, java.lang.String[])
	 */
	@Override
	public Page<Shop> findWithPage(Pageable pageable, Shop t, User user,
			String... str) {
		String shopType=str[0];
		String sql="SELECT shop_id, shop_name,shop_type,introduction,image_address,image_name FROM t_shop WHERE  deleteFlag=0 AND shop_type="+shopType;
		return queryForPage(sql.toString(), pageable,new ShopsRowMapper(), null);
	}

	/** @Description: 得到产品详情
	 * @param proId
	 * @return  
	 * @return: Product
	*/
	
	public Product getProductiondetail(String proId) {
		String sql="SELECT pro_id,pro_name,pro_price,dis_price,introduction,shop_id,image_address,image_name "
				+ "FROM t_production WHERE deleteFlag=0 and pro_id='"+proId+"'";
		return queryForObject(sql, null, new ProductdetailRowMapper());
	}

	private class ProductdetailRowMapper implements ParameterizedRowMapper<Product> {
		@Override
		public Product mapRow(ResultSet rs, int rowNum)throws SQLException {
			Product product =new Product();
			String proId=rs.getString("pro_id");
			if(null!=proId && !("").equals(proId)){
				List<Member> members=getMemberNameByProId(proId);
				product.setMemberName(members);
				Shop shop=getShopQQByProId(proId);
				if(null!=shop){
					product.setShopQQ(shop.getShopQq());
				}
			}
			product.setProId(proId);
			product.setProPrice(rs.getString("pro_price"));
			product.setProName(rs.getString("pro_name"));
			product.setDisPrice(rs.getString("dis_price"));
			//product.setProType(rs.getInt("pro_type"));
			product.setIntroduction(rs.getString("introduction"));
			product.setShopId(rs.getString("shop_id"));
			product.setImageAddress(rs.getString("image_address"));
			product.setImageName(rs.getString("image_name"));
			return product;
		}

		/** @Description: TODO
		 * @param proId
		 * @return  
		 * @return: Shop
		*/
		
		private Shop getShopQQByProId(String proId) {
			String sql="SELECT shop_qq FROM t_shop s LEFT JOIN t_production p ON s.shop_id=p.shop_id WHERE s.deleteFlag=0 AND p.deleteFlag=0 AND p.pro_id='"+proId+"'";
			return jdbcTemplate.queryForObject(sql, new ShopQQRowMapper());
		}

		/** @Description: TODO
		 * @param proId
		 * @return  
		 * @return: List<Member>
		*/
		
		private List<Member> getMemberNameByProId(String productId) {
			/*String sql="SELECT DISTINCT m.member_id,m.member_name " +
					"FROM t_member m LEFT JOIN " +
					"t_shop s ON m.merchont_id=s.merchont_id LEFT JOIN " +
					"t_production p ON p.shop_id=s.shop_id " +
					"WHERE m.deleteFlag=0 AND s.deleteFlag=0 AND p.deleteFlag=0 and '"+proId+"'";
			*/
			String sql="SELECT DISTINCT m.member_id,member_name FROM t_member m LEFT JOIN t_pmrelation p ON p.member_id=m.member_id WHERE p.deleteFlag=0 AND m.deleteFlag=0 AND   p.pro_id='"+productId+"'";
			return jdbcTemplate.query(sql, new MemberNameRowMapper());
		}
	}

	/**
	 * @Description: TODO
	 * @param productId
	 * @return  
	 * @return: List<Member>
	 */
	public List<Member> getMemberByProduct(String productId){
		/*String sql="SELECT DISTINCT m.member_id,m.member_name,m.introduction,m.image_address,m.image_name,m.member_type " +
				"FROM t_member m LEFT JOIN " +
				"t_shop s ON m.merchont_id=s.merchont_id LEFT JOIN " +
				"t_production p ON p.shop_id=s.shop_id " +
				"WHERE m.deleteFlag=0 AND s.deleteFlag=0 AND p.deleteFlag=0 and '"+productId+"'";
		*/
		String sql="SELECT DISTINCT m.member_id,member_name,introduction ,image_address,image_name FROM t_member m LEFT JOIN t_pmrelation p ON p.member_id=m.member_id WHERE p.deleteFlag=0 AND m.deleteFlag=0 AND   p.pro_id='"+productId+"'";
		return jdbcTemplate.query(sql, new MemberRowMapper());
	}
	
	/**
	 * 
		* @Project:  美丽频道    
		* @author：   ASus
		* @class： MemberRowMapper   
		* @Description:   类描述  TODO
		* @date： 2015-7-27 下午1:08:30 
		* @version： 1.0
	 */
	private class MemberRowMapper implements ParameterizedRowMapper<Member> {
		@Override
		public Member mapRow(ResultSet rs, int rowNum)throws SQLException {
			Member member =new Member();
			member.setMemberId(rs.getString("member_id"));
			member.setMemberName(rs.getString("member_name"));
			member.setIntroduction(rs.getString("introduction"));
			member.setImageAddress(rs.getString("image_address"));
			member.setImageName(rs.getString("image_name"));
			//member.setMemberType(rs.getInt("member_type"));
			return member;
		}
	}
	
	/**
	 * 
		* @Project:  美丽频道    
		* @author：   ASus
		* @class： MemberNameRowMapper   
		* @Description:   类描述  TODO
		* @date： 2015-7-27 下午1:08:42 
		* @version： 1.0
	 */
	private class MemberNameRowMapper implements ParameterizedRowMapper<Member> {
		@Override
		public Member mapRow(ResultSet rs, int rowNum)throws SQLException {
			Member member =new Member();
			member.setMemberId(rs.getString("member_id"));
			member.setMemberName(rs.getString("member_name"));
			return member;
		}
	}
	
	/**
	 * 
		* @Project:  美丽频道    
		* @author：   ASus
		* @class： ShopQQRowMapper   
		* @Description:   类描述  TODO
		* @date： 2015-7-27 下午1:08:47 
		* @version： 1.0
	 */
	private class ShopQQRowMapper implements ParameterizedRowMapper<Shop> {
		@Override
		public Shop mapRow(ResultSet rs, int rowNum)throws SQLException {
			Shop shop =new Shop();
			shop.setShopQq(rs.getString("shop_qq"));
			return shop;
		}
	}

	/** @Description: TODO
	 * @param pageable
	 * @param object
	 * @return  
	 * @return: Page<Shop>
	*/
	public Page<Shop> findWithPageByName(Pageable pageable, Object object) {
		String shopName=(String)object;
		StringBuffer sql=new StringBuffer();
		sql.append(" SELECT shop_id, shop_name,shop_type,introduction,image_address,image_name FROM t_shop WHERE  deleteFlag=0 ");
		if(null!=shopName && !("").equals("shopName")){
			sql.append(" AND shop_name like '%"+shopName+"%' ");
		}
		return queryForPage(sql.toString(), pageable,new ShopsRowMapper(), null);
	}

	/** @Description: 预订 产品
	 * @param order
	 * @param user 
	 * @return  
	 * @return: int
	*/
	
	public int reserveProduct(OrderBean order, User user) {
		String orderId=DbUtils.getKey();
		String appointTime=order.getAppointTime();
		String orderPrice=order.getOrderPrice();
		String proId=order.getProId();
		String memberId=order.getMemberId();
		String userId=user.getUserId();
		String createrKey=user.getUserId();
		String createDate=DbUtils.getTime();
		
		String sql="insert into t_order(order_id,appoint_time,order_price,pro_id,member_id,user_id,createrKey,createDate,deleteFlag) " +
				" values (?,?,?,?,?,?,?,?,?)  ";
		
		Object[] args=new Object[]{orderId,appointTime,orderPrice,proId,memberId,userId,createrKey,createDate,0};
		
		int i=this.update(sql, args);
		
		return i;
	}

	/** @Description: TODO
	 * @param proId
	 * @param user
	 * @return  
	 * @return: int
	*/
	
	public int collectionProduction(String proId, User user) {
		
		String collectionId=DbUtils.getKey();
		String userId=user.getUserId();
		String createrKey=user.getUserId();
		String createDate=DbUtils.getTime();
		
		String sql="insert into t_collection(collection_id,user_id,pro_id,createKey,createDate,deleteFlag) " +
				" values (?,?,?,?,?,?)  ";
		
		Object[] args=new Object[]{collectionId,userId,proId,createrKey,createDate,0};
		
		int i=this.update(sql, args);
		
		
		
		return 0;
	}
	
}
