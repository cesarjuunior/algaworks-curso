import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {PessoasGridComponent} from './pessoas-grid/pessoas-grid.component';
import {CadastroPessoaComponent} from './pessoas-cadastro/cadastro-pessoa.component';
import {PessoasComponent} from './pessoas-pesquisa/pessoas.component';
import {InputTextModule} from 'primeng/inputtext';
import {ButtonModule} from 'primeng/button';
import {TableModule} from 'primeng/table';
import {PaginatorModule} from 'primeng/paginator';
import {TooltipModule} from 'primeng/tooltip';
import {InputTextareaModule} from 'primeng/inputtextarea';
import {CalendarModule} from 'primeng/calendar';
import {SelectButtonModule} from 'primeng/selectbutton';
import {DropdownModule} from 'primeng/dropdown';
import {InputNumberModule} from 'primeng/inputnumber';
import {InputMaskModule} from 'primeng/inputmask';
import {MessageModule} from 'primeng/message';
import {SharedModule} from '../shared/shared.module';



@NgModule({
  declarations: [
    PessoasGridComponent,
    CadastroPessoaComponent,
    PessoasComponent
  ],
  imports: [
    CommonModule,

    InputTextModule,
    ButtonModule,
    TableModule,
    PaginatorModule,
    TooltipModule,
    InputTextareaModule,
    CalendarModule,
    SelectButtonModule,
    DropdownModule,
    InputNumberModule,
    InputMaskModule,
    MessageModule,

    SharedModule
  ],
  exports:[
    CadastroPessoaComponent,
    PessoasComponent
  ]
})
export class PessoasModule { }
