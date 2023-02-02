unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UConcreteSubject,
  UConcreteObserver_Historico, UConcreteObserver_Saldo, UConcreteObserver_Log;

type
  TForm1 = class(TForm)
    Frame11: TFrame1;
    Frame21: TFrame2;
    Frame31: TFrame3;
    Frame41: TFrame4;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Frame41.AdicionarObserver(Frame11);
  Frame41.AdicionarObserver(Frame31);
  Frame41.AdicionarObserver(Frame21);
end;

end.
