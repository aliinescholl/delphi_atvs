unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TDayTemperatures = array[1..31] of Integer;

    TForm1 = class(TForm)
    edt_dia: TEdit;
    edt_temp: TEdit;
    mmHistorico: TMemo;
    btn_gravar: TButton;
    btn_consult: TButton;
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_consultClick(Sender: TObject);
  private
    FDayTemperatures: TDayTemperatures;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btn_gravarClick(Sender: TObject);
var
  xDia: Integer;
  xTemperatura: Integer;
begin
  xDia := StrtoIntDef(edt_Dia.Text, 0);
  xTemperatura := StrToIntDef(edt_temp.Text, 0);

  FdayTemperatures[xDia] := xTemperatura;
end;

procedure TForm1.btn_consultClick(Sender: TObject);
var
  i:Integer;
begin
   mmHistorico.Lines.Clear;

   for i := 1 to Length(FDayTemperatures) do
     begin
       if FDayTemperatures[i] > 0 then
        mmhistorico.Lines.Add('Dia ' + IntTostr(i) +
                              ' fez ' + IntToStr(FDayTemperatures[i]) +
                              ' graus.');
     end;
end;

end.
