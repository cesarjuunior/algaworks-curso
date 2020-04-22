package com.algaworks.algamoney.api.service;

import com.algaworks.algamoney.api.model.Lancamento;
import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.LancamentoRepository;
import com.algaworks.algamoney.api.repository.PessoaRepository;
import com.algaworks.algamoney.api.service.exception.PessoaInexistenteOuInativaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class LancamentoService {

    @Autowired
    private LancamentoRepository lancamentoRepository;

    @Autowired
    private PessoaRepository pessoaRepository;

    public Lancamento salvar(Lancamento lancamento) {
        Pessoa pes = new Pessoa();
        pessoaRepository.findById(lancamento.getPessoa().getCodigo()).map(p -> {
            pes.setNome(p.getNome());
            pes.setAtivo(p.getAtivo());
            pes.setCodigo(p.getCodigo());
            pes.setEndereco(p.getEndereco());
            return pes;
        });
        if(pes == null || !pes.getAtivo()){
            throw new PessoaInexistenteOuInativaException();
        }

        return lancamentoRepository.save(lancamento);
    }
}
