unit UConcreteObserver_Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UNotificacao, System.Classes, UObserver;

type
  TFrame1 = class(TFrame, IObserver)
    Label1: TLabel;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Atualizar(aNOtificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TFrame1 }

procedure TFrame1.Atualizar(aNOtificacao: TNotificacao);
var
  xTextoLog: String;
begin
  xTextoLog := Format ('Uma opera��o de %s de %.2f foi adicionada',
                [aNotificacao.Operacao, aNotificacao.Valor]);

  Memo1.Lines.Add(xTextoLog);
end;

end.
