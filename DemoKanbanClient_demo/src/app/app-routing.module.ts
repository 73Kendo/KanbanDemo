import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { IssuesEditComponent } from './issues-edit/issues-edit.component';
import { IssuesViewComponent } from './issues-view/issues-view.component';
import { LoginComponent } from './login/login.component';

const routes: Routes = [
  { path: '', component: IssuesViewComponent },
  { path: 'issue/edit/:id', component: IssuesEditComponent },
  { path: 'login', component: LoginComponent },
];

//ng generate component issues-view
//ng generate component issues-edit

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
