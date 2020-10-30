package com.algaworks.algamoney.api.config.property;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("algamoney")
public class AlgaMoneyApiProperty {

    @Getter @Setter
    private String originPermitida = "http://localhost:8000";

    @Getter
    private final Seguranca seguranca = new Seguranca();

    public static  class Seguranca{
        @Getter @Setter
        private boolean enableHttps;
    }
}
