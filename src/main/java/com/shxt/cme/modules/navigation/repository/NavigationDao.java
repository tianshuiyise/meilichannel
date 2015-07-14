package com.shxt.cme.modules.navigation.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.shxt.framework.persistence.jdbc.support.BaseDao;
import com.shxt.cme.domain.Navigation;

@Repository
public class NavigationDao extends BaseDao {

	public Map<String, List<Navigation>> findAll() {

		String sql = " SELECT MenuItmKey,MenuName,ParentMenuCode,MenuURL,MenuSequence,Depth "
				+ "  FROM t_gt_MenuItm "
				+ "  WHERE MenuType = '0' and DeleteFlg ='0' order by ParentMenuCode,Depth,MenuSequence ";

		return this.jdbcTemplate.query(sql,
				new ResultSetExtractor<Map<String, List<Navigation>>>() {

					@Override
					public Map<String, List<Navigation>> extractData(
							ResultSet rs) throws SQLException,
							DataAccessException {
						Map<String, List<Navigation>> navMaps = Maps
								.newHashMap();
						while (rs.next()) {
							String functionCode = rs
									.getString("parentMenuCode");
							Navigation nav = navRowMapper(rs);
							List<Navigation> navs = null;
							if (navMaps.containsKey(functionCode)) {
								navs = navMaps.get(functionCode);
								navs.add(nav);
							} else {
								navs = Lists.newArrayList();
								navs.add(nav);
								navMaps.put(functionCode, navs);
							}
						}
						return navMaps;
					}
				});
	}

	public Map<String, List<Navigation>> findAllCs() {

		String sql = " SELECT MenuItmKey,MenuName,ParentMenuCode,MenuURL,MenuSequence,Depth "
				+ "  FROM t_gt_MenuItm "
				+ "  WHERE MenuType = '1' and MenuURL is not null and DeleteFlg ='0' order by ParentMenuCode,Depth,MenuSequence ";

		return this.jdbcTemplate.query(sql,
				new ResultSetExtractor<Map<String, List<Navigation>>>() {

					@Override
					public Map<String, List<Navigation>> extractData(
							ResultSet rs) throws SQLException,
							DataAccessException {
						Map<String, List<Navigation>> navMaps = Maps
								.newHashMap();
						while (rs.next()) {
							String functionCode = rs
									.getString("parentMenuCode");
							Navigation nav = navRowMapper(rs);
							List<Navigation> navs = null;
							if (navMaps.containsKey(functionCode)) {
								navs = navMaps.get(functionCode);
								navs.add(nav);
							} else {
								navs = Lists.newArrayList();
								navs.add(nav);
								navMaps.put(functionCode, navs);
							}
						}
						return navMaps;
					}
				});
	}

	private Navigation navRowMapper(ResultSet rs) throws SQLException {
		Navigation nav = new Navigation();
		nav.setMenuKey(rs.getString("menuItmKey"));
		nav.setMenuName(rs.getString("menuName"));
		nav.setDepth(rs.getString("depth"));
		nav.setDenuSequence(rs.getString("menuSequence"));
		nav.setMenuUrl(rs.getString("menuUrl"));
		nav.setParentMenuCode(rs.getString("parentMenuCode"));
		return nav;
	}

}
