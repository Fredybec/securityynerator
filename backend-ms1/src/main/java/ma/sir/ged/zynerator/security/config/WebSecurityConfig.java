package ma.sir.ged.zynerator.security.config;

import ma.sir.ged.zynerator.security.common.AuthoritiesConstants;
import ma.sir.ged.zynerator.security.jwt.AuthEntryPointJwt;
import ma.sir.ged.zynerator.security.jwt.AuthTokenFilter;
import ma.sir.ged.zynerator.security.service.facade.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableMethodSecurity
// (securedEnabled = true,
// jsr250Enabled = true,
// prePostEnabled = true) // by default
public class WebSecurityConfig { // extends WebSecurityConfigurerAdapter {
    @Autowired
    UserService userDetailsService;

    @Autowired
    private AuthEntryPointJwt unauthorizedHandler;

    @Bean
    public AuthTokenFilter authenticationJwtTokenFilter() {
        return new AuthTokenFilter();
    }

    //  @Override
//  public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
//    authenticationManagerBuilder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
//  }
//
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();

        authProvider.setUserDetailsService(userDetailsService);
        authProvider.setPasswordEncoder(passwordEncoder());

        return authProvider;
    }

//  @Bean
//  @Override
//  public AuthenticationManager authenticationManagerBean() throws Exception {
//    return super.authenticationManagerBean();
//  }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
        return authConfig.getAuthenticationManager();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//  @Override
//  protected void configure(HttpSecurity http) throws Exception {
//    http.cors().and().csrf().disable()
//      .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
//      .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
//      .authorizeRequests().antMatchers("/api/auth/**").permitAll()
//      .antMatchers("/api/test/**").permitAll()
//      .anyRequest().authenticated();
//
//    http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);
//  }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.securityContext((securityContext) -> securityContext.requireExplicitSave(false));
        http.csrf(csrf -> csrf.disable())
                .exceptionHandling(exception -> exception.authenticationEntryPoint(unauthorizedHandler))
                .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(auth -> auth
//                        .requestMatchers("/actuator/health").permitAll()
//                        .requestMatchers("/actuator/info").permitAll()
//                        .requestMatchers("/api/open/translation/**").permitAll()
//                        .requestMatchers("/login").permitAll()
//                        .requestMatchers("/api/admin/").hasAnyAuthority(AuthoritiesConstants.ADMIN)
//                        .anyRequest().authenticated()
                                .requestMatchers("/login").permitAll()
                                .requestMatchers("/actuator/health").permitAll()
                                .requestMatchers("/actuator/info").permitAll()
                                .requestMatchers("/api/open/translation/**").permitAll()
                                .requestMatchers("/api/admin/login").permitAll()
                                .requestMatchers("/api/agent/login").permitAll()
                                .requestMatchers("/api/admin/**").hasAnyAuthority(AuthoritiesConstants.ADMIN)
                                .requestMatchers("/api/agent/").hasAnyAuthority(AuthoritiesConstants.AGENT)
                                .anyRequest().authenticated()
//          auth.requestMatchers("/login").permitAll()
//                  .requestMatchers("/api/auth/**").permitAll()
//                  .requestMatchers("/error").permitAll()
//              .requestMatchers("/api/test/**").hasAnyAuthority(String.valueOf(ERole.ROLE_USER))

                );

        http.authenticationProvider(authenticationProvider());

        http.addFilterBefore(authenticationJwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);

        return http.build();
    }
}
