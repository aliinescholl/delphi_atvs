unit UInterface;

interface

type
  INotebook = interface
    ['{0E974A22-E6E6-4E6A-9F8B-238D79487142}']
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRAM: String;
  end;

  IDesktop = interface
    ['{4A13A51A-EB73-49CE-A185-D8708688F185}']
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHD: String;
  end;

  IFactoryMarca = interface
    ['{2B30351C-E159-4228-910D-E331BFCB496F}']
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop : IDesktop;
  end;

implementation

end.
