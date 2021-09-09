import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-pessoas-grid',
  templateUrl: './pessoas-grid.component.html',
})
export class PessoasGridComponent implements OnInit {

  @Input() pessoas: [];

  constructor() { }

  ngOnInit(): void {
  }

}
