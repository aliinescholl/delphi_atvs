unit InfoComputador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtnomePC: TEdit;
    edtNomeUser: TEdit;
    edtDirSistema: TEdit;
    edtDirWindows: TEdit;
    edtpastaTemp: TEdit;
    edtVersaoWindows: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnInformacoes: TButton;
    procedure btnInformacoesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UInfoPC;

{$R *.dfm}

procedure TForm2.btnInformacoesClick(Sender: TObject);
begin
  edtnomePC.Text        := TInfoPc.ComputerName;
  edtNomeUser.Text      := TInfoPC.UserName;
  edtDirSistema.Text    := TInfoPC.SystemDirectory;
  edtDirWindows.Text    := TInfoPC.WindowsDirectory;
  edtpastaTemp.Text     := TInfoPC.TempPath;
  edtVersaoWindows.Text := TInfoPC.VersionEx;
  end;

end.
