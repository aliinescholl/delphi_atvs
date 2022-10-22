unit UAluno;

interface

type
  TArray =  array[1..2] of double;
  TAluno = class
    private
    FMatricula : String;
    FNome : String;
    FNotas : TArray;
    FNotaTrabalho : Double;
    function GetMatricula: String;
    function GetNome: String;
    procedure SetMatricula(const Value: String);
    procedure SetNome(const Value: String);
    function GetNotas: TArray;
    function GetNotaTrabalho: Double;
    procedure SetNotas(const Value: TArray);
    procedure SetNotaTrabalho(const Value: Double);

    public
    property Matricula : String    read GetMatricula    write SetMatricula;
    property Nome : String         read GetNome         write SetNome;
    property Notas : TArray        read GetNotas        write SetNotas;
    property NotaTrabalho : Double read GetNotaTrabalho write SetNotaTrabalho;

    function CalcularMedia(const aNota1 : Double;
                           const aNota2 : Double;
                           const aNota3 : Double) : Double;
    function ResultadoFinal : Double;

  end;

implementation

{ TAluno }



function TAluno.CalcularMedia(const aNota1 : Double;
                              const aNota2 : Double;
                              const aNota3 : Double): Double;
begin

end;

function TAluno.GetMatricula: String;
begin
  result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  result := FNome;
end;

function TAluno.GetNotas: TArray;
begin
  result := FNotas;
end;

function TAluno.GetNotaTrabalho: Double;
begin
  result := FNotaTrabalho;
end;

function TAluno.ResultadoFinal: Double;
begin

end;

procedure TAluno.SetMatricula(const Value: String);
begin
  FMatricula := value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAluno.SetNotas(const Value: TArray);
begin
  FNotas := Value;
end;

procedure TAluno.SetNotaTrabalho(const Value: Double);
begin
  FNotaTrabalho := Value;
end;

end.
