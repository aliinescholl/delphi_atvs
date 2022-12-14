unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TForm1 = class(TForm)
    VertScrollBox1: TVertScrollBox;
    Rectangle1: TRectangle;
    LblTitulo: TLabel;
    lytProduto: TLayout;
    lblReaisProduto: TLabel;
    lblProduto: TLabel;
    lblCentavosProduto: TLabel;
    lytEnvio: TLayout;
    lblTituloEnvio: TLabel;
    lblReaisEnvio: TLabel;
    lblCentavosEnvio: TLabel;
    Line1: TLine;
    lytParcelas: TLayout;
    lblTituloParcelas: TLabel;
    lblReaisParcelas: TLabel;
    lblCentavosParcelas: TLabel;
    lblParcelasParcelas: TLabel;
    lyt_botao_compra: TLayout;
    Rectangle2: TRectangle;
    SpeedButton1: TSpeedButton;
    lyt_compra_ok: TLayout;
    Image1: TImage;
    lyt_loading_compra: TLayout;
    Rec_fundo: TRectangle;
    Rec_barra: TRectangle;
    Label1: TLabel;
    rect_fundo_branco: TRectangle;
    lyt_detalhes: TLayout;
    Rectangle3: TRectangle;
    circuloEndereco: TCircle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
