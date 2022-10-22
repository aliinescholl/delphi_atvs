unit Ufrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UElevador, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnAndarElevador: TButton;
    scrollbar: TScrollBar;
    label1: TLabel;
    btnDefinir: TButton;
    edtTotalAndares: TEdit;
    Label2: TLabel;
    edtLimitePessoas: TEdit;
    Shape1: TShape;
    Shape2: TShape;
    edtAndarAtual: TEdit;
    aaa: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    btnEntrar: TButton;
    btnSair: TButton;
    procedure btnAndarElevadorClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnDefinirClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    Felevador: TElevador;
    procedure Elevador;
    procedure VisualElevador;
    procedure DefinirValores;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Felevador := TElevador.Create(10, 10);
end;


procedure TForm1.DefinirValores;
begin
  Felevador.TotalAndares := StrToInt(edtTotalAndares.text);
  Felevador.Limite       := StrToInt(edtLimitePessoas.text);

  showmessage('Definido com sucesso!');

  edtTotalAndares.Clear;
  edtLimitePessoas.Clear;
end;


procedure TForm1.Elevador;
var
  xAndar: Integer;
begin
  xAndar  := StrToInt(edtAndarAtual.text);

  Felevador.AndarAtual := xAndar;
  Felevador.Escolher(xAndar);
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Felevador);
end;


procedure TForm1.VisualElevador;
var
  xPasso, xSetAndar : Double;

begin
  xPasso    := Felevador.TotalAndares / 100;
  xSetAndar := 100 - (Felevador.AndarAtual / xPasso);

  scrollbar.Position := Trunc(xsetAndar);
end;


procedure TForm1.btnAndarElevadorClick(Sender: TObject);
begin
  Elevador;
  VisualElevador;
  label3.caption := Felevador.Listar;
end;


procedure TForm1.btnDefinirClick(Sender: TObject);
begin
  DefinirValores;
end;

procedure TForm1.btnEntrarClick(Sender: TObject);
begin
  Felevador.Entrar;
  label3.caption := Felevador.Listar;
end;

procedure TForm1.btnSairClick(Sender: TObject);
begin
  Felevador.Sair;
  label3.caption := Felevador.Listar;
end;

end.
