unit UProduto;

interface

uses
  Gbswagger.Model.Attributes;

type
  TProduto = class
    private
    [swagprop('produto id', true)]
    FId: integer;
    FDescricao: String;
    FUnidadeMedida: String;
    FPrecoVenda: Currency;
    public
    property Id: integer           read FId            write FId;
    property Descricao: String     read FDescricao     write FDescricao;
    property UnidadeMedida: String read FUnidadeMedida write FUnidadeMedida;
    property PrecoVenda:Currency   read FPrecoVenda    write FPrecoVenda;
  end;
   TAPIError = Class
     private
       Ferror: String;
     public
       property Error: String read FError write FError;
   End;

implementation

end.
