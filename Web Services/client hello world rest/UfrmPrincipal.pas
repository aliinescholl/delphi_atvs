unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    btnHelloWorld: TButton;
    btnPingPong: TButton;
    Label1: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnHelloWorldClick(Sender: TObject);
    procedure btnPingPongClick(Sender: TObject);
  private
  procedure PingPong;
  procedure TratarResposta;
  procedure HelloWorld;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  SUCESSO = 200;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnHelloWorldClick(Sender: TObject);
begin
  Self.HelloWorld;
end;

procedure TForm1.btnPingPongClick(Sender: TObject);
begin
  PingPong;
end;

procedure TForm1.HelloWorld;
begin
  RESTClient1.BaseURL := 'http://localhost:9090/helloworld';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TForm1.PingPong;
begin
  RESTClient1.BaseURL := 'http://localhost:9090/ping';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TForm1.TratarResposta;
begin
  if RESTResponse1.StatusCode = SUCESSO then
    Label1.Caption := 'Resultado: ' + RESTResponse1.Content
  else
    label1.Caption := Format('Erro na requisição: Status(%d)',
      [RESTResponse1.StatusCode])
end;

end.
