package com.algaworks.algamoney.api.cors;

import com.algaworks.algamoney.api.config.property.AlgaMoneyApiProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import reactor.netty.http.server.HttpServerResponse;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Component
@Order(Ordered.HIGHEST_PRECEDENCE)
public class CorsFilter implements Filter {

    @Autowired
    private AlgaMoneyApiProperty algaMoneyApiProperty;

    private String originPermitida = "http://localhost:8000";

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        response.setHeader("Access-Control-Allow-Origin", algaMoneyApiProperty.getOriginPermitida());
        response.setHeader("Access-Control-Allow-Credentials", "true" );

        if("OPTIONS".equals(request.getMethod()) && algaMoneyApiProperty.getOriginPermitida().equals(request.getHeader("Origin"))){
            response.setHeader("Access-Control-Allow-Methods", "POST, GET, DELETE, PUT, OPTIONS");
            response.setHeader("Access-Control-Allow-Headers", "Authorization, Content-Type, Accept");
            response.setHeader("Access-Control-Max-Age", "3600");
            response.setStatus(HttpServletResponse.SC_OK);
        }else{
            chain.doFilter(req,resp);
        }
    }
}
