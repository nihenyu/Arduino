object Form1: TForm1
  Left = 233
  Top = 186
  Width = 1349
  Height = 435
  Caption = 'Software de Supervis'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 48
    Top = 296
    Width = 145
    Height = 13
    Caption = 'Hugo Bernard Armmond Vieira '
  end
  object Label6: TLabel
    Left = 48
    Top = 312
    Width = 140
    Height = 13
    Caption = 'Email: hugubav@hotmail.com'
  end
  object GroupBoxPortasCOM: TGroupBox
    Left = 8
    Top = 8
    Width = 121
    Height = 153
    Caption = 'Portas  COM'
    TabOrder = 0
    object ComboBoxPorta: TComboBox
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'N'#227'o Conectado'
    end
    object BotaoConectar: TButton
      Left = 24
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Conectar'
      TabOrder = 1
      OnClick = BotaoConectarClick
    end
    object BotaoDesconectar: TButton
      Left = 24
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Desconectar'
      TabOrder = 2
      OnClick = BotaoDesconectarClick
    end
    object Button3: TButton
      Left = 24
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 136
    Top = 8
    Width = 161
    Height = 281
    Caption = 'Vari'#225'veis Processo'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 17
      Height = 13
      Caption = 'SP:'
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 17
      Height = 13
      Caption = 'PV:'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 19
      Height = 13
      Caption = 'MV:'
    end
    object Label4: TLabel
      Left = 11
      Top = 148
      Width = 17
      Height = 13
      Caption = 'SP:'
    end
    object Edit1: TEdit
      Left = 40
      Top = 32
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0'
    end
    object Edit2: TEdit
      Left = 40
      Top = 64
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0'
    end
    object Edit3: TEdit
      Left = 40
      Top = 96
      Width = 105
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0'
    end
    object Edit4: TEdit
      Left = 32
      Top = 148
      Width = 81
      Height = 21
      TabOrder = 3
      Text = '0'
    end
    object Button1: TButton
      Left = 30
      Top = 176
      Width = 83
      Height = 25
      Caption = 'Enviar'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object Chart1: TChart
    Left = 304
    Top = 8
    Width = 1009
    Height = 361
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Gr'#225'fico Vari'#225'veis do Processo')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 60
    BottomAxis.Title.Caption = 'Segundos'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1024
    LeftAxis.Minimum = -10
    LeftAxis.Title.Caption = 'Temperatura'
    View3D = False
    TabOrder = 2
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'SetPoint'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'PV'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clYellow
      Title = 'MV'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1
      YValues.Order = loNone
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 168
    Width = 121
    Height = 121
    Caption = 'Tempo de Loop'
    TabOrder = 3
    object RadioButton1: TRadioButton
      Left = 8
      Top = 24
      Width = 105
      Height = 17
      Caption = '1 Segundo'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 40
      Width = 105
      Height = 17
      Caption = '0.5 Segundos'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 8
      Top = 56
      Width = 105
      Height = 17
      Caption = '0.1 Segundos'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 16
      Top = 80
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 336
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      object GanhosdoControlador1: TMenuItem
        Caption = 'Ganhos do Controlador'
        OnClick = GanhosdoControlador1Click
      end
    end
  end
  object Timer1: TTimer
    Interval = 0
    OnTimer = Timer1Timer
    Left = 80
    Top = 336
  end
end
