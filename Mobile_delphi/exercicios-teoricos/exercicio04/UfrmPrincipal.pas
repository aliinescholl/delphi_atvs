unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Effects, UJogoVelha;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    lyt_tab1: TLayout;
    img_capa: TImage;
    lyt_jogadores: TLayout;
    FlowLayout1: TFlowLayout;
    rect_banana: TRectangle;
    rect_morango: TRectangle;
    img_banana: TImage;
    Img_morango: TImage;
    Layout2: TLayout;
    Rect_deu_velha: TRectangle;
    Rect_parabens: TRectangle;
    Rect_game_over: TRectangle;
    Rect_fundo_tab2: TRectangle;
    Lytab2: TLayout;
    Image1: TImage;
    FlowLayout2: TFlowLayout;
    Layout3: TLayout;
    Rect_1_1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Rect_1_2: TRectangle;
    Rect_1_3: TRectangle;
    Rect_2_1: TRectangle;
    Rect_2_2: TRectangle;
    Rect_2_3: TRectangle;
    Rect_3_1: TRectangle;
    Rect_3_2: TRectangle;
    rect_3_3: TRectangle;
    Img_1_2: TImage;
    Img_1_1: TImage;
    Img_1_3: TImage;
    Img_2_1: TImage;
    Img_2_3: TImage;
    Img_2_2: TImage;
    Img_3_3: TImage;
    Img_3_2: TImage;
    Img_3_1: TImage;
    Img_computador: TImage;
    Img_jogador: TImage;
    Rect_fim_de_jogo: TRectangle;
    Rect_progresso: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure OnClickJogador(Sender: TObject);
    procedure OnclickSelectionJogador(Sender: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FJogoVelha : TJogoVelha;
    procedure MarcarJogadaComputador(const aCoordenadas:String);
    procedure ReiniciarJogo;
    procedure AnimarFimJogo(const aRetangulo:TRectangle);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.AnimarFimJogo(const aRetangulo: TRectangle);
begin
  rect_fim_de_jogo.Visible := True;
  rect_progresso.Width  := 20;

  aRetangulo.Opacity := 0;
  aRetangulo.Visible := Visible;

  TThread.CreateAnonymousThread(procedure
  begin
    TThread.Synchronize(nil, procedure
    begin
       aRetangulo.AnimateFloat('Opacity', 1, 0.3);
    end);
  end).Start;

  TThread.CreateAnonymousThread(procedure
  begin
    Sleep(450);

    while Rect_progresso.Width < Rect_fim_de_jogo.Width do
    begin
      TThread.Synchronize(nil, procedure
      begin
        Rect_progresso.AnimateFloat('width', Rect_progresso.Width + 50, 0.3);
      end);

      Sleep(150)
    end;

   TThread.Synchronize(nil, procedure
   begin
     aRetangulo.Visible := False;
     Rect_fim_de_jogo.Visible := False;

     Self.ReiniciarJogo
   end);
  end).Start;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FJogoVelha.DisposeOf;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FJogoVelha := TJogoVelha.Create;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabPosition.None;
  TabControl1.ActiveTab   := TabItem2;
end;

procedure TForm1.MarcarJogadaComputador(const aCoordenadas: String);
var
  xLinha,  xCOluna : Byte;
  xRetangulo : Trectangle;
  xImagem :TImage;
begin
  xLinha  := StrToInt(Copy(aCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(aCoordenadas, 3, 1));

  FJogoVelha.RealizarJogada(TJogador.tpCpu,
                            xLinha,
                            xColuna );

  xRetangulo := TRectangle(FindComponent('rect_' + aCoordenadas));

  if Assigned(xRetangulo) then
  begin
    xImagem         := TImage(FindComponent('img_' + aCoordenadas));
    xImagem.Bitmap  := img_computador.Bitmap;
    xImagem.Visible := True;

    xImagem.Hittest  := False;
  end;
end;

procedure TForm1.OnclickSelectionJogador(Sender:Tobject);
var
  xPosicao : Integer;
  XRetangulo, xJogador : String;
begin
  TabControl1.ActiveTab := TabItem1;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao   := Pos('_', xRetangulo);
  xJOgador   := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if xJogador = 'morango' then
  begin
    img_jogador.Bitmap    := img_morango.Bitmap;
    img_computador.Bitmap := img_banana.Bitmap;
  end
  else
  begin
    img_jogador.Bitmap    := img_banana.Bitmap;
    img_computador.Bitmap := img_morango.Bitmap;
  end;
end;

procedure TForm1.ReiniciarJogo;
var
  i : Integer;
begin
  TabControl1.ActiveTab := TabItem2;

  for i := 0 to Pred(Self.ComponentCount) do
  begin
    if (Self.Components[i] is TRectangle) and (Self.Components[i].Tag > 0) then
      TRectangle(Self.Components[i]).HitTest := True;

    if (Self.Components[i] is TImage) and (Self.Components[i].Tag > 0) then
      TImage(Self.Components[i]).Bitmap := nil;
  end;

  FJogoVelha.ReiniciarJogo;
end;

procedure Tform1.OnClickJogador(Sender: TObject);
var
  xPosicao : Integer;
  xCoordenadas : String;
  xLinha, xColuna : Byte;
  xRetangulo : TRectangle;
  xImagem : TImage;
begin
  xRetangulo := (Sender as TRectangle);

  xPosicao := Pos('_', xRetangulo.Name);
  xCoordenadas := Copy(xRetangulo.Name, xPosicao + 1, Length(xRetangulo.Name));

  xLinha  := StrToInt(Copy(xCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(xCoordenadas, 3, 1));

  FJogoVelha.RealizarJogada( TpPlayer1,
                            xLinha,
                            xColuna );
  xImagem         := TImage(FindComponent('img_' + xCoordenadas));
  xImagem.Bitmap  := img_jogador.Bitmap;
  xImagem.Visible := True;

  xRetangulo.HitTest := False;

  FJogoVelha.VerificarFimDoJogo(TJogador.tpPlayer1);

  if (not FJogoVelha.FimJogo) and (fJogoVelha.Jogadas < 5) then
  begin
    xCoordenadas := FJogoVelha.JogadaComputador;
    Self.MarcarJogadaComputador(xCoordenadas);

    FJogoVelha.VerificarFimDoJogo(TJogador.tpCpu);

    if FJogoVelha.FimJogo then
      Self.AnimarFimJogo(Rect_game_over);
  end
  else
  begin
    if (FJogoVelha.Jogadas < 5) or (FJogoVelha.FimJogo) then
      Self.AnimarFimJogo(rect_parabens)
    else
      Self.AnimarFimJogo(rect_deu_velha);
  end;

end;
end.
