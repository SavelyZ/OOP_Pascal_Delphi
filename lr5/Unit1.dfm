object Form1: TForm1
  Left = 209
  Top = 819
  Width = 471
  Height = 197
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 105
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 120
    Top = 16
    Width = 105
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 8
    Top = 48
    Width = 105
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 120
    Top = 48
    Width = 105
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 232
    Top = 16
    Width = 89
    Height = 25
    Caption = 'Add'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Get'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit5: TEdit
    Left = 8
    Top = 80
    Width = 105
    Height = 21
    TabOrder = 6
  end
  object Edit6: TEdit
    Left = 120
    Top = 80
    Width = 105
    Height = 21
    TabOrder = 7
  end
  object Button3: TButton
    Left = 232
    Top = 80
    Width = 89
    Height = 25
    Caption = 'Border'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 48
    Top = 120
    Width = 145
    Height = 33
    Caption = 'Clear'
    TabOrder = 9
    OnClick = Button4Click
  end
  object RadioButton1: TRadioButton
    Left = 336
    Top = 16
    Width = 113
    Height = 17
    Caption = 'TDat vector'
    Checked = True
    TabOrder = 10
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 336
    Top = 40
    Width = 113
    Height = 17
    Caption = 'TDat scale'
    TabOrder = 11
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 336
    Top = 64
    Width = 113
    Height = 17
    Caption = 'TDatLinInt vect'
    TabOrder = 12
    OnClick = RadioButton3Click
  end
  object RadioButton4: TRadioButton
    Left = 336
    Top = 88
    Width = 113
    Height = 17
    Caption = 'TDatLinInt scale'
    TabOrder = 13
    OnClick = RadioButton4Click
  end
end
