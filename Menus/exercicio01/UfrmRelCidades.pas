unit UfrmRelCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet, UdmDados;

type
  TFormRelCidades = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    btnExportar: TButton;
    btnVisualizar: TButton;
    frxReport1: TfrxReport;
    QryCidade: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    DBLookupComboBox1: TDBLookupComboBox;
    frxDBDataset1: TfrxDBDataset;
    dtsLookupCidade: TDataSource;
    LookupCidade: TFDTable;
    QryEnderecos: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DtsCidade: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  procedure PrepararFiltro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelCidades: TFormRelCidades;

implementation

{$R *.dfm}

{ TFormRelCidades }

procedure TFormRelCidades.btnExportarClick(Sender: TObject);
var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format ('%s\RelatorioCidades.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;


procedure TFormRelCidades.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TFormRelCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
  QryCidade.Close;

  FormRelCidades := nil;
end;

procedure TFormRelCidades.FormCreate(Sender: TObject);
begin
  LookupCidade.Open;
end;

procedure TFormRelCidades.PrepararFiltro;
begin
  QryCidade.Close;
  QryEnderecos.close;

  QryCidade.ParamByName('IDCIDADE').AsInteger       := 0;
  QryEnderecos.ParamByName('IDCIDADEREF').AsInteger := 0;

  if DBLookupComboBox1.Text <> EmptyStr then
  begin
    QryCidade.ParamByName('IDCIDADE').AsInteger :=
       LookupCidade.FieldByName('city_id').AsInteger;

    QryEnderecos.ParamByName('IDCIDADEREF').AsInteger :=
       LookupCidade.FieldByName('city_id').AsInteger;
  end;

  QryCidade.Open;
    QryEnderecos.open;
end;

end.
