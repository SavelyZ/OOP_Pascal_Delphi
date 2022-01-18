unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vect;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Button4: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure typeClick();
    procedure Button4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1; a,b:TDat; c,d:TDatLinInt;
  type_: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
    a:=TDat.Create();
    b:=TDat.Create();
    c:=TDatLinInt.create();
    d:=TDatLinInt.create();
    type_:= 0;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    case type_ of
      0:a[strToFloat(Edit1.Text)]:=StrToFloat(Edit2.Text);         //TDat vect
      1:b.addPoint(strToFloat(Edit1.Text),StrToFloat(Edit2.Text)); //TDat scale
      2:c[strToFloat(Edit1.Text)]:=StrToFloat(Edit2.Text);         //TDatLinInt vect
      3:d.addPoint(strToFloat(Edit1.Text),StrToFloat(Edit2.Text)); //TDatLinInt scale
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  case type_ of
    0:Edit4.Text:=floatToStr(a[strToFloat(Edit3.Text)]);
    1:Edit4.Text:=floatToStr(b.Get(strToFloat(Edit3.Text)));
    2:Edit4.Text:=floatToStr(c[strToFloat(Edit3.Text)]);
    3:Edit4.Text:=floatToStr(d.Get(strToFloat(Edit3.Text)));
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  case type_ of
     0:begin a.IsCalculateBorders(false); a.SetXMin(StrToFloat(Edit5.Text)); a.SetXMax(StrToFloat(Edit6.Text)); end;
     1:begin b.IsCalculateBorders(false); b.SetXMin(StrToFloat(Edit5.Text)); b.SetXMax(StrToFloat(Edit6.Text)); end;
     2:begin c.IsCalculateBorders(false); c.SetXMin(StrToFloat(Edit5.Text)); c.SetXMax(StrToFloat(Edit6.Text)); end;
     3:begin d.IsCalculateBorders(false); d.SetXMin(StrToFloat(Edit5.Text)); d.SetXMax(StrToFloat(Edit6.Text)); end;
  end;
end;

procedure TForm1.typeClick();
begin
  case type_ of
     0:begin Edit5.Text:=FloatTostr(a.GetXMin); Edit6.Text:=FloatTostr(a.GetXMax); end;
     1:begin Edit5.Text:=FloatTostr(b.GetXMin); Edit6.Text:=FloatTostr(b.GetXMax); end;
     2:begin Edit5.Text:=FloatTostr(c.GetXMin); Edit6.Text:=FloatTostr(c.GetXMax); end;
     3:begin Edit5.Text:=FloatTostr(d.GetXMin); Edit6.Text:=FloatTostr(d.GetXMax); end;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  case type_ of
    0:a.clear;
    1:b.clear;
    2:c.clear;
    3:d.clear;
  end;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  type_:= 0;
  typeClick();
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  type_:= 1;
  typeClick();
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  type_:= 2;
  typeClick();
end;

procedure TForm1.RadioButton4Click(Sender: TObject);
begin
  type_:= 3;
  typeClick();
end;

end.
