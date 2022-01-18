unit Vect;
interface

uses
  Classes;
type
 TPair=class
  first,second:real;
 end;
 TDat=class
 private
  _max,_min:real;
  _data:TList;
  _useAutoBorders:boolean;
  _xmin,_xmax:real;
  public
  Constructor Create;
  Destructor Destroy; override;
  Procedure AddPoint(x,f:real);
  Procedure Clear;
  Function Get(x:real):real; virtual;
  Procedure IsCalculateBorders(b:boolean);
  Procedure SetXMin(x:real);
  Procedure SetXMax(x:real);
  Function GetXMin:real;
  Function GetXMax:real;
  Property max:real read _max;
  Property min:real read _min;
  property f[x:real]:real read Get Write AddPoint; default;
 end;

 TDatLinInt=class(TDat)
  Function Get(x:real):real; override;
 end;


implementation

{ TDat }

procedure TDat.AddPoint(x, f: real);
var a:TPair; i,z:integer;
begin
 a:=TPair.Create;
 a.first:=x; a.second:=f;
 if (f>max) then
  _max:=f;
 if (f<min) then
  _min:=f;

 z:=-1;
 for i:=0 to _data.Count-1 do
  if TPair(_data.items[i]).first>x then
   begin
    z:=i;
    break;
   end;
  if z<>-1 then
  begin
   _data.Insert(z,a);
  end
  else
  _data.Add(a);


 if _useAutoBorders then
  begin
   if (_data.Count=1)then
    begin
     _xmin:=x;
     _xmax:=x;
    end
   else
    begin
     if x<_xmin then
      _xmin:=x;
     if x>_xmax then
      _xmax:=x;
    end;
  end;
end;

procedure TDat.Clear;
begin
 _data.Clear;
 _max:=0;
 _min:=0;
 _xmin:=0;
 _xmax:=0;
 _useAutoBorders:=true;
end;

constructor TDat.Create;
begin
 _data:=TList.Create;
 _max:=0;
 _min:=0;
 _xmin:=0;
 _xmax:=0;
 _useAutoBorders:=true;
end;

destructor TDat.Destroy;
begin
  _data.Free;
end;

function TDat.Get(x:real): real;
const eps=0.001;
var i:integer;
begin
 if (_xmin<=x) and (_xmax>=x) then
  begin
   for i:=0 to _data.Count-1 do
    if abs(TPair(_data.Items[i]).first-x)<eps then
     begin
      Get:=TPair(_data.Items[i]).second;
      exit;
     end;
   Get:=0;
  end
 else
  Get:=0;
end;

function TDat.GetXMax: real;
begin
 GetXMax:=_xmax;
end;

function TDat.GetXMin: real;
begin
 GetXMin:=_xmin;
end;

procedure TDat.IsCalculateBorders(b: boolean);
begin
 _useAutoBorders:=b;
end;

procedure TDat.SetXMax(x: real);
begin
 _xmax:=x;
end;

procedure TDat.SetXMin(x: real);
begin
 _xmin:=x;
end;

{ TDatLinInt }

function TDatLinInt.Get(x: real): real;
var i:integer; x0,x1,f0,f1,a:real;
begin
 a:=0;
 a:=inherited Get(x);
 if a<>0 then
  begin
   get:=a;
   exit;
  end;
 if (x>_xmax) or (x<_xmin) then
  begin
   get:=0;
   exit;
  end;
 i:=0;
 while i<_data.Count do
  begin
   if x<TPair(_data.Items[i]).first then
   begin
     break;
   end;
   inc(i);
  end;
 x0:=TPair(_data.Items[i-1]).first;
 x1:=TPair(_data.Items[i]).first;
 f0:=TPair(_data.Items[i-1]).second;
 f1:=TPair(_data.Items[i]).second;
 get:=f0+(f1-f0)/(x1-x0)*(x-x0);
 end;


end.
