unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    btnPush: TButton;
    Memo1: TMemo;
    btnPop: TButton;
    btnPeek: TButton;
    btnTrimExcess: TButton;
    btnExtract: TButton;
    btnCount: TButton;
    btnCapacity: TButton;
    procedure btnPopClick(Sender: TObject);
    procedure btnExtractClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnPeekClick(Sender: TObject);
    procedure btnPushClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);

  private
    FPilha : TStack<String>;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  memo1.Lines.Add(FPilha.Capacity.ToString)
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  memo1.Lines.Add(FPilha.Count.ToString)
end;

procedure TForm1.btnExtractClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Extract)
end;

procedure TForm1.btnPeekClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Peek);
end;

procedure TForm1.btnPopClick(Sender: TObject);
begin
  Memo1.Lines.Add(FPilha.Pop);
end;

procedure TForm1.btnPushClick(Sender: TObject);
begin
  FPilha.Push(edit1.Text)
end;

procedure TForm1.btnTrimExcessClick(Sender: TObject);
begin
  FPilha.TrimExcess;
  Memo1.Lines.Add(FPilha.Capacity.ToString);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FPilha.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FPilha := TStack<String>.Create;
end;

end.
