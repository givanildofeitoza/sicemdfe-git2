; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3DA95C09-73C6-4296-A055-0E1D9236FF92}
AppName=Atualização SICEMDF-e 4.1
AppVerName=4.1.0
AppPublisher=IQ Sistemas
AppPublisherURL=http://www.iqsistemas.com.br/
AppSupportURL=http://www.iqsistemas.com.br/
AppUpdatesURL=http://www.iqsistemas.com.br/
DefaultDirName=C:\iqsistemas\SICEMDF-e\InstalacaoAtualizacao
DisableDirPage=true
DefaultGroupName=Atualização SICEMDF-e
DisableProgramGroupPage=false
OutputBaseFilename=Atualização_SICEMDFE_4.1
Compression=lzma
SolidCompression=true
UninstallLogMode=new
Uninstallable=false
CreateAppDir=true
WizardImageBackColor=clBlue
WindowVisible=true
BackColor=clBlue
UsePreviousGroup=false
AppendDefaultGroupName=false

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: ..\capicom.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\dbexpmda30.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\dbexpmda40.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\dbexpmysql.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\libeay32.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\libmysql.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\libxml2.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\msxml5.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\msxml5r.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\SICEMDFe.res; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\SICEMDFe_Icon.ico; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\ssleay32.dll; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\tabelasMDFe.sql; DestDir: c:\iqsistemas\SICEMDF-e
Source: ..\Report\DAMDFe_2porPag.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Contingencia.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Paisagem.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Retrato.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Retrato-copia.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\EVENTOS_MDFE.fr3; DestDir: c:\iqsistemas\SICEMDF-e\Report
Source: ..\Schemas\CCe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\confRecebto_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consCad_v2.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consMDFeNaoEncTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consMDFeNaoEncTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consMDFeNaoEnc_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consMDFeNaoEnc_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consNFeDest_v1.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consReciMDFeTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consReciMDFeTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consReciMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consReciMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consReciNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consSitMDFeTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consSitMDFeTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consSitMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consSitMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consSitNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consStatServMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consStatServMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consStatServTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consStatServTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\consStatServ_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\distDFeInt_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\distMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\distMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\downloadNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e110110_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e110111_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e110140_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e111500_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e111501_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e111502_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e111503_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e210200_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e210210_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e210220_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e210240_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e411500_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e411501_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e411502_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e411503_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e990900_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\e990910_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envCancelPProrrogNFe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envCCe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envConfRecebto_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envEPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envEventoCancNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envEvento_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envFiscoNfe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\enviMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\enviMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\enviNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envPProrrogNFe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envRemIndus_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envSuframaInternaliza_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\envSuframaVistoria_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\EPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evCancMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evCancMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evEncMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evEncMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoCancNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoEPEC_v0.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoEPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoMDFeTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoMDFeTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\eventoRemIndus_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evIncCondutorMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\evIncCondutorMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\inutNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteCCe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteConfRecebto_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteConsNFeDest_v1.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteConsSitNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteConsStatServ_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteConsultaCadastro_v2.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteDistMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteDistMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteDownloadNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteEPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteEventoCancNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteEvento_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteInutNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteRemIndus_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteSuframaInternaliza_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\leiauteSuframaVistoria_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeConsultaDFeTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeConsultaDFeTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeConsultaDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeConsultaDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalAereo_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalAereo_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalAquaviario_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalAquaviario_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalFerroviario_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalFerroviario_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalRodoviario_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeModalRodoviario_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeTiposBasico_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfeTiposBasico_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\mdfe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\nfe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procCCeNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procConfRecebtoNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEventoCancNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEventoMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEventoMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEventoNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procEventoNFe_v99.99.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procInutNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\procRemIndus_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\resEvento_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\resNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsMDFeNaoEnc_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsMDFeNaoEnc_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retconsNFeDest_v1.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsReciMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsReciMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsReciNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsSitMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsSitMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsSitNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsStatServMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsStatServMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retConsStatServ_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retDistDFeInt_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retDistMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retDistMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retDownloadNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvCancelPProrrogNFe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvCCe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvConfRecebto_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvEPEC_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvEventoCancNFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvEvento_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvFiscoNFe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnviMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnviMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnviNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvRemIndus_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvSuframaInternaliza_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEnvSuframaVistoria_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEventoEPEC_v0.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEventoMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retEventoMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retInutNFe_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retMDFeConsultaDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retMDFeConsultaDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\retPProrrogNFe_v1.0.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\SuframaInternaliza_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\SuframaVistoria_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposBasico_v1.03.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposBasico_v1.03_OPENSSL.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposBasico_v3.10.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposBasico_v3.10_OPENSSL.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposDistDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposGeralMDFe_v1.00-OPENSSL.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposGeralMDFe_v1.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\tiposGeralMDFe_v3.00.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Schemas\xmldsig-core-schema_v1.01.xsd; DestDir: C:\iqsistemas\SICEMDF-e\Schemas
Source: ..\Report\DAMDFe_2porPag.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Contingencia.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Paisagem.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Retrato-copia.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\DAMDFe_Retrato.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\Report\EVENTOS_MDFE.fr3; DestDir: C:\iqsistemas\SICEMDF-e\Report
Source: ..\gerarIP.bat; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\Corrige Acentos.txt; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\Estados_e_municipios_MySQL5.sql; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\..\DOCnfe\instala.bat; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\..\..\Users\Givanildo PC\Desktop\SICEMDFe.lnk; DestDir: {userdesktop}
Source: ..\..\sice.net\manmysql.exe; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\iconv.dll; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\libxmlsec.dll; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\zlib1.dll; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\SQL.txt; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\..\sice.net\manmysql.exe; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\Win32\Release\SICEMDFe.exe; DestDir: C:\iqsistemas\SICEMDF-e\
Source: ..\img\btn-adicionar.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-alterar.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-configuracoes-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-configuracoes-inativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-exportar-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-exportar-inativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-filtrar-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-gerar-mdfe-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-gerar-mdfe-inativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-notificacao-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-notificacao-inativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-pesquisar-ativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-pesquisar-inativo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\btn-remover.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\cadeado.jpg; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\chave.bmp; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\chave.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\logo.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-aberto.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-aberto2.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-atuorizado.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-atuorizado2.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-cancelada.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-cancelada2.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-encerrada.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\img\status-encerrada2.png; DestDir: C:\iqsistemas\SICEMDF-e\img\
Source: ..\Win32\Release\SICEMDFe.exe; DestDir: C:\iqsistemas\SICEMDF-e\

[Icons]

[Dirs]
Name: C:\iqsistemas\SICEMDF-e\Docs
Name: C:\iqsistemas\SICEMDF-e\PDF
Name: C:\iqsistemas\SICEMDF-e\Schemas
Name: C:\iqsistemas\SICEMDF-e\Report
Name: C:\iqsistemas\SICEMDF-e\eventos
Name: C:\iqsistemas\SICEMDF-e\img
[Run]
Filename: C:\iqsistemas\SICEMDF-e\gerarIP.bat
