package com.algaworks.algamoney.api.service;

import com.algaworks.algamoney.api.model.Pessoa;
import com.algaworks.algamoney.api.repository.PessoaRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PessoaService {

    @Autowired
    private PessoaRepository pessoaRepository;

    public Optional<Pessoa> atualizar(Pessoa pessoa, Long codigo){

        Optional<Pessoa> pessoaSalva = buscarPessoaPeloCodigo(pessoa, codigo);

        return pessoaSalva;
    }

    public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo) {
        pessoaRepository.findById(codigo).map(p -> {
            p.setAtivo(ativo);
            return pessoaRepository.save(p);
        });
    }

    private Optional<Pessoa> buscarPessoaPeloCodigo(Pessoa pessoa, Long codigo) {
        return pessoaRepository.findById(codigo).map(p -> {
                p.setNome(pessoa.getNome());
                p.setAtivo(pessoa.getAtivo());
                p.setEndereco(pessoa.getEndereco());
                return pessoaRepository.save(p);
            });
    }
}
