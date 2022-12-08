unit LendoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    mmLeitura: TMemo;
    btExecutar: TButton;
    XMLDocument1: TXMLDocument;
    procedure btExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btExecutarClick(Sender: TObject);
var
  xAplicacao, xExecutaveis, xExecutavel,
  xBibliotecas, xVersao, xDescricao, xBiblioteca :IXMLNode;
  xInfNo : IXMLNodeList;
  i: Integer;
begin
  mmLeitura.Clear;

  XMLDocument1.Active := True;

  //busca o n� principal do xml
  xAplicacao := XMLDocument1.DocumentElement;

  //busca o n� principal dos execut�veis
  xExecutaveis := xAplicacao.ChildNodes.FindNode('executaveis');

  //busca o n� onde est� a lista de bibliotecas
  xBibliotecas := xAplicacao.ChildNodes.FindNode('bibliotecas');

  mmLeitura.Lines.Add('[EXECUTAVEIS]');
  mmLeitura.Lines.Add('');

  for I := 0 to xExecutaveis.ChildNodes.Count - 1 do
  begin
    xExecutavel := xExecutaveis.ChildNodes[i];

    //recupera os atributos do no executavel
    xInfNo := xExecutavel.AttributeNodes;

    mmLeitura.Lines.Add(xExecutavel.Text);
    mmLeitura.Lines.Add('-----------------');
    mmLeitura.Lines.Add('vers�o: ' + xInfNo.FindNode('versao').Text);
    mmLeitura.Lines.Add('descri��o' + xInfNo.FIndNode('descricao').Text);
    mmLeitura.Lines.Add('');
  end;

  mmLeitura.Lines.Add('');
  mmLeitura.Lines.Add('[BIBLIOTECAS]');
  mmLeitura.Lines.Add('');

  for i := 0 to xBibliotecas.ChildNodes.Count - 1 do
  begin
    xBiblioteca := xBibliotecas.ChildNodes[i];

    xInfNo := xBiblioteca.AttributeNodes;

    mmLeitura.Lines.Add(xBiblioteca.Text);
    mmLeitura.Lines.Add('----------------');
    mmLeitura.Lines.Add('vers�o: ' + xInfNo.FindNode('versao').Text);
    mmLeitura.Lines.Add('descri��o: ' + xInfNo.FindNode('descricao').Text);
    mmLeitura.Lines.Add('');
  end;
end;

end.
