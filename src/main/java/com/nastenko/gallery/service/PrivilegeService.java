package com.nastenko.gallery.service;

import java.util.List;

import com.nastenko.gallery.domain.Function;
import com.nastenko.gallery.domain.Role;
import com.nastenko.gallery.domain.User;

public interface PrivilegeService {
	User login(String username, String password);

	List<Role> findUserRoles(User user);

	List<Function> findRoleFunctions(Role role);
}
