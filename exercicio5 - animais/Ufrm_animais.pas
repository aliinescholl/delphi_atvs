unit Ufrm_animais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TAnimal = (tpCachorro, tpPassaro, tpGato, tpPeixe);
    TForm2 = class(TForm)
    btn: TButton;
    animal: TComboBox;
    Label1: TLabel;
    caixa: TMemo;
    procedure btnClick(Sender: TObject);

  private
    procedure QueAnimalSoueu;

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnClick(Sender: TObject);
begin
  {case Animal.ItemIndex of
  0: //cachorro
  begin
    caixa.Lines.Add('Sou um cachorro');
  end;

  1: //passaro
  begin
    caixa.Lines.Add('Sou um p�ssaro');
  end;

  2: //gato
  begin
    caixa.Lines.Add('Sou um gato');
  end;

  3: //peixe
  begin
    caixa.Lines.Add('Eu sou um peixe e falo blu blu blu')
  end;
  else
  begin
    caixa.Lines.Add('N�o foi definido nenhum animal');
  end;
 end;}
 QueAnimalSouEu
end;

procedure TForm2.QueAnimalSoueu;
var
  xFrase: String;
begin
  case TAnimal(animal.ItemIndex) of
    tpCachorro:
      begin
        xFrase := ('Eu sou um cachorro')
      end;

    tpPassaro:
      begin
        xFrase := ('Eu sou um p�ssaro')
      end;

    tpGato:
      begin
        xFrase := ('eu sou um gato')
      end;

    tpPeixe:
    begin
        xFrase :=('eu sou um peixe'+ #13#10 + 'blu blu blu')
    end;

    else
    begin
      xFrase := ('N�o foi definido nenhum animal')
    end;
  end;
  caixa.Lines.Add(xFrase);
end;

end.

