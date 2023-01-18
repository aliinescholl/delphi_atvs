unit UfrmAtores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxExportBaseDialog, frxExportPDF, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxDBSet, UdmDados;

type
  TFormRelActor = class(TForm)
    GroupBox1: TGroupBox;
    label1: TLabel;
    btnExportar: TButton;
    edtLastName: TEdit;
    btnVisualizar: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    FDQuery1: TFDQuery;
    frxPDFExport1: TfrxPDFExport;
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  procedure PrepararFiltro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelActor: TFormRelActor;

implementation

{$R *.dfm}

procedure TFormRelActor.btnExportarClick(Sender: TObject);
var
  xCaminho : String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format ('%s\RelatorioAtores.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TFormRelActor.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TFormRelActor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
  FDQuery1.Close;

  FormRelActor := Nil;
end;

procedure TFormRelActor.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('LASTNAME').AsString := '';

  if Trim(edtLastName.Text) <> EmptyStr then
    FDQuery1.ParamByName('LASTNAME').AsString := '%' + Trim(edtLastName.Text) + '%';
  FDQuery1.Open;
end;

end.