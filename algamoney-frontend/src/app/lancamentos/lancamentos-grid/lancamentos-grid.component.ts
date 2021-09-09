import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-lancamentos-grid',
  templateUrl: './lancamentos-grid.component.html',
})
export class LancamentosGridComponent implements OnInit {

  @Input() lancamentos = [];

  constructor() { }

  ngOnInit(): void {
  }

}
