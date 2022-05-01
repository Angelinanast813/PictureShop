package com.nastenko.gallery.dao;

import java.util.List;

import com.nastenko.gallery.domain.Function;
import com.nastenko.gallery.domain.Role;
import com.nastenko.gallery.domain.User;

public interface PrivilegeDao {

	User findUser(String username, String password);

	List<Role> findUserRoles(User user);

	List<Function> findRoleFunctions(Role role);

}
