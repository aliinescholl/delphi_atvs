unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    lblMemoriaRam: TLabel;
    lblTamanhoTela: TLabel;
    lbltamanhoHD: TLabel;
    lblprocessador: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Exibir;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Exibir;
end;

procedure TForm1.Exibir;
begin
  if ComboBox1.Items[ComboBox1.ItemIndex] = 'Dell' then
  begin
    lblTamanhoTela.Caption := 'Tela de 14 polegadas';
    lblMemoriaRam.Caption  := '3GB DDR3';
  end
  else if ComboBox1.Items[ComboBox1.ItemIndex] = 'Apple' then
  begin
    lblTamanhoTela.Caption := '11.6 polegadas';
    lblMemoriaRam.Caption  := '4GB DDR3';
  end;

  if ComboBox1.Items[ComboBox1.ItemIndex] = 'Dell' then
  begin
    lblprocessador.Caption := 'Intel Core i5';
    lbltamanhoHD.Caption   := '1 TB';
  end
  else if ComboBox1.Items[ComboBox1.ItemIndex] = 'Apple' then
  begin
    lblprocessador.Caption := 'Intel Core i7';
    lbltamanhoHD.Caption   := '500 gb';
  end;
end;

end.
