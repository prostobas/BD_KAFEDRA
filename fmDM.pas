unit fmDM;

interface

uses
  System.SysUtils, System.Classes, FIBDatabase, pFIBDatabase, Data.DB,
  FIBDataSet, pFIBDataSet, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    dbKafedra: TpFIBDatabase;
    readtransition: TpFIBTransaction;
    writetransition: TpFIBTransaction;
    dsrucovod: TDataSource;
    dstSelectZapros1: TpFIBDataSet;
    dsSelZapros1: TDataSource;
    dstSelectZapros2: TpFIBDataSet;
    dsZapros2: TDataSource;
    dstStudent: TpFIBDataSet;
    dstStudentNOMST: TFIBIntegerField;
    dstStudentFIO: TFIBStringField;
    dstStudentMESTOPRDIPL: TFIBStringField;
    dstStudentNOMPR: TFIBSmallIntField;
    dstStudentNOMRK: TFIBSmallIntField;
    dstStudentNOMGR: TFIBSmallIntField;
    dstStudentGRUPPA: TStringField;
    dstStudenttema: TStringField;
    dstGrupp: TpFIBDataSet;
    dstGruppNOMGR: TFIBIntegerField;
    dstGruppNAZV: TFIBStringField;
    dsStudent: TDataSource;
    dsGrupp: TDataSource;
    dstProject: TpFIBDataSet;
    dstProjectNOMPR: TFIBIntegerField;
    dstProjectTEMA: TFIBStringField;
    dsProject: TDataSource;
    dstrucovod: TpFIBDataSet;
    dstrucovodNOMRUK: TFIBIntegerField;
    dstrucovodFIO: TFIBStringField;
    dstrucovodYCHZV: TFIBStringField;
    dstrucovodMESTORAB: TFIBStringField;
    dstrucovodDOLJNOST: TFIBStringField;
    dstStudentRukovod: TStringField;
    dstOtchet1: TpFIBDataSet;
    dsOtchet1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dstSelectZapros3: TpFIBDataSet;
    dsZapros3: TDataSource;
    dstSelectZapros3TEMA: TStringField;
    dstOtchet2: TpFIBDataSet;
    dsOtchet2: TDataSource;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    dstOtchet3: TpFIBDataSet;
    dsOtchet3: TDataSource;
    frxReport3: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
