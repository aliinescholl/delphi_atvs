unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnTabuada: TButton;
    procedure btnTabuadaClick(Sender: TObject);
  private
  procedure TabuadaCalcular;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnTabuadaClick(Sender: TObject);
begin
  TabuadaCalcular
end;

procedure TForm2.TabuadaCalcular;
var
  xArq : TextFile;
  i, n: integer;
begin
  try
    //faz o arquivo tabuada.txt
    AssignFile(xArq, 'Tabuada.txt');
    //cria o arquivo na raiz do projeto
    Rewrite(xArq);

    n := StrToIntDef(edtNumero.Text, 0);

    //Grava uma linha no arquivo
    WriteLn(xArq, '+--Resultado--+');

    for i := 1 to 10 do
      begin
        //Grava uma linha da tabuada no arquivo
        WriteLn(xArq, '|', i, ' x ', n, ' = ', (i*n), ' |');
      end;

      WriteLn(xArq, '+-------------+');
      ShowMessage('Tabuada gravada com sucesso!')

  finally
    //fecha o arquivo
    CloseFile(xArq);
  end;
end;
end.
