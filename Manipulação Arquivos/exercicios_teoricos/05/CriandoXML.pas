unit CriandoXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    mmLeitura: TMemo;
    btnExecutar: TButton;
    XMLDocument1: TXMLDocument;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnExecutarClick(Sender: TObject);
var
  XAtualizacao, xExecutaveis, xExecutavel,
  xBibliotecas, xBiblioteca : IXMLNode;
begin
  XMLDocument1.Active := True;

  //cria o n? principal no xml
  XAtualizacao := XMLDocument1.AddChild('atualizacao');

  //cria o n? dos executaveis dentro do n? principal
  xExecutaveis := XAtualizacao.AddChild('executaveis');

  //adiciona um executavel ao n? de execut?veis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '', '1.0.3.22');
  xExecutavel.SetAttributeNS('descricao', '', 'Modulo Gerenciado');
  xExecutavel.Text := 'gerencial.exe';

  //adiciona um executavel ao n? de execut?veis
  xExecutavel := xExecutaveis.AddChild('executavel');
  xExecutavel.SetAttributeNS('versao', '', '1.0.3.123');
  xExecutavel.SetAttributeNS('descricao', '', 'Configuracoes da Aplicacao');
  xExecutavel.Text := 'configuracoes.exe';

  xBibliotecas := XAtualizacao.AddChild('bibliotecas');

  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '', '2.0.0.1');
  xBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca de funcoes');
  xBiblioteca.Text := 'funcoes.dll';

  xBiblioteca := xBibliotecas.AddChild('biblioteca');
  xBiblioteca.SetAttributeNS('versao', '', '1.2.0.4');
  xBiblioteca.SetAttributeNS('descricao', '', 'Biblioteca com rotinas de negocio da aplicacao');
  xBiblioteca.Text := 'app.dll';

  mmLeitura.Lines.Text := XMLDocument1.XML.Text;

end;

end.
