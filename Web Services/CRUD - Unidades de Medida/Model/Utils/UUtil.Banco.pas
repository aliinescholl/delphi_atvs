unit UUtil.Banco;

interface

uses
  Firedac.Comp.Client,
  Firedac.Phys.MySQL,
  Firedac.DApt,
  Firedac.Stan.Def,
  Firedac.Stan.Async,
  Data.DB,
  DataSet.Serialize,
  System.SysUtils;


type
  TUtilBanco = class
    private
      class function Conexao: TFDConnection;
    public
      class function ExecutarConsulta(const aSQL: String): TFDQuery;
      class function AdicionarRegistro(const aTabela: String;
        const aJSON: String): Boolean;
      class function RemoverRegistro(const aTabela: String;
        const aIdentificador: Integer): Boolean;
  end;

implementation



{ TUtilBanco }

class function TUtilBanco.AdicionarRegistro(const aTabela,
  aJSON: String): Boolean;
const
  COMANDO_INSERT = 'INSERT INTO %s (%s) VALUES (%s)';

var
  i: integer;
  xMemTable: TFDMemTable;
  xQuery: TFDQuery;
  xColunas,
  xValores:String;
begin
  xQuery    := TFDQuery.Create(nil);
  xMemTable := TFDMemTable.Create(nil);
  try
    try
      xMemTable.LoadFromJSON(aJson);

      for i := 0 to Pred(xMemTable.FieldCount) do
      begin
        xColunas := xColunas + xMemTable.Fields[i].FieldName + ',';

        if xMemTable.Fields[i].DataType = ftFloat then
          xValores := xValores +
            StringReplace(FloatToSTr(xMemTable.Fields[i].AsFloat), ',', '.',
              [rfReplaceAll]) + ','
        else
          xValores := xValores + QuotedStr(xMemTable.Fields[i].AsString) + ',';
      end;
      xColunas := Copy(xColunas, 1, Length(xColunas)-1);
      xValores := Copy(xvalores, 1, Length(xValores)-1);

      with xQuery do
      begin
        Connection := Self.Conexao;
        SQL.Clear;
        SQL.Add(Format(COMANDO_INSERT, [aTabela, xColunas, xValores]));
        ExecSQL;
      end;

      result := True;
    except
     on E: Exception do
      raise Exception.Create(e.Message);
    end;
  finally
    FreeAndnil(xQuery);
    FreeAndNil(xMemTable);
  end;
end;

class function TUtilBanco.Conexao: TFDConnection;
var
  xDriver: TFDPhysMySQLDriverLink;
begin
  xDriver := TFDPhysMySQLDriverLink.Create(nil);
  result := TFDConnection.Create(nil);

  xDriver.VendorLib := ExtractFilePath(ParamStr(0)) + 'libmysql.dll';

  with result do
   begin
     DriverName  := 'MySQL';
     LoginPrompt := False;
     Params.Add('Database=api');
     Params.Add('User_Name=root');
     Params.Add('Password=root');
     Params.Add('Server=localhost');
     Params.Add('DriverID=MySQL');
     Open;
   end;
end;

class function TUtilBanco.ExecutarConsulta(const aSQL: String): TFDQuery;
var
  xQuery: TFDQuery;
begin
  xQuery := TFDQUERY.Create(nil);
  try
    xQuery.Connection := Self.Conexao;
    xQuery.Open(aSQL);

    result := xQuery;
  except
    on e:Exception do
      raise Exception.Create(e.Message);
  end;
end;

class function TUtilBanco.RemoverRegistro(const aTabela: String;
  const aIdentificador: Integer): Boolean;
const
  COMANDO_DELETE = 'DELETE FROM %s WHERE ID = %d';
var
  xQuery: TFDQuery;
begin
  xQuery := TFDQuery.Create(nil);
  try
    try
      with xQuery do
      begin
        Connection := Self.Conexao;
        SQL.Clear;
        SQL.Add(Format(COMANDO_DELETE,[aTabela, aIdentificador]));
        ExecSql;
      end;
      result := True;
    except
      on e:Exception do
       raise Exception.Create(e.message);
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.