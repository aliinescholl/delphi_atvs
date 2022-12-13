unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Ani, FMX.ListBox;

type
  TForm1 = class(TForm)
    imgcartaz: TImage;
    Image1: TImage;
    Image2: TImage;
    lytgenero: TLayout;
    Image3: TImage;
    lblfilter: TLabel;
    Layout1: TLayout;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Image6: TImage;
    Layout2: TLayout;
    Image7: TImage;
    Label2: TLabel;
    Layout3: TLayout;
    Image8: TImage;
    Label3: TLabel;
    lytmenuGeneros: TLayout;
    Rectangle1: TRectangle;
    Layout5: TLayout;
    Image9: TImage;
    ListBox1: TListBox;
    FloatAnimation1: TFloatAnimation;
  private
    procedure LoadMenu;
    procedure OpenMenu (ind:Boolean);
    procedure SetupMenu(Item : TListBoxItem; texto : String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

procedure TForm1.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os gêneros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Disponível para download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Ação');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asiáticos');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Comédia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mistério');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
end;

procedure TForm1.OpenMenu(ind: Boolean);
begin
  ListBox1.Index := -1;

  ListBox1.ScrollToItem(ListBox1.ItembyIndex(0));

  if ind then
  begin
    lytmenuGeneros.Visible := True;
    lytmenuGeneros.Tag     := 1;
    lytgenero.AnimateFloat('Opacity', 0, 0.2);
    FloatAnimation1.Inverse := False;
  end
  else
  begin
    lytmenuGeneros.Tag := 0;
    lytmenuGeneros.AnimateFloat('Opacity', 1, 0.4);
    FloatAnimation1.Inverse := True;
  end;

  FloatAnimation1.Start;
end;

procedure TForm1.SetupMenu(Item: TListBoxItem; texto: String);
begin

end;

end.
