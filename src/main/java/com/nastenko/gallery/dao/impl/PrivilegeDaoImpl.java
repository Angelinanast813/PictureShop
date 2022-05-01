package com.nastenko.gallery.dao.impl;

import java.sql.SQLException;
import java.util.List;

import com.nastenko.gallery.dao.PrivilegeDao;
import com.nastenko.gallery.domain.Function;
import com.nastenko.gallery.domain.Role;
import com.nastenko.gallery.domain.User;
import com.nastenko.gallery.utils.C3P0Util;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

public class PrivilegeDaoImpl implements PrivilegeDao {

	private QueryRunner qr = new QueryRunner(C3P0Util.getDataSource());

	@Override
	public User findUser(String username, String password) {

		try {
			return qr.query(
					"select * from users where username=? and password=?",
					new BeanHandler<User>(User.class), username, password);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Role> findUserRoles(User user) {
		try {
			return qr.query("select * from roles where id in (select r_id from user_role where u_id=?)", new BeanListHandler<Role>(Role.class), user.getId());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public List<Function> findRoleFunctions(Role role) {
		try {
			return qr.query("select * from functions where id in (select f_id from role_function where r_id=?)", new BeanListHandler<Function>(Function.class), role.getId());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

}
