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
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    {$IFDEF MSWINDOWS}
    procedure MenuClick(Sender : TObject);
    {$ELSE}
    procedure MenuTap(Sender:TObject; const Point : TpointF);
    {$ENDIF}
    procedure lytgeneroClick(Sender: TObject);
    procedure Image9Click(Sender: TObject);
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

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
  if lytmenugeneros.Tag = 0 then
     lytmenugeneros.Visible := False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  imgCartaz.Position.x := 0;
  imgCartaz.Position.y := 0;
  imgcartaz.Width      := 676;
  imgcartaz.Height     := 450;

  Self.LoadMenu;
  Self.OpenMenu(False);
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  Self.OpenMenu(False);
end;

procedure TForm1.LoadMenu;
begin
  ListBox1.Items.Clear;

  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Todos os g�neros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Dispon�vel para download');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'A��o');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Adolescente');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Anime');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Asi�ticos');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Brasileiros');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Com�dia');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Drama');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Esportes');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Mist�rio');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Novelas');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Suspense');
  Self.SetupMenu(TListBoxItem.Create(ListBox1), 'Terror');
end;

procedure TForm1.lytgeneroClick(Sender: TObject);
begin
  Self.OpenMenu(True);
end;

{$IFDEF MSWINDOWS}
procedure TForm1.MenuClick(Sender: TObject);
begin
   lblfilter.Text := TListBoxItem(Sender).Text;
   Self.OpenMenu(False);
end;

{$ELSE}
procedure TForm1.MenuTap(Sender: TObject; const Point: TpointF);
begin
  lblfilter.Text := TListBoxItem(Sender).Text;
  Self.OpenMenu(False);
end;

{$ENDIF}
procedure TForm1.OpenMenu(ind: Boolean);
begin
  ListBox1.Index := -1;

  ListBox1.ScrollToItem(ListBox1.ItembyIndex(0));

  if ind then
  begin
    lytmenuGeneros.Visible := True;
    lytmenuGeneros.Tag     := 1;
    lytmenuGeneros.AnimateFloat('Opacity', 0, 0.2);
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
  Item.Text := Texto;
  Item.StyledSettings := Item.StyledSettings
   - [TStyledSetting.Size, TStyledSetting.FontColor, TStyledSetting.Other];
   Item.TextSettings.HorzAlign := TTextAlign.Center;
   Item.HitTest := True;

   {$IFDEF MSWINDOWS}
    Item.OnClick := Self.MenuClick;
   {$ELSE}
    Item.OnTap  := Self.MenuTap;
   {$ENDIF}
   if ListBox1.Items.Count > 0 then
   begin
     Item.FontColor := $FFC3C3C3;
     Item.FOnt.Size := 20;
     Item.Height    := 80;
   end
   else
   begin
     Item.FontColor := $FFFFFFFF;
     Item.Font.Size := 25;
     Item.Height    := 110;
   end;

    ListBox1.AddObject(item);
end;

end.
