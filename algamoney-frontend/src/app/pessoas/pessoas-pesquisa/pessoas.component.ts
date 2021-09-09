import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pessoas',
  templateUrl: './pessoas.component.html',
  styleUrls: ['./pessoas.component.css']
})
export class PessoasComponent implements OnInit {
  pessoas = [
    {nome: 'Cesar Augusto', cidade: 'Brasília', estado: 'DF', situacao: true},
    {nome: 'Gabigol', cidade: 'São Paulo', estado: 'SP', situacao: false},
    {nome: 'Bruno Henrique', cidade: 'Belo Horizonte', estado: 'MG', situacao: true},
    {nome: 'Rodigo Caio', cidade: 'Sorocaba', estado: 'SP', situacao: false},
    {nome: 'Vinicius Júnior', cidade: 'Rio de Janeiro', estado: 'RJ', situacao: true},
    {nome: 'Renê', cidade: 'Salvador', estado: 'BA', situacao: false},
    {nome: 'Paquetá', cidade: 'Brasília', estado: 'DF', situacao: true},

  ];

  constructor() { }

  ngOnInit(): void {
  }

}
