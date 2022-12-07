unit LendoArquivo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    edtArquivo: TEdit;
    mmArquivo: TMemo;
    btnLeitura: TButton;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnLeituraClick(Sender: TObject);
var
  xArq   : TextFile;
  xLinha : String;
begin
  mmArquivo.Clear;
  try
    AssignFIle(xArq, edtArquivo.Text);

    {$I-} //desativa a diretiva de input

    Reset(xArq);

    //aqui recebe o resultado se abriu ou n�o o arquivo
    if ioResult <> 0 then
      raise Exception.Create('Erro na abertura do arquivo');

    {$i+}// ativa a diretiva de input

    while (not eof(xArq)) do
    begin
      ReadLn(xArq,xLinha);

      mmArquivo.Lines.Add(xLinha);
    end;
  finally
    CloseFile(xArq);
  end;
end;

end.
