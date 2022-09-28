unit masculinoOufeminino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TNomePessoas = record
      Nome: String;
      Sexo: String;
    end;

    TForm1 = class(TForm)
    memo_lista: TMemo;
    btn_pessoa: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure btn_pessoaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    FNomePessoas: array of TNomePessoas;

    procedure HomemOuMulher;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  xNomePessoa: TNomePessoas;
  i: Integer;
begin
  SetLength(FNomePessoas, 4);

  for i := 0 to 3 do
  begin
    xNomePessoa.Nome := inputbox('Informar', 'Qual Seu Nome?', '');
    xNomePessoa.Sexo := AnsiLowerCase(inputbox('Informar', 'Qual seu Sexo? (masculino/feminino)', ''));
    FNomePessoas[I]  := xNomePessoa;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
  xNomePessoa: TNomePessoas;
  xcontHomem, xcontMulher :Integer;
begin
  xcontMulher := 0;
  xcontHomem  := 0;

  memo_lista.Lines.Add('Nome - Sexo');

  for I := 0 to Length(FNomePessoas)-1 do
  begin
    xNomePessoa := FNomePessoas[I];

    if xNomePessoa.Sexo ='feminino' then
    begin
      memo_lista.Lines.Add(xNomePessoa.Nome + ' - ' + 'Mulher');
      Inc(xContMulher)
    end

    else if xNomePessoa.Sexo ='masculino' then
    begin
      memo_lista.Lines.Add(xNomePessoa.Nome + ' - ' + 'Homem');
      Inc(xcontHomem)
    end;
  end;

  memo_lista.Lines.Add('No total são: ' + IntToStr(xcontMulher) +
                         ' mulheres e ' + IntToStr(xcontHomem) + ' homens')
end;

procedure TForm1.HomemOuMulher;
var
  aNome, aSexo : array of string;
  xcontHomem, i, xcontMulher :Integer;
begin
  SetLength(aNome, 4);
  SetLength(aSexo, 4);

  xcontMulher := 0;
  xcontHomem  := 0;
  memo_lista.Lines.Add('Nome - Sexo');

  for i := 0 to 3 do
    begin
      aNome[i] :=  inputbox('Informar', 'Qual Seu Nome?', '');
      aSexo[i] :=  AnsiLowerCase(inputbox('Informar', 'Qual seu Sexo? (masculino/feminino)', ''));

      if aSexo[i]='feminino' then
        begin
          memo_lista.Lines.Add(anome[i] + ' - ' + 'Mulher');
          Inc(xContMulher)
        end

      else if aSexo[i]='masculino' then
        begin
          memo_lista.Lines.Add(anome[i] + ' - ' + 'Homem');
          Inc(xcontHomem)
        end;

    end;

    memo_lista.Lines.Add('No total são: ' + IntToStr(xcontMulher) +
                         ' mulheres e ' + IntToStr(xcontHomem) + ' homens')

end;

procedure TForm1.btn_pessoaClick(Sender: TObject);
begin
  HomemOuMulher
end;

end.
