unit UfrmCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    edtNome: TEdit;
    edtNascimento: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnCadastrar: TButton;
    btnListar: TButton;
    mmLista: TMemo;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
  private
    FArq : TextFile;
    FCodigo : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnCadastrarClick(Sender: TObject);
begin
  if (edtNome.Text <> '') and
     (edtNascimento.Text <> '') then
   begin
     Inc(FCodigo);
     WriteLn(FArq,  FCodigo.ToString, '|',
                    edtNome.Text, ' | ',
                    edtNascimento.Text, ' | ');

     edtNome.Clear;
     edtNascimento.Clear;
   end;
end;

procedure TForm2.btnListarClick(Sender: TObject);
var
  xNome, xLinha,
  xDataNascimento,
  xCodigo : String;
  i         : Integer;
begin
  mmLista.Clear;

  Reset(FArq);

  try
    while (not Eof(FArq)) do
      begin
        xCodigo := FCodigo.ToString;

        ReadLn(FArq, xLinha);

        i     := pos('|', xNome);
        xNome := copy(xLinha, 1, i-1);
        delete(xLinha, 1, i);

        i               := pos('|', xDataNascimento);
        xDataNascimento := copy(xLinha, 1, i-1);
        delete(xLinha, 1, i);

        i       := pos('|', xCodigo);
        xCodigo := copy(xLinha, 1, i-1);
        delete(xLinha, 1, i);

        mmLista.Lines.Add('Nome: ' + xNome);
        mmLista.Lines.Add('Data Nascimento' + xDataNascimento);
        mmLista.Lines.Add(IntToSTr(FCodigo));
      end;

  finally

  end;
end;

end.
