program kafedrabd;

uses
  Vcl.Forms,
  fmMain in 'fmMain.pas' {Main},
  fmDM in 'fmDM.pas' {DM: TDataModule},
  Rucovod in 'TableRucovod\Rucovod.pas' {TBrucovod},
  EditRucovod in 'TableRucovod\EditRucovod.pas' {fmEditRucovod},
  AddRucovod in 'TableRucovod\AddRucovod.pas' {fmAddRucovod},
  Tema in 'TableTema\Tema.pas' {TBtema},
  EditTema in 'TableTema\EditTema.pas' {fmEditTema},
  AddTema in 'TableTema\AddTema.pas' {fmAddTema},
  Zapros1 in 'Zapros\Zapros1.pas' {fmZapros1},
  Zapros2 in 'Zapros\Zapros2.pas' {fmZapros2},
  GruppStudent in 'TableGruppStudent\GruppStudent.pas' {TBGruppStudent},
  AddGrupp in 'TableGruppStudent\AddGrupp.pas' {fmAddGrupp},
  EditStudent in 'TableGruppStudent\EditStudent.pas' {fmEditStudent},
  EditGrupp in 'TableGruppStudent\EditGrupp.pas' {fmEditGrupp},
  AddStudent in 'TableGruppStudent\AddStudent.pas' {fmAddStudent},
  Zapros3 in 'Zapros\Zapros3.pas' {fmZapros3},
  Otchet2 in 'Otchet\Otchet2.pas' {fmOtchet2},
  Otchet3 in 'Otchet\Otchet3.pas' {fmOtchet3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
