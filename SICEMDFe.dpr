program SICEMDFe;

uses
  Vcl.Forms,
  u_main in 'u_main.pas' {_Main},
  dmMDFe in 'dmMDFe.pas' {_dmMDFe: TDataModule},
  u_transpotadoras in 'u_transpotadoras.pas' {_frmVeiculos},
  U_splash in 'U_splash.pas' {_splash},
  Vcl.Themes,
  Vcl.Styles,
  frmLogin in 'frmLogin.pas' {_frmLogin},
  frmListarNotas in 'frmListarNotas.pas' {_frmListarNotas},
  frmManifestosEncerrar in 'frmManifestosEncerrar.pas' {_frmManifestosEncerrar},
  frmLiberacao in 'frmLiberacao.pas' {_frmLiberacao},
  frSelecionarCertificado in 'frSelecionarCertificado.pas' {_frSelecionarCertificado};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(T_dmMDFe, _dmMDFe);
  Application.CreateForm(T_Main, _Main);
  Application.CreateForm(T_frSelecionarCertificado, _frSelecionarCertificado);
  Application.Run;
end.
