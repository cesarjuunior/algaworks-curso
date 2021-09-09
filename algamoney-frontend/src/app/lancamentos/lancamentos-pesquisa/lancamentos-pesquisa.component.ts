import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-lancamentos-pesquisa',
  templateUrl: './lancamentos-pesquisa.component.html',
  styleUrls: ['./lancamentos-pesquisa.component.css']
})
export class LancamentosPesquisaComponent implements OnInit {

  constructor() { }
  title = 'algamoney-frontend';
  lancamentos =  [
    {tipo: 'Despesa', descricao: 'Compra de pão', dataVencimento: new Date(2021, 10, 10) , dataPagamento: new Date(2021, 10, 9), valor: 4.55, pessoa: 'Pararia do José'},
    {tipo: 'Receita', descricao: 'Dividendos', dataVencimento: new Date(2021, 10, 10), dataPagamento: null, valor: 4.55, pessoa: 'Pararia do José'},
    {tipo: 'Despesa', descricao: 'Compra de roupa', dataVencimento: new Date(2021, 10, 10), dataPagamento: new Date(2021, 10, 9), valor: 4.55, pessoa: 'Pararia do José'},
    {tipo: 'Receita', descricao: 'Salário', dataVencimento: new Date(2021, 10, 10), dataPagamento: null, valor: 6000, pessoa: 'Pararia do José'},
    {tipo: 'Despesa', descricao: 'Compra de comida', dataVencimento: new Date(2021, 10, 10), dataPagamento: new Date(2021, 10, 9), valor: 4.55, pessoa: 'Pararia do José'},
    {tipo: 'Receita', descricao: 'Patrocínio', dataVencimento: new Date(2021, 10, 10), dataPagamento: null, valor: 4.55, pessoa: 'Pararia do José'}];

  ngOnInit(): void {
  }
}
