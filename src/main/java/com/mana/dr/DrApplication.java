package com.mana.dr;

import org.ocpsoft.rewrite.servlet.RewriteFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.ErrorPageRegistrar;
import org.springframework.boot.web.server.ErrorPageRegistry;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.faces.webapp.FacesServlet;
import javax.servlet.DispatcherType;
import javax.sql.DataSource;
import java.util.EnumSet;

@SpringBootApplication
@EnableJpaAuditing
public class DrApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(DrApplication.class);
	}
	public static void main(String[] args) {

		SpringApplication.run(DrApplication.class, args);
	}

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public ServletRegistrationBean servletRegistrationBean() {
		FacesServlet servlet = new FacesServlet();
		return new ServletRegistrationBean(servlet, "*.jsf");
	}

	@Bean
	public FilterRegistrationBean rewriteFilter() {
		FilterRegistrationBean rwFilter = new FilterRegistrationBean(new RewriteFilter());
		rwFilter.setDispatcherTypes(EnumSet.of(DispatcherType.FORWARD, DispatcherType.REQUEST,
				DispatcherType.ASYNC, DispatcherType.ERROR));
		rwFilter.addUrlPatterns("/*");
		return rwFilter;
	}

	private static class MyErrorPageRegistrar implements ErrorPageRegistrar {



		@Override
		public void registerErrorPages(ErrorPageRegistry registry) {
			registry.addErrorPages(new ErrorPage(HttpStatus.BAD_REQUEST, "error/400"));
		}

	}

}


