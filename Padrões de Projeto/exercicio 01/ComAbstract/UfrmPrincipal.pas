unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UInterface, Vcl.ExtCtrls,
  Vcl.WinXCtrls, Vcl.WinXPanels;

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
    CardPanel1: TCardPanel;
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

uses
  UDell, UApple;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Exibir;
end;

procedure TForm1.Exibir;
var
  xMarca : IFactoryMarca;
  xNotebook : INotebook;
  xDesktop : IDesktop;
begin
  if ComboBox1.Items[ComboBox1.ItemIndex] = 'Dell' then
    xMarca := TDell.Create
  else if ComboBox1.Items[ComboBox1.ItemIndex] = 'Apple' then
    xMarca := TApple.Create;

  xNotebook := xMarca.ConsultarNotebook;
  xDesktop  := xMarca.ConsultarDesktop;

  lblTamanhoTela.Caption := xNotebook.BuscarTamanhoTela;
  lblMemoriaRam.Caption  := xNotebook.BuscarMemoriaRAM;

  lblprocessador.Caption := xDesktop.BuscarNomeProcessador;
  lbltamanhoHD.Caption   := xDesktop.BuscarTamanhoHD;
end;

end.
