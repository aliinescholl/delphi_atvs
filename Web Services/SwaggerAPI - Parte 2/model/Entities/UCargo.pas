unit UCargo;

interface

uses
    GBSwagger.Model.Attributes;

type
 TCargo = class
  private
    FID: Integer;
    FDescricao: String;
  public
  [SwagProp('Cargo Id', True)]
    property Id:Integer read FID write FID;

  [SwagProp('Descri��o cargo', True)]
    property Nome: String read FDescricao write FDescricao;
end;
  TAPIError = class
    Private
      Ferror: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.
