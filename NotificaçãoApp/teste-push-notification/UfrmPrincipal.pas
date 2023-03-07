unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, UClasses.MyNotification, System.Notification,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure SetNotification(const aTitle, aMessage: string);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

{ TForm1 }

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  SetNotification('Testando','Tá funcionando');
end;

procedure TForm1.SetNotification(const aTitle, aMessage: string);
begin
var
  XNotifiCenter:= TNotificationCenter.Create(nil);
var
  xNotifiCation:= XNotifiCenter.CreateNotification;
try
  if XNotifiCenter.Supported then
  begin
    try
      xNotifiCation.AlertBody:= aMessage;
      xNotifiCation.Title:= aTitle;
      xNotifiCation.EnableSound:= true;
      xNotifiCenter.PresentNotification(xNotification);
    finally
      xNotifiCation.Free;
    end;
  end;
finally
  xNotifiCenter.Free;
end;
end;

end.
