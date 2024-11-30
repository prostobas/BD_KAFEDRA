unit fmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Imaging.jpeg;

type
  TMain = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    byAbout: TMenuItem;
    byExit: TMenuItem;
    tb1: TMenuItem;
    Tb2: TMenuItem;
    tb3: TMenuItem;
    byzapros1: TMenuItem;
    byZapros2: TMenuItem;
    Otchet1: TMenuItem;
    Otchet2: TMenuItem;
    N7: TMenuItem;
    byZapros3: TMenuItem;
    procedure byExitClick(Sender: TObject);
    procedure byAboutClick(Sender: TObject);
    procedure Tb2Click(Sender: TObject);
    procedure tb1Click(Sender: TObject);
    procedure byzapros1Click(Sender: TObject);
    procedure byZapros2Click(Sender: TObject);
    procedure tb3Click(Sender: TObject);
    procedure Otchet1Click(Sender: TObject);
    procedure byZapros3Click(Sender: TObject);
    procedure Otchet2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses fmDM, Tema, Rucovod, Zapros1, Zapros2, GruppStudent, Zapros3, Otchet2,
  Otchet3;

procedure TMain.byExitClick(Sender: TObject);
begin
  Main.Close;
end;

procedure TMain.tb1Click(Sender: TObject);
begin
  TBrucovod:= TTBrucovod.Create(Application);
  TBrucovod.Show;
end;

procedure TMain.Tb2Click(Sender: TObject);
begin
  TBtema:= TTBtema.Create(Application);
  TBtema.Show;
end;

procedure TMain.tb3Click(Sender: TObject);
begin
     tbGruppStudent:= TtbGruppStudent.Create(Application);
     tbGruppStudent.Show;
end;
procedure TMain.byzapros1Click(Sender: TObject);
begin
    fmZapros1:= TfmZapros1.Create(Application);
    fmZapros1.show;
end;

procedure TMain.byZapros2Click(Sender: TObject);
begin
    fmZapros2:= TfmZapros2.Create(Application);
    fmZapros2.show;
end;


procedure TMain.byZapros3Click(Sender: TObject);
begin
    fmZapros3:= TfmZapros3.Create(Application);
    fmZapros3.show;
end;

procedure TMain.N7Click(Sender: TObject);
begin
   fmOtchet3:= TfmOtchet3.Create(Application);
    fmOtchet3.show;
end;

procedure TMain.Otchet2Click(Sender: TObject);
begin
    fmOtchet2:= TfmOtchet2.Create(Application);
    fmOtchet2.show;
end;

procedure TMain.Otchet1Click(Sender: TObject);
begin
   with DM do
   begin
     frxreport1.ShowReport();
   end;
end;

procedure TMain.byAboutClick(Sender: TObject);
begin
  Application.MessageBox('Автор программы:  Басов М. В. Группа: 20ВОА1','Информация о разработчике');
end;

end.
