package com.mana.dr.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

/**
 * Created by JavaDeveloperZone on 13-11-2017.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier(value = "datasource")
    private DataSource dataSource;

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .authoritiesByUsernameQuery("select u.user_name as username, u.role as role FROM user u where user_name=?")
                .usersByUsernameQuery("select user_name as username,password as password,1 FROM user  where user_name=?").passwordEncoder(passwordEncoder());
    }

    @Bean(name="passwordEncoder")
    public PasswordEncoder passwordEncoder()
    {
        return new BCryptPasswordEncoder();
    }


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable()
                .authorizeRequests()
                    .antMatchers("/").authenticated()
                    .antMatchers("/user/**").access("hasRole('ROLE_SUPERUSER') or hasRole('ROLE_ADMIN')")
                    .antMatchers("/patient/**").access("hasRole('ROLE_MANAGER') or hasRole('ROLE_USER')  or hasRole('ROLE_DOCTOR')  or hasRole('ROLE_SUPERUSER')")
                    .antMatchers("/error").permitAll()
                .and()
                    .formLogin()
                    .loginPage("/login").permitAll()
                    .loginProcessingUrl("/home")
                    .successForwardUrl("/")
                    .failureForwardUrl("/login")
                .and()
                .logout()
                    .invalidateHttpSession(true)
                    .clearAuthentication(true)
                    .deleteCookies()
                    .logoutSuccessUrl("/login")
                .and()
                .exceptionHandling()
                    .accessDeniedPage("/errors/403")
                    ;

    }


//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        // require all requests to be authenticated except for the resources
//        http.authorizeRequests().antMatchers("/javax.faces.resource/**")
//                .permitAll().anyRequest().authenticated().antMatchers("/test/**").permitAll();
//        // login
//        http.formLogin().loginPage("/login.xhtml").permitAll()
//                .failureUrl("/login.xhtml?error=true");
//        // logout
//        http.logout().logoutSuccessUrl("/login.xhtml");
//        // not needed as JSF 2.2 is implicitly protected against CSRF
//        http.csrf().disable();
//    }
//
//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder auth)
//            throws Exception {
//        auth.inMemoryAuthentication().withUser("user")
//                .password("user").roles("USER").and().withUser("admin")
//                .password("admin").roles("ADMIN");
//    }
}