package com.nastenko.gallery.service.impl;

import java.util.List;

import com.nastenko.gallery.dao.PrivilegeDao;
import com.nastenko.gallery.domain.Function;
import com.nastenko.gallery.domain.Role;
import com.nastenko.gallery.domain.User;
import com.nastenko.gallery.dao.impl.PrivilegeDaoImpl;
import com.nastenko.gallery.service.PrivilegeService;

public class PrivilegeServiceImpl implements PrivilegeService {

	private PrivilegeDao dao=new PrivilegeDaoImpl();
	@Override
	public User login(String username, String password) {
		return dao.findUser(username,password);
	}
	@Override
	public List<Role> findUserRoles(User user) {
		
		return dao.findUserRoles(user);
	}
	@Override
	public List<Function> findRoleFunctions(Role role) {
		return dao.findRoleFunctions(role);
	}
}
