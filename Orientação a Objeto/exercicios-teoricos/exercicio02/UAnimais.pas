unit UAnimais;

interface

type
  TEnumANimal = (stCachorro, stGato, stPassaro);
  //TObject primeira classe do delphi toda classe herda dela
  TAnimal = class //classe abstrata ou base
  private
    FPatas: Byte;

    function GetPatas: Byte;
    procedure SetPatas(const aValue: Byte);

  public
    //metodo abstrato
    //virtual abstract são as filhas que terão implemntação
    //virtual é utilizado com abstract, os dois precisam estar juntos
    function RetornarSom: String; virtual; abstract;
    property Patas: Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;//sobrescrito
  end;

  TGato = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
  private
  public
    constructor Create;
    function RetornarSom: String; override;
  end;

implementation

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  FPatas := 4;
end;

function TCachorro.RetornarSom: String;
begin
  Result := 'au au';
end;

{ TGato }

constructor TGato.Create;
begin
  FPatas := 4;
end;

function TGato.RetornarSom: String;
begin
  Result := 'miau';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  FPatas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'piu';
end;

end.
