unit tipos_dados_e_rtl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TForm1 = class(TForm)
    label1: TLabel;
    edt_str: TEdit;
    btn_num_int: TButton;
    btn_float: TButton;
    btn_data: TButton;
    btn_data_extenso: TButton;
    resultado: TLabel;
    procedure btn_num_intClick(Sender: TObject);
    procedure btn_floatClick(Sender: TObject);
    procedure btn_dataClick(Sender: TObject);
    procedure btn_data_extensoClick(Sender: TObject);
  private
    procedure ExibirData;
    procedure DataExtensa;
    procedure PontoFlutuante;
    procedure NumInteiro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TForm1.ExibirData;
var
  xdata_rec : TDateTime;
begin
  xdata_rec := StrToDate(edt_str.Text) + 2;
  resultado.Caption := (DateToStr(xdata_rec));
end;

procedure TForm1.DataExtensa;
var
  xdata_rec : TDateTime;
  myDay, myMonth, myYear: Word;
begin
   xdata_rec := StrToDate(edt_str.Text);
   DecodeDate(xdata_rec, myDay, myMonth, myYear);

   if myMonth = 1 then
     resultado.Caption := ('Dia ' + IntToStr(myYear) + ' janeiro ' + ' do ano de ' +IntToStr(myDay))

   else if myMonth = 2 then
     resultado.Caption := ('Dia ' + IntToStr(myYear) + ' fevereiro ' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 3 then
     resultado.Caption := ('Dia ' + IntToStr(myYear) + ' março' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 4 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' abril' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 5 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' maio' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 6 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' junho' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 7 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' julho' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 8 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' agosto' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 9 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' setembro' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 10 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' outubro' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 11 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' novembro' + ' do ano de ' + IntToStr(myDay))

   else if MyMonth = 12 then
        resultado.Caption := ('Dia ' + IntToStr(myYear) + ' dezembro' + ' do ano de ' + IntToStr(myDay))

   (*xdata_rec := StrToDate(edt_str.Text);
   resultado.Caption := 'Hoje é ' + FormatDateTime('dddddd', xdata_rec); também funciona*)

end;


procedure TForm1.PontoFlutuante;
var
  xvalor :Double;
begin
   xvalor := StrToFloat(edt_str.Text) + 10.5;
   resultado.Caption := (FloatToStr(xValor))
end;

procedure TForm1.NumInteiro;
var
  xvalor: Integer;
begin
  xvalor := (StrToInt(edt_str.Text)) + 10;
  resultado.Caption := IntToStr(xvalor);
end;


procedure TForm1.btn_dataClick(Sender: TObject);
begin
  ExibirData;
end;

procedure TForm1.btn_data_extensoClick(Sender: TObject);
begin
  DataExtensa;
end;

procedure TForm1.btn_floatClick(Sender: TObject);
begin
  PontoFlutuante;
end;

procedure TForm1.btn_num_intClick(Sender: TObject);
begin
  NumInteiro;
end;

end.
