object DM: TDM
  OldCreateOrder = False
  Height = 388
  Width = 947
  object dbKafedra: TpFIBDatabase
    Connected = True
    DBName = 
      '127.0.0.1:J:\'#1055#1043#1059'\3 '#1050#1059#1056#1057' 2 '#1057#1045#1052#1045#1057#1058#1056'\'#1041#1040#1047#1067' '#1044#1040#1053#1053#1067#1061'\lab1_bd\KAFEDRA.FD' +
      'B'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    DefaultTransaction = readtransition
    DefaultUpdateTransaction = writetransition
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 64
    Top = 88
  end
  object readtransition: TpFIBTransaction
    Active = True
    DefaultDatabase = dbKafedra
    Left = 64
    Top = 160
  end
  object writetransition: TpFIBTransaction
    DefaultDatabase = dbKafedra
    Left = 64
    Top = 224
  end
  object dsrucovod: TDataSource
    DataSet = dstrucovod
    Left = 224
    Top = 168
  end
  object dstSelectZapros1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NOMPR,'
      '    TEMA'
      'FROM'
      '    PROJECT ')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    Left = 320
    Top = 88
  end
  object dsSelZapros1: TDataSource
    DataSet = dstSelectZapros1
    Left = 408
    Top = 88
  end
  object dstSelectZapros2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NOMRUK,'
      '    FIO,'
      '    YCHZV,'
      '    MESTORAB,'
      '    DOLJNOST'
      'FROM'
      '    RUKOVOD ')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    Left = 320
    Top = 152
  end
  object dsZapros2: TDataSource
    DataSet = dstSelectZapros2
    Left = 408
    Top = 152
  end
  object dstStudent: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE STUDENT'
      'SET '
      '    NOMST = :NOMST,'
      '    FIO = :FIO,'
      '    MESTOPRDIPL = :MESTOPRDIPL,'
      '    NOMPR = :NOMPR,'
      '    NOMRK = :NOMRK,'
      '    NOMGR = :NOMGR'
      'WHERE'
      '    NOMST = :OLD_NOMST'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    STUDENT'
      'WHERE'
      '        NOMST = :OLD_NOMST'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO STUDENT('
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      ')'
      'VALUES('
      '    :NOMST,'
      '    :FIO,'
      '    :MESTOPRDIPL,'
      '    :NOMPR,'
      '    :NOMRK,'
      '    :NOMGR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      'FROM'
      '    STUDENT '
      ''
      ' WHERE '
      '        STUDENT.NOMST = :OLD_NOMST'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      'FROM'
      '    STUDENT '
      'WHERE NOMGR=:NOMGR')
    AutoUpdateOptions.UpdateTableName = 'STUDENT'
    AutoUpdateOptions.KeyFields = 'NOMST'
    AutoUpdateOptions.GeneratorName = 'GSTUDENT'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    DataSource = dsGrupp
    Left = 160
    Top = 88
    object dstStudentNOMST: TFIBIntegerField
      FieldName = 'NOMST'
    end
    object dstStudentFIO: TFIBStringField
      FieldName = 'FIO'
      Size = 26
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstStudentMESTOPRDIPL: TFIBStringField
      FieldName = 'MESTOPRDIPL'
      Size = 25
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstStudentNOMPR: TFIBSmallIntField
      FieldName = 'NOMPR'
    end
    object dstStudentNOMRK: TFIBSmallIntField
      FieldName = 'NOMRK'
    end
    object dstStudentNOMGR: TFIBSmallIntField
      FieldName = 'NOMGR'
    end
    object dstStudentGRUPPA: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPPA'
      LookupDataSet = dstGrupp
      LookupKeyFields = 'NOMGR'
      LookupResultField = 'NAZV'
      KeyFields = 'NOMGR'
      Size = 15
      Lookup = True
    end
    object dstStudenttema: TStringField
      FieldKind = fkLookup
      FieldName = 'tema'
      LookupDataSet = dstProject
      LookupKeyFields = 'NOMPR'
      LookupResultField = 'TEMA'
      KeyFields = 'NOMPR'
      Size = 30
      Lookup = True
    end
    object dstStudentRukovod: TStringField
      FieldKind = fkLookup
      FieldName = 'Rukovod'
      LookupDataSet = dstrucovod
      LookupKeyFields = 'NOMRUK'
      LookupResultField = 'FIO'
      KeyFields = 'NOMRK'
      Size = 30
      Lookup = True
    end
  end
  object dstGrupp: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE GRUPP'
      'SET '
      '    NOMGR = :NOMGR,'
      '    NAZV = :NAZV'
      'WHERE'
      '    NOMGR = :OLD_NOMGR'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    GRUPP'
      'WHERE'
      '        NOMGR = :OLD_NOMGR'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO GRUPP('
      '    NOMGR,'
      '    NAZV'
      ')'
      'VALUES('
      '    :NOMGR,'
      '    :NAZV'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMGR,'
      '    NAZV'
      'FROM'
      '    GRUPP '
      ''
      ' WHERE '
      '        GRUPP.NOMGR = :OLD_NOMGR'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMGR,'
      '    NAZV'
      'FROM'
      '    GRUPP ')
    AutoUpdateOptions.UpdateTableName = 'GRUPP'
    AutoUpdateOptions.KeyFields = 'NOMGR'
    AutoUpdateOptions.GeneratorName = 'GGRUPP'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    Left = 160
    Top = 224
    dcForceOpen = True
    object dstGruppNOMGR: TFIBIntegerField
      FieldName = 'NOMGR'
    end
    object dstGruppNAZV: TFIBStringField
      FieldName = 'NAZV'
      Size = 6
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsStudent: TDataSource
    DataSet = dstStudent
    Left = 224
    Top = 88
  end
  object dsGrupp: TDataSource
    DataSet = dstGrupp
    Left = 224
    Top = 224
  end
  object dstProject: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PROJECT'
      'SET '
      '    NOMPR = :NOMPR,'
      '    TEMA = :TEMA'
      'WHERE'
      '    NOMPR = :OLD_NOMPR'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PROJECT'
      'WHERE'
      '        NOMPR = :OLD_NOMPR'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PROJECT('
      '    NOMPR,'
      '    TEMA'
      ')'
      'VALUES('
      '    :NOMPR,'
      '    :TEMA'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMPR,'
      '    TEMA'
      'FROM'
      '    PROJECT '
      ''
      ' WHERE '
      '        PROJECT.NOMPR = :OLD_NOMPR'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMPR,'
      '    TEMA'
      'FROM'
      '    PROJECT ')
    AutoUpdateOptions.UpdateTableName = 'PROJECT'
    AutoUpdateOptions.KeyFields = 'NOMPR'
    AutoUpdateOptions.GeneratorName = 'GPROJECT'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    DataSource = dsGrupp
    Left = 160
    Top = 296
    dcForceOpen = True
    object dstProjectNOMPR: TFIBIntegerField
      FieldName = 'NOMPR'
    end
    object dstProjectTEMA: TFIBStringField
      FieldName = 'TEMA'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dsProject: TDataSource
    DataSet = dstProject
    Left = 224
    Top = 296
  end
  object dstrucovod: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE RUKOVOD'
      'SET '
      '    NOMRUK = :NOMRUK,'
      '    FIO = :FIO,'
      '    YCHZV = :YCHZV,'
      '    MESTORAB = :MESTORAB,'
      '    DOLJNOST = :DOLJNOST'
      'WHERE'
      '    NOMRUK = :OLD_NOMRUK'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    RUKOVOD'
      'WHERE'
      '        NOMRUK = :OLD_NOMRUK'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO RUKOVOD('
      '    NOMRUK,'
      '    FIO,'
      '    YCHZV,'
      '    MESTORAB,'
      '    DOLJNOST'
      ')'
      'VALUES('
      '    :NOMRUK,'
      '    :FIO,'
      '    :YCHZV,'
      '    :MESTORAB,'
      '    :DOLJNOST'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMRUK,'
      '    FIO,'
      '    YCHZV,'
      '    MESTORAB,'
      '    DOLJNOST'
      'FROM'
      '    RUKOVOD '
      ''
      ' WHERE '
      '        RUKOVOD.NOMRUK = :OLD_NOMRUK'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMRUK,'
      '    FIO,'
      '    YCHZV,'
      '    MESTORAB,'
      '    DOLJNOST'
      'FROM'
      '    RUKOVOD ')
    AutoUpdateOptions.UpdateTableName = 'RUKOVOD'
    AutoUpdateOptions.KeyFields = 'NOMRUK'
    AutoUpdateOptions.GeneratorName = 'GRUKOVOD'
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    DataSource = dsGrupp
    Left = 160
    Top = 168
    object dstrucovodNOMRUK: TFIBIntegerField
      FieldName = 'NOMRUK'
    end
    object dstrucovodFIO: TFIBStringField
      FieldName = 'FIO'
      Size = 26
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstrucovodYCHZV: TFIBStringField
      FieldName = 'YCHZV'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstrucovodMESTORAB: TFIBStringField
      FieldName = 'MESTORAB'
      Size = 25
      Transliterate = False
      EmptyStrToNull = True
    end
    object dstrucovodDOLJNOST: TFIBStringField
      FieldName = 'DOLJNOST'
      Size = 12
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object dstOtchet1: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NOMGR,'
      '    NAZV'
      'FROM'
      '    GRUPP '
      'ORDER BY NAZV')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    Left = 512
    Top = 88
  end
  object dsOtchet1: TDataSource
    DataSet = dstOtchet1
    Left = 576
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45256.987212013890000000
    ReportOptions.LastChange = 45257.003152453700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 648
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 472.441250000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1075#1088#1091#1087#1087' '#1087#1086' '#1072#1083#1092#1072#1074#1080#1090#1091' '#1086#1090' [Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 253.228510000000000000
          Height = 34.015770000000000000
          DataField = 'NAZV'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NAZV"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = -15.118120000000000000
          Width = 173.858380000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________'#1041#1072#1089#1086#1074' '#1052'. '#1042'.'
            '('#1055#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1043#1088#1091#1087#1087#1072)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMGR=NOMGR'
      'NAZV=NAZV')
    DataSource = dsOtchet1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 88
  end
  object dstSelectZapros3: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NOMRUK,'
      '    FIO,'
      '    YCHZV,'
      '    MESTORAB,'
      '    DOLJNOST'
      'FROM'
      '    RUKOVOD ')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    Left = 320
    Top = 216
    object dstSelectZapros3TEMA: TStringField
      FieldName = 'TEMA'
      Size = 30
    end
  end
  object dsZapros3: TDataSource
    DataSet = dstSelectZapros3
    Left = 408
    Top = 216
  end
  object dstOtchet2: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      'FROM'
      '    STUDENT ')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    Left = 512
    Top = 152
  end
  object dsOtchet2: TDataSource
    DataSet = dstOtchet2
    Left = 576
    Top = 152
  end
  object frxReport2: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45256.987212013890000000
    ReportOptions.LastChange = 45257.003152453700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 648
    Top = 152
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 11.338590000000000000
          Width = 702.992580000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1081' '#1075#1088#1091#1087#1087#1099' [frxDBDataset3."NAZV"] '#1086#1090' [Dat' +
              'e]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 34.015770000000000000
          DataField = 'FIO'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."FIO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = -15.118120000000000000
          Width = 192.756030000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '________'#1041#1072#1089#1086#1074' '#1052'. '#1042'.'
            '('#1055#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1086#1074)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMST=NOMST'
      'FIO=FIO'
      'MESTOPRDIPL=MESTOPRDIPL'
      'NOMPR=NOMPR'
      'NOMRK=NOMRK'
      'NOMGR=NOMGR')
    DataSource = dsOtchet2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 152
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMGR=NOMGR'
      'NAZV=NAZV')
    DataSource = dsGrupp
    BCDToCurrency = False
    DataSetOptions = []
    Left = 800
    Top = 152
  end
  object dstOtchet3: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE STUDENT'
      'SET '
      '    NOMST = :NOMST,'
      '    FIO = :FIO,'
      '    MESTOPRDIPL = :MESTOPRDIPL,'
      '    NOMPR = :NOMPR,'
      '    NOMRK = :NOMRK,'
      '    NOMGR = :NOMGR'
      'WHERE'
      '    NOMST = :OLD_NOMST'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    STUDENT'
      'WHERE'
      '        NOMST = :OLD_NOMST'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO STUDENT('
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      ')'
      'VALUES('
      '    :NOMST,'
      '    :FIO,'
      '    :MESTOPRDIPL,'
      '    :NOMPR,'
      '    :NOMRK,'
      '    :NOMGR'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      'FROM'
      '    STUDENT '
      ''
      ' WHERE '
      '        STUDENT.NOMST = :OLD_NOMST'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    NOMST,'
      '    FIO,'
      '    MESTOPRDIPL,'
      '    NOMPR,'
      '    NOMRK,'
      '    NOMGR'
      'FROM'
      '    STUDENT ')
    Transaction = readtransition
    Database = dbKafedra
    UpdateTransaction = writetransition
    AutoCommit = True
    Left = 512
    Top = 216
  end
  object dsOtchet3: TDataSource
    DataSet = dstOtchet3
    Left = 576
    Top = 216
  end
  object frxReport3: TfrxReport
    Version = '2021.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45259.784565694440000000
    ReportOptions.LastChange = 45259.784565694440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 648
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = -11.338590000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              #1057#1087#1080#1089#1086#1082' '#1089#1090#1091#1076#1077#1085#1090#1086#1074' '#1091#1082#1072#1079#1072#1085#1085#1086#1075#1086' '#1084#1077#1089#1090#1072' '#1087#1088#1072#1082#1090#1080#1082#1080' [<frxDBDataset4."MEST' +
              'OPRDIPL"> ] '#1086#1090' [<Date>]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
        RowCount = 0
        object frxDBDataset4FIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataField = 'FIO'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."FIO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = -18.897650000000000000
          Width = 177.637910000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '_______'#1041#1072#1089#1086#1074' '#1052'. '#1042'.'
            '('#1055#1086#1076#1087#1080#1089#1100')')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 86.929190000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = -3.779530000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #1060#1048#1054' '#1089#1090#1091#1076#1077#1085#1090#1086#1074)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = -3.779530000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #8470)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOMST=NOMST'
      'FIO=FIO'
      'MESTOPRDIPL=MESTOPRDIPL'
      'NOMPR=NOMPR'
      'NOMRK=NOMRK'
      'NOMGR=NOMGR')
    DataSource = dsOtchet3
    BCDToCurrency = False
    DataSetOptions = []
    Left = 720
    Top = 216
  end
end
