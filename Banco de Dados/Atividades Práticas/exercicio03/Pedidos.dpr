program Pedidos;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  UdmPedidos in 'UdmPedidos.pas' {dmPedidos: TDataModule},
  UfrmCompradores in 'UfrmCompradores.pas' {FrmCompradores};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPedidos, dmPedidos);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
