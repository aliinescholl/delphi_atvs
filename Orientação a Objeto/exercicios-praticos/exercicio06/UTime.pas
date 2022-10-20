unit UTime;

interface

uses
  UJogador,  System.Generics.Collections;


type
  TTime = class
    private
      FNomeTime : String;
      FTecnico : String;
      FJogadores : TList<TJogador>;
      function getNomeTime: String;
      function getTecnico: String;
      procedure setNomeTime(const Value: String);
      procedure setTecnico(const Value: String);
      function getJogadores: TList<TJogador>;
      procedure setJogadores(const Value: TList<TJogador>);
    public
      FanoFundacao : TDate;
      property nomeTime : String           read getNomeTime  write setNomeTime;
      property tecnico : String            read getTecnico   write setTecnico;
      property jogadores : TList<TJogador> read getJogadores write setJogadores;
      constructor Create(aJogadores : TList<TJOgador>);
  end;

implementation


{ TTime }

constructor TTime.Create(aJogadores: TList<TJOgador>);
begin
  inherited create;

  FJogadores := aJogadores;
end;

function TTime.getJogadores: TList<TJogador>;
begin
  Result := FJogadores;
end;

function TTime.getNomeTime: String;
begin
  Result := FNomeTime;
end;

function TTime.getTecnico: String;
begin
  Result := FTecnico;
end;

procedure TTime.setJogadores(const Value: TList<TJogador>);
begin
  FJogadores := Value;
end;

procedure TTime.setNomeTime(const Value: String);
begin
  FNomeTime := Value;
end;

procedure TTime.setTecnico(const Value: String);
begin
  FTecnico := Value;
end;

end.

