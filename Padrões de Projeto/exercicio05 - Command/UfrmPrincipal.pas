unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UConcreteCommand;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mmProgramas: TMemo;
    mmVariaveis: TMemo;
    mmProcessos: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UReceiver, UInvoker;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xInvoker  : TInvoker;
  xReceiver : TReceiver;
begin
  xReceiver := TReceiver.Create;
  xInvoker  := TInvoker.Create;
  try
    xInvoker.Add(TProgramas.Create(xReceiver));

    xInvoker.Add(TProcessos.Create(xReceiver));

    xInvoker.Add(TVariaveisAmbiente.Create(xReceiver));

    xInvoker.ExtrairInformacoes;
  finally
     FreeAndNil(xInvoker);
     FreeAndNil(xReceiver);
  end;
  mmProgramas.Lines.LoadFromFile(GetCurrentDir + '\Programas.txt');
  mmVariaveis.Lines.LoadFromFile(GetCurrentDir + '\Variaveis.txt');
  mmProcessos.Lines.LoadFromFile(GetCurrentDir + '\Processos.txt');

end;

end.
