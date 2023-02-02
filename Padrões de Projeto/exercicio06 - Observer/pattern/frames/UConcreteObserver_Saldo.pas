unit UConcreteObserver_Saldo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UObserver,
  UNotificacao;

type
  TFrame2 = class(TFrame, IObserver)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblCreditos: TLabel;
    lblDebitos: TLabel;
    lblSaldo: TLabel;
  private
    FCreditos: Real;
    FDebitos: Real;
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TFrame2 }

procedure TFrame2.Atualizar(aNotificacao: TNotificacao);
var
  xSaldo: Real;
begin
  if aNotificacao.Operacao = 'Crédito' then
    FCreditos := FCreditos + aNotificacao.Valor
  else if aNotificacao.Operacao = 'Débito' then
    FDebitos := FDebitos + aNotificacao.Valor;

  xSaldo := FCreditos - FDebitos;

  lblCreditos.Caption := FormatFloat('###,##0.00', FCreditos);
  lblDebitos.Caption  := FormatFloat('###,##0.00', FDebitos);
  lblSaldo.Caption    := FormatFloat('###,##0.00', xSaldo);
end;

end.
