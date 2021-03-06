package com.nastenko.gallery.filter;

import com.nastenko.gallery.domain.Function;
import com.nastenko.gallery.domain.Role;
import com.nastenko.gallery.domain.User;
import com.nastenko.gallery.service.PrivilegeService;
import com.nastenko.gallery.service.impl.PrivilegeServiceImpl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebFilter(filterName="PrivilegeFilter" ,urlPatterns="/manage/*")
public class PrivilegeFilter implements Filter {
	private PrivilegeService ps = new PrivilegeServiceImpl();
	public void init(FilterConfig filterConfig) {

	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request;
		HttpServletResponse response;
		try {
			request = (HttpServletRequest) req;
			response = (HttpServletResponse) res;
		} catch (ClassCastException e) {
			throw new ServletException(e);
		}
		
		User user = (User) request.getSession().getAttribute("user");
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/op/login.jsp");
			return;
		}
		Set<Function> functions = new HashSet<Function>();
			
		List<Role> roles = ps.findUserRoles(user);
			
		for(Role role:roles){
			List<Function> funs = ps.findRoleFunctions(role);
			functions.addAll(funs);
		}
		
		String uri = request.getRequestURI();
		String queryString = request.getQueryString();
		String fullUri = uri+(queryString==null?"":("?"+queryString));
			
		boolean hasPermission = false;
		for(Function fun:functions){
			if(fullUri.startsWith(fun.getUri())){
				hasPermission = true;
				break;
			}
		}
			
		if(!hasPermission){
			response.getWriter().write("Немає доступу");
			return;
		}
		chain.doFilter(request, response);
	}

	public void destroy() {

	}

}
