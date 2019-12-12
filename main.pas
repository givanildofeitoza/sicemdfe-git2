unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  T_main = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    menuPrincipal: TToolBar;
    ColetadeLeite1: TMenuItem;
    Anlisedoleite1: TMenuItem;
    pnlstatus: TPanel;
    Veculos1: TMenuItem;
    ColetoresResponsveis1: TMenuItem;
    Coletagem1: TMenuItem;
    CriarColeta1: TMenuItem;
    Relatriodecoletas1: TMenuItem;
    Anlisedeleite1: TMenuItem;
    CriarnovaConsultaranlises1: TMenuItem;
    Relatriodeanlises1: TMenuItem;
    Confernciaelanamentosdeestoque1: TMenuItem;
    Categoriadeleite1: TMenuItem;
    DepositosdeleiteSilos1: TMenuItem;
    Produo1: TMenuItem;
    Produtosdaprproduo1: TMenuItem;
    Produodiria1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbloperador: TLabel;
    lblData: TLabel;
    lblFilial: TLabel;
    Timer1: TTimer;
    ResumodeProduo1: TMenuItem;
    Ajuda1: TMenuItem;
    Splash1: TMenuItem;
    N1: TMenuItem;
    Relatrios1: TMenuItem;
    procedure ColetadeLeite1Click(Sender: TObject);
    procedure Anlisedoleite1Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure ColetoresResponsveis1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CriarColeta1Click(Sender: TObject);
    procedure Relatriodecoletas1Click(Sender: TObject);
    procedure CriarnovaConsultaranlises1Click(Sender: TObject);
    procedure Confernciaelanamentosdeestoque1Click(Sender: TObject);
    procedure Categoriadeleite1Click(Sender: TObject);
    procedure DepositosdeleiteSilos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Produodiria1Click(Sender: TObject);
    procedure Produtosdaprproduo1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ResumodeProduo1Click(Sender: TObject);
    procedure Splash1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);

  private
    { Private declarations }
  public



  end;

var
  _main: T_main;
   // Handle: THandle;
    glb_versao:string='1.0.0';
    glb_grupo:string='1';
    glb_filial:string='00001';
    glb_usuario:string='IQ';
    glb_ip:string;
    glb_db:string;
    glb_senha:string;
    glb_user:string;
    glb_ip_servidor:string;
    glb_permissao:string='N';
    glb_campo:string='gerente';
    glb_continuar:string='N';
    glb_produtos:string='00001';
    splash:string;
    login:string='N';

implementation


{$R *.dfm}
uses
dm,frmTipoLeite,dm2,frmFornecedores, frmProdutos, frmveiculos, frmColetores,frmColeta,midaslib, frmRelColeta,frmAnaliseColeta, frmConferenciaQtd, frmSilos,
IdBaseComponent, IdComponent, IdIPWatch,frmConfigLaticinio, frmProducaoLaticinio,frmProdPreProducao, frmProducaoDiaria, frmSobre,frmSplash, frmLogon,clipbrd,frmRelatoriosProducao ;
 //função para criptografar e decriptografar strings
function Criptografar( Senha, Chave : String): String;
Var
x,y : Integer;
NovaSenha : String;
begin
for x := 1 to Length( Chave ) do
begin
NovaSenha := '';
for y := 1 to Length( Senha ) do
NovaSenha := NovaSenha + chr( (Ord(Chave[x]) xor Ord(Senha[y])));
Senha := NovaSenha;
end;
result := Senha;
end;

procedure obterIp;
var ip:TIdIPWatch;
begin
  ip := TIdIPWatch.Create(nil);
  glb_ip:=ip.LocalIP;
end;

procedure aberturaConexao;
var
 IPcnf:textFile;
 texto,CodDB:string;
begin
{

   Handle := FindWindow('T_main', nil);
   // if not FileExists('c:\iqsistemas\sice.net\multinstancia.txt') then
   // begin

       if Handle <> 0 Then           //já está aberto
       begin
        application.MessageBox('ATENÇÃO !!' + #13+#13+ 'Já existe uma cópia do programa  sendo executada neste terminal.'+#13+#13+'Verifique !!','Erro',MB_ICONEXCLAMATION+mb_ok);
        application.Terminate;
       end;

    // end;

              }



      AssignFile(IPcnf, ExtractFilePath(application.ExeName)+'ip.cnf' );
      reset(IPcnf);

            while not eof (IPcnf) do
             begin
               readln(IPcnf,texto);
                 CodDB := trim(copy(texto,1,200));
                CodDB := Criptografar(coddb, 'iq');

                 glb_ip_servidor:=trim(copy(texto,1,50));
                 glb_ip_servidor := Criptografar(glb_ip_servidor, 'iq');

                 glb_senha:=trim(copy(texto,51,20));
                 glb_senha := Criptografar(glb_senha, 'iq');


                 glb_user:=trim(copy(texto,71,20));
                 glb_user := Criptografar(glb_user, 'iq');

                 glb_db:=(trim(copy(texto,91,20)));
                 glb_db := Criptografar(glb_db, 'iq');

             end;
             closefile(IPcnf);



end;

procedure T_main.Anlisedoleite1Click(Sender: TObject);
begin
      _frmProdutos:=T_frmProdutos.Create(self);
       _frmProdutos.ShowModal();
       _frmProdutos.Release;
end;

procedure T_main.Categoriadeleite1Click(Sender: TObject);
begin
  _frmtipoleite:=T_frmtipoleite.Create(self);
  _frmtipoleite.btnFechar.Caption:='Fechar';
  _frmtipoleite.ShowModal();
  _frmtipoleite.release;
end;

procedure T_main.ColetadeLeite1Click(Sender: TObject);
begin
   _frmFornecedores:=T_frmfornecedores.Create(self);
   _frmFornecedores.ShowModal();
   _frmFornecedores.Release;
end;

procedure T_main.ColetoresResponsveis1Click(Sender: TObject);
begin
  _frmColetores:=T_frmColetores.Create(self);
  _frmColetores.ShowModal;
  _frmColetores.Release;
end;

procedure T_main.Confernciaelanamentosdeestoque1Click(Sender: TObject);
begin
_frmConferenciaQtd:= T_frmConferenciaQtd.Create(self);
_frmConferenciaQtd.ShowModal;
_frmConferenciaQtd.Release;
end;

procedure T_main.CriarColeta1Click(Sender: TObject);
begin
  _frmColeta:=T_frmColeta.Create(self);
  _frmColeta.ShowModal;
  _frmColeta.Release;
end;

procedure T_main.CriarnovaConsultaranlises1Click(Sender: TObject);
begin
  _frmAnaliseColeta:=T_frmAnaliseColeta.Create(self);
  _frmAnaliseColeta.ShowModal;
  _frmAnaliseColeta.Release;
end;

procedure T_main.DepositosdeleiteSilos1Click(Sender: TObject);
begin
//_frmSilos:=T_frmSilos.Create(self);
//_frmSilos.ShowModal;
//_frmSilos.Release;
end;

procedure T_main.FormActivate(Sender: TObject);
begin


  _dm.ConnecDm.Connected:=false;
  _dm.sdsSenhas.Close;
  _dm.cdsSenhas.Close;
  _dm.sdsSenhas.CommandText:='select * from senhas where operador ='+quotedstr(glb_usuario)+' and codigofilial='+quotedstr(glb_filial);
  _dm.sdsSenhas.ExecSQL();
  _dm.cdsSenhas.Open;
  _dm.cdsSenhas.refresh;


  FormatSettings.DecimalSeparator:='.';

end;

procedure T_main.FormCreate(Sender: TObject);
begin
aberturaConexao;

end;

procedure T_main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if(key=VK_F7)then
 begin
  _frmConfigLaticinio:=T_frmConfigLaticinio.create(self);
  _frmConfigLaticinio.showmodal;
  _frmConfigLaticinio.release;
 end;

end;

procedure T_main.FormShow(Sender: TObject);
begin
aberturaConexao;




    if(splash<>'S')then
    begin
   _frmSplash:=T_frmSplash.Create(self);
   _frmSplash.ShowModal;
    _frmSplash.Release;




    if(login='N')then
    begin
      _frmLogon:=T_frmLogon.Create(self);
      _frmLogon.ShowModal;
    end;


    if(login='N')then
    begin
     Application.Terminate;
     end;


      if(glb_filial = '00001')then
      glb_produtos:='produtos'
      else
      glb_produtos:='produtosfilial';


//obtendo IP local.
obterIp;

_main.Caption:='IQ Sistemas - Praticando tecnologias.    SICE.Laticínios®   Versão: '+glb_versao;

lbloperador.Caption:=glb_usuario;

lblFilial.Caption:=glb_filial+' - '+_dm.cdsFiliaisfantasia.AsString;


 _dm.ConnecDm.Connected:=false;
 _dm.cdsConfigLaticinio.Close;
 _dm.sdsConfigLaticinio.CommandText:='SELECT * FROM configlaticinio WHERE codigofilial='+quotedstr(glb_filial);
 _dm.sdsConfigLaticinio.ExecSQL();
 _dm.cdsConfigLaticinio.Open;
 _dm.cdsConfigLaticinio.refresh;



 _dm.ConnecDm.Connected:=false;
 _dm.cdsFiliais.Close;
 _dm.sdsFiliais.CommandText:='SELECT * FROM filiais WHERE codigofilial='+quotedstr(glb_filial)+' and grupo ='+quotedstr(glb_grupo);
 _dm.sdsFiliais.ExecSQL();
 _dm.cdsFiliais.Open;
 _dm.cdsFiliais.refresh;


    end;

end;

procedure T_main.Produodiria1Click(Sender: TObject);
begin

_frmProducaoLaticinio:=T_frmProducaoLaticinio.create(self);
_frmProducaoLaticinio.ShowModal();
_frmProducaoLaticinio.Release;

end;

procedure T_main.Produtosdaprproduo1Click(Sender: TObject);
begin
_frmProdPreProducao:=T_frmProdPreProducao.create(self);
_frmProdPreProducao.showmodal;
_frmProdPreProducao.release;
end;

procedure T_main.Relatriodecoletas1Click(Sender: TObject);
begin
_frmRelColeta:= T_frmRelColeta.Create(self);
_frmRelColeta.ShowModal();
_frmRelColeta.Release;
end;

procedure T_main.Relatrios1Click(Sender: TObject);
begin
_frmRelatoriosProducao:=T_frmRelatoriosProducao.create(self);
_frmRelatoriosProducao.showmodal;
_frmRelatoriosProducao.release;
end;

procedure T_main.ResumodeProduo1Click(Sender: TObject);
begin
_frmProducaoDiaria:=T_frmProducaoDiaria.create(self);
_frmProducaoDiaria.showmodal;
_frmProducaoDiaria.release;
end;

procedure T_main.Splash1Click(Sender: TObject);
begin
_frmSobre:=T_frmSobre.Create(self);
_frmSobre.ShowModal;
_frmSobre.Release;

end;

procedure T_main.Timer1Timer(Sender: TObject);
begin
lblData.caption:=formatdatetime('dd/mm/yyyy hh:mm:ss',now);
end;

procedure T_main.Veculos1Click(Sender: TObject);
begin

  _frmveiculos:= T_frmveiculos.create(self);
  _frmveiculos.ShowModal;
  _frmveiculos.Release;
end;

end.


