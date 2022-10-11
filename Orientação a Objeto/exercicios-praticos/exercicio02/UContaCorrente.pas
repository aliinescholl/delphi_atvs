unit UContaCorrente;

interface

uses
  Winapi.Windows;

type
  TConta = class
  private
    FNumConta, FNomeCliente: String;
    FSaldo: Double;
    showmessage: TObject;
    function GetNomeCliente: String;
    function GetNumConta: String;
    function GetSaldo: Double;
    procedure SetNomeCliente(const Value: String);
    procedure SetNumConta(const Value: String);
    procedure SetSaldo(const Value: Double);

  public
    function AlterarNome(const aNome:String) : String;
    function Dep�sito : Double;
    function Saque : Double;

    property numCOnta: String read GetNumConta write SetNumConta;
    property Cliente: String read GetNomeCliente write SetNomeCliente;
    property Saldo: Double read GetSaldo write SetSaldo;

    constructor Create(const aNumConta: String; const aNomeCliente: String; const aSaldo: Currency = 0);
  end;

implementation

{ TConta }

function TConta.AlterarNome(const aNome:String) : String;
begin
  Cliente := aNome ;
  result  := Cliente;
end;


constructor TConta.Create(const aNumConta: String; const aNomeCliente: String; const aSaldo: Currency = 0);
begin
   FnumConta    := aNumCOnta;
   FNomeCliente := aNomeCliente;
   FSaldo       := aSaldo;
end;


function TConta.Dep�sito: Double;
var
  ValorDeposito : Double;
  xResposta     : String;
begin
  if ValorDeposito>0 then
  begin
    saldo  := saldo + ValorDeposito;
    result := saldo
  end
  else
     xResposta := 'Valor inv�lido';
end;


function TConta.Saque: Double;
var
  ValorSacado : Double;
  xResposta   : String;
begin
if (saldo<0) or (saque>saldo) then
  begin
    saldo  := saldo - ValorSacado;
    result := saldo;
  end
else
    xResposta := 'Saldo insuficiente';
  end;


function TConta.GetNomeCliente: String;
begin
  result := FNomeCliente;
end;

function TConta.GetNumConta: String;
begin
  result := FNumConta;
end;

function TConta.GetSaldo: Double;
begin
  result := FSaldo;
end;

procedure TConta.SetNomeCliente(const Value: String);
begin
  FNomeCliente := value;
end;

procedure TConta.SetNumConta(const Value: String);
begin
  FNumConta := Value;
end;

procedure TConta.SetSaldo(const Value: Double);
begin
  FSaldo := Value;
end;

end.
