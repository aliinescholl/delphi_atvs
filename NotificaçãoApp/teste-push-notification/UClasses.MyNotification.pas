unit UClasses.MyNotification;

interface

uses
  System.Notification;

type
  TMyNotification = class
  private
    fNotifiCenter: TNotificationCenter;
  public
    procedure SetNotification(const aTitle, aMessage: string);
    procedure SetFireDateNotification(const aName, aTitle, aMessage: string; aTime: TDateTime);
    procedure CancelNotification(const aNotificationName: string);
    procedure CancelAllNotification();

    constructor Create();
    destructor Destroy; override;
  end;


implementation

{ TMyNotification }

procedure TMyNotification.CancelAllNotification;
begin
  fNotifiCenter.CancelAll;
end;

procedure TMyNotification.CancelNotification(const aNotificationName: string);
begin
  fNotifiCenter.CancelNotification(aNotificationName);
end;

constructor TMyNotification.Create();
begin
  fNotifiCenter:= TNotificationCenter.Create(Nil);
end;

destructor TMyNotification.Destroy;
begin
  fNotifiCenter.Free;
end;

procedure TMyNotification.SetFireDateNotification(const aName, aTitle,
  aMessage: string; aTime: TDateTime);
begin
  if fNotifiCenter.Supported then
  begin
    var vNotification:= fNotifiCenter.CreateNotification;
    try
      vNotification.Name:= aName;
      vNotification.AlertBody:= aMessage;
      vNotification.Title:= aTitle;
      vNotification.EnableSound:= true;
      vNotification.FireDate:= aTime;
      fNotifiCenter.PresentNotification(vNotification);
    finally
      vNotification.Free;
    end;
  end;
end;

procedure TMyNotification.SetNotification(const aTitle, aMessage: string);
begin
  if fNotifiCenter.Supported then
  begin
    var vNotification:= fNotifiCenter.CreateNotification;
    try
      vNotification.AlertBody:= aMessage;
      vNotification.Title:= aTitle;
      vNotification.EnableSound:= true;
      fNotifiCenter.PresentNotification(vNotification);
    finally
      vNotification.Free;
    end;
  end;
end;
end.
