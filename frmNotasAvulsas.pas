unit frmNotasAvulsas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  RxCurrEdit, Vcl.ExtCtrls, Vcl.Buttons;

type
  T_frmNotasAvulsas = class(TForm)
    pnlNtAvulsa: TPanel;
    Label25: TLabel;
    Label27: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtchave: TEdit;
    btnAddNFeAvulsa: TButton;
    cboUfCarrAvulso: TComboBox;
    cboMunCarrAvulso: TComboBox;
    cboUfdessAvulso: TComboBox;
    cboMunDesAvulso: TComboBox;
    txtvalor: TCurrencyEdit;
    txtSegChave: TEdit;
    chkcontingencia: TCheckBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnAddNFeAvulsaClick(Sender: TObject);
    procedure cboUfCarrAvulsoEnter(Sender: TObject);
    procedure cboUfCarrAvulsoExit(Sender: TObject);
    procedure cboMunCarrAvulsoEnter(Sender: TObject);
    procedure cboUfdessAvulsoEnter(Sender: TObject);
    procedure cboUfdessAvulsoExit(Sender: TObject);
    procedure cboMunDesAvulsoEnter(Sender: TObject);
    procedure chkcontingenciaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _frmNotasAvulsas: T_frmNotasAvulsas;

implementation

{$R *.dfm}
uses
dmMDFe,u_main;

procedure T_frmNotasAvulsas.BitBtn1Click(Sender: TObject);
begin
ModalResult:=-1;
end;

procedure T_frmNotasAvulsas.btnAddNFeAvulsaClick(Sender: TObject);
var
ufDest,codMundest,munDest,tiponota: string;
begin
{
	tiponota:='T';


 	if(length(trim(txtchave.Text))<44) or (length(trim(txtchave.Text))>44)then
	begin
    application.MessageBox('Chave de acesso incorreta!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;


  	if(chkcontingencia.Checked=true) and (length(trim(txtSegChave.Text))<44) or (length(trim(txtSegChave.Text))>44)then
	begin
    application.MessageBox('Chave de acesso incorreta!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;





	//VERIFICA SE O MUNICÍPIO DE CARREGAMENTO AVULSO EXISTE NA TABELA
    _dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfCarrAvulso.Text,1,2))+' and nome='+quotedstr(cboMunCarrAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunCarrAvulso.Text)then
    begin
    application.MessageBox('Município de carregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;




    //VERIFICA SE O MUNICÍPIO DE DESCARREGAMENTO AVULSO EXISTE NA TABELA
  	_dmMDFe.conexao.Connected:=false;
    _dmMDFe.qrPadrao.sql.Clear;
    _dmMDFe.qrPadrao.sql.Add('select * from tab_municipios where uf ='+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' and nome='+quotedstr(cboMunDesAvulso.Text));
    _dmMDFe.qrPadrao.open;


    if(_dmMDFe.qrPadrao.FieldByName('nome').AsString  <> cboMunDesAvulso.Text)then
    begin
    application.MessageBox('Município de descarregamento não existe na tabela de municípios.'+#13+'Verifique se o texto está acentuado ou com espaço no final.','Alerta',MB_ICONEXCLAMATION+mb_ok);
		exit;
	end;



    if(_main.txtmodeloMDF.Text=string.Empty) or (_main.txtserieMDF.Text=string.Empty) or (_main.txtnumeroMDF.Text=string.Empty)then
	begin
   application.MessageBox('Modelo do documento, série ou número estão em branco. Verifique.','Alerta',MB_ICONEXCLAMATION+mb_ok);
	 exit;
	end;




	if(cboUfCarrAvulso.Text=string.Empty)then
	begin
  application.MessageBox('UF carregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
  exit;
	end;
	if(cboMunCarrAvulso.Text=string.Empty)then
	begin
  application.MessageBox('Município carregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
	exit;
	end;
	if(cboUfdessAvulso.Text=string.Empty)then
	begin
    application.MessageBox('UF de descarregamento não pode ser vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
		exit;
	end;
	if(cboMunDesAvulso.Text=string.Empty)then
	begin
    application.MessageBox('Município descarregamento não pode vazio','Alerta',MB_ICONEXCLAMATION+MB_OK);
		exit;
	end;


	_dmMDFe.cdsmdfeInfDoc.First;
	while not _dmMDFe.cdsmdfeInfDoc.Eof do
	begin

		if _dmMDFe.cdsmdfeInfDoctiponota.AsString = 'P' then
		begin
        application.MessageBox('Nota fiscal propria já lançada! Exclua primeiro.','Alerta',MB_ICONEXCLAMATION+MB_OK);
				exit;
		end;

		_dmMDFe.cdsmdfeInfDoc.Next;

	end;




	//verifica se a chave já foi utilizada em outro manifesto
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('select * from mdfeinfdoc where chnfe='+QuotedStr(trim(txtSegChave.Text))+' and codigofilial='+QuotedStr( _main.txtFilialEmitente.Text ));
	_dmMDFe.sdsQuery.Open;

	//INSERINDO NOTAS AGORA

	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('SELECT MAX(controlenfe) as  sequencia FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(_main.txtFilialEmitente.Text)+' and nmdf='+quotedstr(_main.txtnumeroMDF.Text)+' and serie='+quotedstr(_main.txtserieMDF.Text)+' LIMIT 1');
	_dmMDFe.sdsQuery.Open;

	seq:= _dmMDFe.sdsQuery.FieldByName('sequencia').AsInteger;

	// if _dmMDFe.sdsQuery.IsEmpty then
	//  begin
	_dmMDFe.sdsQuery.Close;
	_dmMDFe.sdsQuery.SQL.Clear;
	_dmMDFe.sdsQuery.SQL.Add('INSERT INTO mdfeinfdoc (tiponota,serie, nMDF, controlenfe, chnfe,segcodbarra, tpUnidTransp, idUnidTransp, codigofilial, vnf, uf,codMunDest,muniDest) VALUES ( ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(tiponota)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(_main.txtserieMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(_main.txtnumeroMDF.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(quotedstr(inttostr(seq+1))+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtchave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(txtSegChave.Text)+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( Copy(_main.cboTipoUnidadeTracao.Text, 1, 1) )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( _main.txtPlaca.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr( _main.txtFilialEmitente.Text )+', ');
	_dmMDFe.sdsQuery.SQL.Add(QuotedStr(currtostr(txtvalor.value)));
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(copy(_main.cboUFDescarregamento.Text,1,2)));
	_dmMDFe.sdsQuery.SQL.Add(',(SELECT id FROM tab_municipios WHERE nome = '+quotedstr(cboMunDesAvulso.Text)+' and uf = '+quotedstr(copy(cboUfdessAvulso.Text,1,2))+' LIMIT 1)');
	_dmMDFe.sdsQuery.SQL.Add(','+quotedstr(cboMunDesAvulso.Text)+')');
	//  _dmMDFe.sdsQuery.SQL.Add('FROM mdfeinfdoc WHERE codigofilial='+QuotedStr(txtFilialEmitente.Text));


	_dmMDFe.sdsQuery.ExecSQL;






	_dmMDFe.sdsmdfeInfDoc.CommandText:='select * from mdfeinfdoc where serie='+quotedstr(_main.txtserieMDF.Text)+' and nMDF='+quotedstr(_main.txtnumeroMDF.Text)+' and codigofilial='+QuotedStr( _main.txtFilialEmitente.Text );
	_dmMDFe.sdsmdfeInfDoc.execsql();
	_dmMDFe.cdsmdfeInfDoc.Refresh;




	_dmMDFe.qrPadrao.Close;
	_dmMDFe.qrPadrao.SQL.Clear;
	_dmMDFe.qrPadrao.SQL.Add('SELECT SUM(vnf) totalcarga from mdfeinfdoc WHERE ');
	_dmMDFe.qrPadrao.SQL.Add('nMDF = '+QuotedStr( _main.txtnumeroMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('serie = '+QuotedStr( _main.txtserieMDF.Text )+'  and ');
	_dmMDFe.qrPadrao.SQL.Add('codigofilial = '+QuotedStr( _main.txtFilialEmitente.Text ));
	_dmMDFe.qrPadrao.Open;
	_main.txtvCarga.Value := _dmMDFe.qrPadrao.FieldByName('totalcarga').AsCurrency;








	txtchave.Text:='';
	txtvalor.Text:='0.00';
	chkcontingencia.Checked:=false;
	txtSegChave.text:='';
	txtSegChave.Enabled:=false;

  application.MessageBox('Nota adicionada com sucesso.','Confirmação',MB_ICONINFORMATION+mb_ok);
     }
end;

procedure T_frmNotasAvulsas.cboMunCarrAvulsoEnter(Sender: TObject);
begin
	cboMunCarrAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUfCarrAvulso.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;


    _dmMDFe.qrPadrao.first;
    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunCarrAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmNotasAvulsas.cboMunDesAvulsoEnter(Sender: TObject);
begin
	cboMunDesAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT NOME FROM tab_municipios,estados WHERE estados.uf='+QuotedStr(Copy(cboUfdessAvulso.Text, 1, 2))+' and tab_municipios.iduf = estados.id';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboMunDesAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('NOME').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmNotasAvulsas.cboUfCarrAvulsoEnter(Sender: TObject);
begin
	cboUfCarrAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUfCarrAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;

	end;

end;

procedure T_frmNotasAvulsas.cboUfCarrAvulsoExit(Sender: TObject);
begin
 {	if(copy(_main.cboUFcarregamento.Text,1,2) <>  copy(cboUfcarrAvulso.Text,1,2))then
	begin
		application.MessageBox('UF selecionado difere do UF carregamento informado no cabeçalho!','Alerta',MB_ICONEXCLAMATION+mb_ok);
		cboUfcarrAvulso.Text:=copy(_main.cboUFcarregamento.Text,1,2);
		cboUfcarrAvulso.SetFocus;
		exit;
	end; }

end;

procedure T_frmNotasAvulsas.cboUfdessAvulsoEnter(Sender: TObject);
begin
	cboUfdessAvulso.Items.Clear;

    _dmMDFe.qrPadrao.Close;
    _dmMDFe.qrPadrao.CommandText:='SELECT CONCAT(uf, "-", estado) as estado FROM estados ORDER BY estado';
    _dmMDFe.qrPadrao.Open;

    while not _dmMDFe.qrPadrao.Eof do
    begin
        cboUfdessAvulso.Items.Add(_dmMDFe.qrPadrao.FieldByName('estado').AsString);
        _dmMDFe.qrPadrao.Next;
	end;

end;

procedure T_frmNotasAvulsas.cboUfdessAvulsoExit(Sender: TObject);
begin
	{if(copy(_main.cboUFDescarregamento.Text,1,2) <>  copy(cboUfdessAvulso.Text,1,2))then
	begin
		showmessage('UF selecionado difere do UF descarregamento informado no cabeçalho');
		cboUfdessAvulso.Text:= _main.cboUFDescarregamento.Text;
		cboUfdessAvulso.SetFocus;
		exit;
	end; }
end;

procedure T_frmNotasAvulsas.chkcontingenciaClick(Sender: TObject);
begin
	if(chkcontingencia.Checked=true)then
	txtSegChave.Enabled:=true
	else
	txtSegChave.Enabled:=false;

end;

end.
