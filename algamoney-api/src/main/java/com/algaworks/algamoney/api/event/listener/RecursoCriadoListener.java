package com.algaworks.algamoney.api.event.listener;

import com.algaworks.algamoney.api.event.RecursoCriadoEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletResponse;
import java.net.URI;

public class RecursoCriadoListener implements ApplicationListener<RecursoCriadoEvent> {

    @Override
    public void onApplicationEvent(RecursoCriadoEvent recursoCriadoEvent) {
        HttpServletResponse response = recursoCriadoEvent.getResponse();
        Long cogido = recursoCriadoEvent.getCodigo();

        adicionarHeaderLocation(response, cogido);
    }

    private void adicionarHeaderLocation(HttpServletResponse response, Long cogido) {
        URI uri = ServletUriComponentsBuilder.fromCurrentRequestUri().path("/{codigo}")
                .buildAndExpand(cogido).toUri();
        response.setHeader("Location", uri.toASCIIString());
    }
}
