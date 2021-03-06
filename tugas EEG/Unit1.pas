unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  Vcl.Mask, VCLTee.TeeSurfa, VCLTee.TeeTriSurface, Math, VCLTee.TeeTools;

type
  array_function = array [-30000..30000] of double;
  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Button2: TButton;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Series34: TLineSeries;
    Series35: TLineSeries;
    Series36: TLineSeries;
    Series37: TLineSeries;
    Series38: TLineSeries;
    Series39: TLineSeries;
    Series40: TLineSeries;
    Edit1: TEdit;
    Edit2: TEdit;
    Chart3: TChart;
    LineSeries1: TLineSeries;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    LineSeries7: TLineSeries;
    LineSeries8: TLineSeries;
    LineSeries9: TLineSeries;
    LineSeries10: TLineSeries;
    LineSeries11: TLineSeries;
    LineSeries12: TLineSeries;
    LineSeries13: TLineSeries;
    LineSeries14: TLineSeries;
    LineSeries15: TLineSeries;
    LineSeries16: TLineSeries;
    LineSeries17: TLineSeries;
    LineSeries18: TLineSeries;
    LineSeries19: TLineSeries;
    LineSeries20: TLineSeries;
    Chart4: TChart;
    LineSeries23: TLineSeries;
    LineSeries31: TLineSeries;
    LineSeries35: TLineSeries;
    Button3: TButton;
    RadioGroup1: TRadioGroup;
    Chart5: TChart;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ChartTool1: TRotateTool;
    Chart6: TChart;
    RotateTool1: TRotateTool;
    Chart7: TChart;
    RotateTool2: TRotateTool;
    Series42: TTriSurfaceSeries;
    Series41: TTriSurfaceSeries;
    Series43: TTriSurfaceSeries;
    Chart8: TChart;
    Series44: TLineSeries;
    Series45: TLineSeries;
    Series46: TLineSeries;
    Edit3: TEdit;
    Button4: TButton;
    Edit4: TEdit;
    procedure openfiletxt;
    procedure window;
    procedure dft;
    //function LPF_function(omega :extended;input: array_function) :array_function;
    //function HPF_function(omega2:extended;inputdarilpf: array_function) :array_function;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  P7,P4,ss,Cz,Pz,P3,P8,O1,O2,T8,F8,C4,F4,FP2,Fz,C3,F3,FP1,T7,F7,EXT  :array_function; //array [-100000..100000] of extended;
  p7filter,lpf,hpf : array_function;
  P7_LPF,P7_HPF,P4_LPF,P4_HPF,Cz_LPF,Cz_HPF,Pz_LPF,Pz_HPF,P3_LPF,P3_HPF,P8_LPF,P8_HPF,O1_LPF,O1_HPF,O2_LPF,O2_HPF,T8_LPF,T8_HPF,F8_LPF,F8_HPF : array_function;
  C4_LPF,F4_LPF,FP2_LPF,Fz_LPF,C3_LPF,F3_LPF,FP1_LPF,T7_LPF,F7_LPF,EXT_LPF : array_function;
  C4_HPF,F4_HPF,FP2_HPF,Fz_HPF,C3_HPF,F3_HPF,FP1_HPF,T7_HPF,F7_HPF,EXT_HPF : array_function;
  P7_sqr,P4_sqr,Cz_sqr,Pz_sqr,P3_sqr,P8_sqr,O1_sqr,O2_sqr,T8_sqr,F8_sqr,C4_sqr,F4_sqr,FP2_sqr,Fz_sqr,C3_sqr,F3_sqr,FP1_sqr,T7_sqr,F7_sqr,EXT_sqr : array_function;
  P7_mav,P7_mav1,P7_mav2,P7_mav3 : array_function;
  P4_mav,P4_mav1,P4_mav2,P4_mav3 : array_function;
  Cz_mav,Cz_mav1,Cz_mav2,Cz_mav3 : array_function;
  Pz_mav,Pz_mav1,Pz_mav2,Pz_mav3 : array_function;
  P3_mav,P3_mav1,P3_mav2,P3_mav3 : array_function;
  P8_mav,P8_mav1,P8_mav2,P8_mav3 : array_function;
  O1_mav,O1_mav1,O1_mav2,O1_mav3 : array_function;
  O2_mav,O2_mav1,O2_mav2,O2_mav3 : array_function;
  T8_mav,T8_mav1,T8_mav2,T8_mav3 : array_function;
  F8_mav,F8_mav1,F8_mav2,F8_mav3 : array_function;
  C4_mav,C4_mav1,C4_mav2,C4_mav3 : array_function;
  F4_mav,F4_mav1,F4_mav2,F4_mav3 : array_function;
  FP2_mav,FP2_mav1,FP2_mav2,FP2_mav3 : array_function;
  Fz_mav,Fz_mav1,Fz_mav2,Fz_mav3 : array_function;
  C3_mav,C3_mav1,C3_mav2,C3_mav3 : array_function;
  F3_mav,F3_mav1,F3_mav2,F3_mav3 : array_function;
  FP1_mav,FP1_mav1,FP1_mav2,FP1_mav3 : array_function;
  T7_mav,T7_mav1,T7_mav2,T7_mav3 : array_function;
  F7_mav,F7_mav1,F7_mav2,F7_mav3 : array_function;
  EXT_mav,EXT_mav1,EXT_mav2,EXT_mav3 : array_function;
  width_window,pergeseran,irisan,jml_window : integer;
  data_minim,data_maxim,Ndft,jdt_stft: integer;
  wh,Cz_xh,C4_xh,C3_xh,Cz_xfft_re,C4_xfft_re,C3_xfft_re : array_function;
  Cz_stft_inp_m,C4_stft_inp_m,C3_stft_inp_m : array[0..1000,-8000..30000] of extended;
  Cz_DFThasil,C4_DFThasil,C3_DFThasil,stft_inp_t,DFT_freq,stft_inp_f : array_function;
  Cz_redft,Cz_imdft,C4_redft,C4_imdft,C3_redft,C3_imdft,Cz_freq,C4_freq,C3_freq : array_function;
  data: textfile;
  wcc1,wcc2 : double;
  i,jdt,hh,mm:integer;
  C3_mav_2,C3_mav1_2,C3_mav2_2,C3_mav3_2,C3_lpf2,C3_HPF2 : array_function;

const
fs = 500;
implementation

{$R *.dfm}


procedure TForm1.openfiletxt;
var
  text,coba:string;
  getfs: tstringlist;
  t : double;
  ampas : integer;
begin
  if opendialog1.Execute then
  begin

    AssignFile(data,opendialog1.FileName);
    Reset (data);
    readln(data,text);

    while not eof(data) do
    begin
      Readln(data,hh,mm,ss[i],P7[i],P4[i],Cz[i],Pz[i],P3[i],P8[i],O1[i],O2[i],T8[i],F8[i],C4[i],F4[i],FP2[i],Fz[i],C3[i],F3[i],FP1[i],T7[i],F7[i],EXT[i]);
      inc(i);
    end;
    closefile(data);
    jdt:=i;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   openfiletxt;
    for i := 0 to jdt-1 do
    begin
    Series1.AddXY(i,P7[i]);
    Series2.AddXY(i,P4[i]);
    Series3.AddXY(i,Cz[i]);
    Series4.AddXY(i,Pz[i]);
    Series5.AddXY(i,P3[i]);
    Series6.AddXY(i,P8[i]);
    Series7.AddXY(i,O1[i]);
    Series8.AddXY(i,O2[i]);
    Series9.AddXY(i,T8[i]);
    Series10.AddXY(i,F8[i]);
    Series11.AddXY(i,C4[i]);
    Series12.AddXY(i,F4[i]);
    Series13.AddXY(i,FP2[i]);
    Series14.AddXY(i,Fz[i]);
    Series15.AddXY(i,C3[i]);
    Series16.AddXY(i,F3[i]);
    Series17.AddXY(i,FP1[i]);
    Series18.AddXY(i,T7[i]);
    Series19.AddXY(i,F7[i]);
    Series20.AddXY(i,EXT[i]);
    end;
end;

{function TForm1.LPF_function(omega :extended;input: array_function) :array_function;
var
j : integer;
begin
for j := 0 to jdt-1 do
  begin
   lpf[j]:=((((8*sqr(fs))-(2*sqr(omega)))*lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*omega)*fs)+(sqr(omega)))*lpf[j-2])+(sqr(omega)*input[j])+(2*sqr(omega)*input[j-1])+(sqr(omega)*input[j-2]))/((4*sqr(fs))+((2*sqrt(2)*omega)*fs)+(sqr(omega)));
   //hpf[j] := (4*lpf[j]-8*lpf[j-1]+4*lpf[j-2]-(2*sqr(1/fs)*sqr(omega2)-8)*hpf[j-1]-(sqr(omega2)*sqr(1/fs)-sqrt(2)*omega2*2*(1/fs)+4)*hpf[j-2])/(sqr(omega2)*sqr(1/fs)+sqrt(2)*omega2*2*(1/fs)+4);
  end;
  lpf_function:=lpf;
end;

function TForm1.HPF_function(omega2:extended;inputdarilpf: array_function) :array_function;
var
j : integer;
begin
for j := 0 to jdt-1 do
  begin
   //lpf[j]:=((((8*sqr(fs))-(2*sqr(omega)))*lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*omega)*fs)+(sqr(omega)))*lpf[j-2])+(sqr(omega)*input[j])+(2*sqr(omega)*input[j-1])+(sqr(omega)*input[j-2]))/((4*sqr(fs))+((2*sqrt(2)*omega)*fs)+(sqr(omega)));
   hpf[j] := (4*inputdarilpf[j]-8*inputdarilpf[j-1]+4*inputdarilpf[j-2]-(2*sqr(1/fs)*sqr(omega2)-8)*hpf[j-1]-(sqr(omega2)*sqr(1/fs)-sqrt(2)*omega2*2*(1/fs)+4)*hpf[j-2])/(sqr(omega2)*sqr(1/fs)+sqrt(2)*omega2*2*(1/fs)+4);
  end;
  hpf_function:=hpf;
end;}

procedure TForm1.Button2Click(Sender: TObject);
var
j,p,t,variabel : integer;
begin
  wcc1:=strtofloat(Edit1.text);
  wcc2:=strtofloat(Edit2.text);

  //bandpass filter
 for j := 0 to jdt-1 do
   begin
   //P7
   P7_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*P7_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*P7_lpf[j-2])+(sqr(wcc1)*P7[j])+(2*sqr(wcc1)*P7[j-1])+(sqr(wcc1)*P7[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   P7_hpf[j] := (4*P7_lpf[j]-8*P7_lpf[j-1]+4*P7_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*P7_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*P7_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //P7_sqr[j] := sqr(P7_hpf[j]);

   //P4
   P4_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*P4_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*P4_lpf[j-2])+(sqr(wcc1)*P4[j])+(2*sqr(wcc1)*P4[j-1])+(sqr(wcc1)*P4[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   P4_hpf[j] := (4*P4_lpf[j]-8*P4_lpf[j-1]+4*P4_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*P4_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*P4_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //P4_sqr[j] := sqr(P4_hpf[j]);

   //Cz
   Cz_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*Cz_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*Cz_lpf[j-2])+(sqr(wcc1)*Cz[j])+(2*sqr(wcc1)*Cz[j-1])+(sqr(wcc1)*Cz[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   Cz_hpf[j] := (4*Cz_lpf[j]-8*Cz_lpf[j-1]+4*Cz_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*Cz_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*Cz_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //Cz_sqr[j] := sqr(Cz_hpf[j]);

   //Pz
   Pz_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*Pz_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*Pz_lpf[j-2])+(sqr(wcc1)*Pz[j])+(2*sqr(wcc1)*Pz[j-1])+(sqr(wcc1)*Pz[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   Pz_hpf[j] := (4*Pz_lpf[j]-8*Pz_lpf[j-1]+4*Pz_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*Pz_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*Pz_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //Pz_sqr[j] := sqr(Pz_hpf[j]);

   //P3
   P3_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*P3_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*P3_lpf[j-2])+(sqr(wcc1)*P3[j])+(2*sqr(wcc1)*P3[j-1])+(sqr(wcc1)*P3[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   P3_hpf[j] := (4*P3_lpf[j]-8*P3_lpf[j-1]+4*P3_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*P3_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*P3_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //P3_sqr[j] := sqr(P3_hpf[j]);

   //P8
   P8_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*P8_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*P8_lpf[j-2])+(sqr(wcc1)*P8[j])+(2*sqr(wcc1)*P8[j-1])+(sqr(wcc1)*P8[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   P8_hpf[j] := (4*P8_lpf[j]-8*P8_lpf[j-1]+4*P8_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*P8_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*P8_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //P8_sqr[j] := sqr(P8_hpf[j]);

   //O1
   O1_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*O1_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*O1_lpf[j-2])+(sqr(wcc1)*O1[j])+(2*sqr(wcc1)*O1[j-1])+(sqr(wcc1)*O1[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   O1_hpf[j] := (4*O1_lpf[j]-8*O1_lpf[j-1]+4*O1_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*O1_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*O1_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //O1_sqr[j] := sqr(O1_hpf[j]);

   //O2
   O2_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*O2_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*O2_lpf[j-2])+(sqr(wcc1)*O2[j])+(2*sqr(wcc1)*O2[j-1])+(sqr(wcc1)*O2[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   O2_hpf[j] := (4*O2_lpf[j]-8*O2_lpf[j-1]+4*O2_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*O2_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*O2_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //O2_sqr[j] := sqr(O2_hpf[j]);

   //T8
   T8_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*T8_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*T8_lpf[j-2])+(sqr(wcc1)*T8[j])+(2*sqr(wcc1)*T8[j-1])+(sqr(wcc1)*T8[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   T8_hpf[j] := (4*T8_lpf[j]-8*T8_lpf[j-1]+4*T8_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*T8_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*T8_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //T8_sqr[j] := sqr(T8_hpf[j]);

   //F8
   F8_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*F8_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*F8_lpf[j-2])+(sqr(wcc1)*F8[j])+(2*sqr(wcc1)*F8[j-1])+(sqr(wcc1)*F8[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   F8_hpf[j] := (4*F8_lpf[j]-8*F8_lpf[j-1]+4*F8_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*F8_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*F8_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //F8_sqr[j] := sqr(F8_hpf[j]);

   //C4
   C4_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*C4_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*C4_lpf[j-2])+(sqr(wcc1)*C4[j])+(2*sqr(wcc1)*C4[j-1])+(sqr(wcc1)*C4[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   C4_hpf[j] := (4*C4_lpf[j]-8*C4_lpf[j-1]+4*C4_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*Cz_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*C4_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //C4_sqr[j] := sqr(C4_hpf[j]);

   //F4
   F4_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*F4_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*F4_lpf[j-2])+(sqr(wcc1)*F4[j])+(2*sqr(wcc1)*F4[j-1])+(sqr(wcc1)*F4[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   F4_hpf[j] := (4*F4_lpf[j]-8*F4_lpf[j-1]+4*F4_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*F4_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*F4_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //F4_sqr[j] := sqr(F4_hpf[j]);

   //FP2
   FP2_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*FP2_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*FP2_lpf[j-2])+(sqr(wcc1)*FP2[j])+(2*sqr(wcc1)*FP2[j-1])+(sqr(wcc1)*FP2[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   FP2_hpf[j] := (4*FP2_lpf[j]-8*FP2_lpf[j-1]+4*FP2_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*FP2_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*FP2_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //FP2_sqr[j] := sqr(FP2_hpf[j]);

   //Fz
   Fz_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*Fz_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*Fz_lpf[j-2])+(sqr(wcc1)*Fz[j])+(2*sqr(wcc1)*Fz[j-1])+(sqr(wcc1)*Fz[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   Fz_hpf[j] := (4*Fz_lpf[j]-8*Fz_lpf[j-1]+4*Fz_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*Fz_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*Fz_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //Fz_sqr[j] := sqr(Fz_hpf[j]);}

   //C3
   C3_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*C3_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*C3_lpf[j-2])+(sqr(wcc1)*C3[j])+(2*sqr(wcc1)*C3[j-1])+(sqr(wcc1)*C3[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   C3_hpf[j] := (4*C3_lpf[j]-8*C3_lpf[j-1]+4*C3_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*C3_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*C3_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //C3_sqr[j] := sqr(C3_hpf[j]);

   //F3
   F3_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*F3_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*F3_lpf[j-2])+(sqr(wcc1)*F3[j])+(2*sqr(wcc1)*F3[j-1])+(sqr(wcc1)*F3[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   F3_hpf[j] := (4*F3_lpf[j]-8*F3_lpf[j-1]+4*F3_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*F3_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*F3_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //F3_sqr[j] := sqr(F3_hpf[j]);

   //FP1
   FP1_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*FP1_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*FP1_lpf[j-2])+(sqr(wcc1)*FP1[j])+(2*sqr(wcc1)*FP1[j-1])+(sqr(wcc1)*FP1[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   FP1_hpf[j] := (4*FP1_lpf[j]-8*FP1_lpf[j-1]+4*FP1_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*FP1_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*FP1_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //FP1_sqr[j] := sqr(FP1_hpf[j]);

   //T7
   T7_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*T7_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*T7_lpf[j-2])+(sqr(wcc1)*T7[j])+(2*sqr(wcc1)*T7[j-1])+(sqr(wcc1)*T7[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   T7_hpf[j] := (4*T7_lpf[j]-8*T7_lpf[j-1]+4*T7_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*T7_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*T7_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //T7_sqr[j] := sqr(T7_hpf[j]);

   //F7
   F7_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*F7_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*F7_lpf[j-2])+(sqr(wcc1)*F7[j])+(2*sqr(wcc1)*F7[j-1])+(sqr(wcc1)*F7[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   F7_hpf[j] := (4*F7_lpf[j]-8*F7_lpf[j-1]+4*F7_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*F7_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*F7_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //F7_sqr[j] := sqr(F7_hpf[j]);

   //EXT
   EXT_lpf[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*EXT_lpf[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*EXT_lpf[j-2])+(sqr(wcc1)*EXT[j])+(2*sqr(wcc1)*EXT[j-1])+(sqr(wcc1)*EXT[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
   EXT_hpf[j] := (4*EXT_lpf[j]-8*EXT_lpf[j-1]+4*EXT_lpf[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*EXT_hpf[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*EXT_hpf[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
   //EXT_sqr[j] := sqr(EXT_hpf[j]);

   Series21.AddXY(j,P7_hpf[j]);
   Series22.AddXY(j,P4_hpf[j]);
   Series23.AddXY(j,Cz_hpf[j]);
   Series24.AddXY(j,Pz_hpf[j]);
   Series25.AddXY(j,P3_hpf[j]);
   Series26.AddXY(j,P8_hpf[j]);
   Series27.AddXY(j,O1_hpf[j]);
   Series28.AddXY(j,O2_hpf[j]);
   Series29.AddXY(j,T8_hpf[j]);
   Series30.AddXY(j,F8_hpf[j]);
   Series31.AddXY(j,C4_hpf[j]);
   Series32.AddXY(j,F4_hpf[j]);
   Series33.AddXY(j,FP2_hpf[j]);
   Series34.AddXY(j,Fz_hpf[j]);
   Series35.AddXY(j,C3_hpf[j]);
   Series36.AddXY(j,F3_hpf[j]);
   Series37.AddXY(j,FP1_hpf[j]);
   Series38.AddXY(j,T7_hpf[j]);
   Series39.AddXY(j,F7_hpf[j]);
   Series40.AddXY(j,EXT_hpf[j]);

   end;

  T := 32;
  for i := 0 to jdt-1 do
  begin
       for variabel := 0 to t-1 do
       begin
       P7_mav[i]:= P7_mav[i] + P7_hpf[i-variabel];
       P4_mav[i]:= P4_mav[i] + P4_hpf[i-variabel];
       Cz_mav[i]:= Cz_mav[i] + Cz_hpf[i-variabel];
       Pz_mav[i]:= Pz_mav[i] + Pz_hpf[i-variabel];
       P3_mav[i]:= P3_mav[i] + P3_hpf[i-variabel];
       P8_mav[i]:= P8_mav[i] + P8_hpf[i-variabel];
       O1_mav[i]:= O1_mav[i] + O1_hpf[i-variabel];
       O2_mav[i]:= O2_mav[i] + O2_hpf[i-variabel];
       T8_mav[i]:= T8_mav[i] + T8_hpf[i-variabel];
       F8_mav[i]:= F8_mav[i] + F8_hpf[i-variabel];
       C4_mav[i]:= C4_mav[i] + C4_hpf[i-variabel];
       F4_mav[i]:= F4_mav[i] + F4_hpf[i-variabel];
       FP2_mav[i]:= FP2_mav[i] + FP2_hpf[i-variabel];
       Fz_mav[i]:= Fz_mav[i] + Fz_hpf[i-variabel];
       C3_mav[i]:= C3_mav[i] + C3_hpf[i-variabel];
       F3_mav[i]:= F3_mav[i] + F3_hpf[i-variabel];
       FP1_mav[i]:= FP1_mav[i] + FP1_hpf[i-variabel];
       T7_mav[i]:= T7_mav[i] + T7_hpf[i-variabel];
       F7_mav[i]:= F7_mav[i] + F7_hpf[i-variabel];
       EXT_mav[i]:= EXT_mav[i] + EXT_hpf[i-variabel];

       end;
       P7_mav1[i]:= P7_mav[i]/t;
       P4_mav1[i]:= P4_mav[i]/t;
       Cz_mav1[i]:= Cz_mav[i]/t;
       Pz_mav1[i]:= Pz_mav[i]/t;
       P3_mav1[i]:= P3_mav[i]/t;
       P8_mav1[i]:= P3_mav[i]/t;
       O1_mav1[i]:= O1_mav[i]/t;
       O2_mav1[i]:= O2_mav[i]/t;
       T8_mav1[i]:= T8_mav[i]/t;
       F8_mav1[i]:= F8_mav[i]/t;
       C4_mav1[i]:= C4_mav[i]/t;
       F4_mav1[i]:= F4_mav[i]/t;
       FP2_mav1[i]:= FP2_mav[i]/t;
       Fz_mav1[i]:= Fz_mav[i]/t;
       C3_mav1[i]:= C3_mav[i]/t;
       F3_mav1[i]:= F3_mav[i]/t;
       FP1_mav1[i]:= FP1_mav[i]/t;
       T7_mav1[i]:= T7_mav[i]/t;
       F7_mav1[i]:= F7_mav[i]/t;
       EXT_mav1[i]:= EXT_mav[i]/t;
  end;


  for i := 0 to jdt-1 do
  begin
       for variabel := 0 to t-1 do
       begin
       P7_mav2[i]:=P7_mav2[i] + P7_mav1[i+variabel];
       P4_mav2[i]:= P4_mav2[i] + P4_mav1[i+variabel];
       Cz_mav2[i]:= Cz_mav2[i] + Cz_mav1[i+variabel];
       Pz_mav2[i]:= Pz_mav2[i] + Pz_mav1[i+variabel];
       P3_mav2[i]:= P3_mav2[i] + P3_mav1[i+variabel];
       P8_mav2[i]:= P8_mav2[i] + P8_mav1[i+variabel];
       O1_mav2[i]:= O1_mav2[i] + O1_mav1[i+variabel];
       O2_mav2[i]:= O2_mav2[i] + O2_mav1[i+variabel];
       T8_mav2[i]:= T8_mav2[i] + T8_mav1[i+variabel];
       F8_mav2[i]:= F8_mav2[i] + F8_mav1[i+variabel];
       C4_mav2[i]:= C4_mav2[i] + C4_mav1[i+variabel];
       F4_mav2[i]:= F4_mav2[i] + F4_mav1[i+variabel];
       FP2_mav2[i]:= FP2_mav2[i] + FP2_mav1[i+variabel];
       Fz_mav2[i]:= Fz_mav2[i] + Fz_mav1[i+variabel];
       C3_mav2[i]:= C3_mav2[i] + C3_mav1[i+variabel];
       F3_mav2[i]:= F3_mav2[i] + F3_mav1[i+variabel];
       FP1_mav2[i]:= FP1_mav2[i] + FP1_mav1[i+variabel];
       T7_mav2[i]:= T7_mav2[i] + T7_mav1[i+variabel];
       F7_mav2[i]:= F7_mav2[i] + F7_mav1[i+variabel];
       EXT_mav2[i]:= EXT_mav2[i] + EXT_mav1[i+variabel];

       end;
       P7_mav3[i]:= P7_mav2[i]/t;
       P4_mav3[i]:= P4_mav2[i]/t;
       Cz_mav3[i]:= Cz_mav2[i]/t;
       Pz_mav3[i]:= Pz_mav2[i]/t;
       P3_mav3[i]:=P3_mav2[i]/t;
       P8_mav3[i]:= P3_mav2[i]/t;
       O1_mav3[i]:= O1_mav2[i]/t;
       O2_mav3[i]:= O2_mav2[i]/t;
       T8_mav3[i]:= T8_mav2[i]/t;
       F8_mav3[i]:= F8_mav2[i]/t;
       C4_mav3[i]:= C4_mav2[i]/t;
       F4_mav3[i]:= F4_mav2[i]/t;
       FP2_mav3[i]:= FP2_mav2[i]/t;
       Fz_mav3[i]:= Fz_mav2[i]/t;
       C3_mav3[i]:= C3_mav2[i]/t;
       F3_mav3[i]:= F3_mav2[i]/t;
       FP1_mav3[i]:= FP1_mav2[i]/t;
       T7_mav3[i]:= T7_mav2[i]/t;
       F7_mav3[i]:= F7_mav2[i]/t;
       EXT_mav3[i]:= EXT_mav2[i]/t;

       chart3.Series[0].AddXY(i*60/fs,P7_mav3[i]);
       chart3.Series[1].AddXY(i*60/fs,P4_mav3[i]);
       chart3.Series[2].AddXY(i*60/fs,Cz_mav3[i]);
       chart3.Series[3].AddXY(i*60/fs,Pz_mav3[i]);
       chart3.Series[4].AddXY(i*60/fs,P3_mav3[i]);
       chart3.Series[5].AddXY(i*60/fs,P8_mav3[i]);
       chart3.Series[6].AddXY(i*60/fs,O1_mav3[i]);
       chart3.Series[7].AddXY(i*60/fs,O2_mav3[i]);
       chart3.Series[8].AddXY(i*60/fs,T8_mav3[i]);
       chart3.Series[9].AddXY(i*60/fs,F8_mav3[i]);
       chart3.Series[10].AddXY(i*60/fs,C4_mav3[i]);
       chart3.Series[11].AddXY(i*60/fs,F4_mav3[i]);
       chart3.Series[12].AddXY(i*60/fs,FP2_mav3[i]);
       chart3.Series[13].AddXY(i*60/fs,Fz_mav3[i]);
       chart3.Series[14].AddXY(i*60/fs,C3_mav3[i]);
       chart3.Series[15].AddXY(i*60/fs,F3_mav3[i]);
            chart3.Series[16].AddXY(i*60/fs,FP1_mav3[i]);
                   chart3.Series[17].AddXY(i*60/fs,T7_mav3[i]);
                          chart3.Series[18].AddXY(i*60/fs,F7_mav3[i]);
                                 chart3.Series[19].AddXY(i*60/fs,EXT_mav3[i]);
  end;
end;

procedure TForm1.window;
var
i,k,min,max,z,q,jj : integer;
begin
data_minim:=strtoint(MaskEdit1.Text);
data_maxim:=strtoint(MaskEdit2.Text);
width_window := strtoint(maskedit3.text);
pergeseran := strtoint(maskedit4.Text);
jdt_stft := data_maxim-data_minim;
irisan := width_window - pergeseran;
jml_window := round(jdt/((width_window div 2)+pergeseran))+1;


for k :=0 to jml_window do
  begin
    min := k*((width_window div 2) + pergeseran) - (width_window div 2);
    max := min + width_window;
    if min<0 then min := 0 ;
    for i := 0 to jdt-1 do
      wh[i]:= 0;

      for i := min to max do
        begin

        if radiogroup1.ItemIndex=0 then  //triangular
        begin
          wh[i] := 1 - (abs(((2*(i-k*((width_window div 2)+ pergeseran+1))))/(width_window-1)));

          Cz_xh[i] := Cz_mav3[i] * wh[i];
          C4_xh[i] := C4_mav3[i] * wh[i];
          C3_xh[i] := C3_mav3[i] * wh[i];

          Cz_xfft_re[i-min] := Cz_xh[i];
          C4_xfft_re[i-min] := C4_xh[i];
          C3_xfft_re[i-min] := C3_xh[i];
        end;

        if radiogroup1.ItemIndex=1 then  //Rectangular
        begin
          wh[i] := 1;
          Cz_xh[i] := Cz_mav3[i] * wh[i];
          C4_xh[i] := C4_mav3[i] * wh[i];
          C3_xh[i] := C3_mav3[i] * wh[i];

          Cz_xfft_re[i-min] := Cz_xh[i];
          C4_xfft_re[i-min] := C4_xh[i];
          C3_xfft_re[i-min] := C3_xh[i];
        end;
        if radiogroup1.ItemIndex=2 then  //Hamming
        begin
         wh[i] := 0.54 + 0.46 * cos ((2*pi*(i-k*((width_window div 2)+ pergeseran)))/(width_window));
         Cz_xh[i] := Cz_mav3[i] * wh[i];
         C4_xh[i] := C4_mav3[i] * wh[i];
         C3_xh[i] := C3_mav3[i] * wh[i];

         Cz_xfft_re[i-min] := Cz_xh[i];
         C4_xfft_re[i-min] := C4_xh[i];
         C3_xfft_re[i-min] := C3_xh[i];
        end;
        if radiogroup1.ItemIndex=3 then  //Hanning
        begin
         wh[i] := 0.5 + 0.5 * cos ((2*pi*(i-k*((width_window div 2)+ pergeseran)))/(width_window));
         Cz_xh[i] := Cz_mav3[i] * wh[i];
         C4_xh[i] := C4_mav3[i] * wh[i];
         C3_xh[i] := C3_mav3[i] * wh[i];

         Cz_xfft_re[i-min] := Cz_xh[i];
         C4_xfft_re[i-min] := C4_xh[i];
         C3_xfft_re[i-min] := C3_xh[i];
        end;

        end;
      Ndft := (max-min)+1;
      DFT;

      for i := 0 to round(fs/2) do
        begin
         Cz_stft_inp_m[k,i] := Cz_DFThasil[i];
         C4_stft_inp_m[k,i] := C4_DFThasil[i];
         C3_stft_inp_m[k,i] := C3_DFThasil[i];
         stft_inp_f[i] := DFT_freq[i];
        end;

  end;

      for k := 0 to jml_window-1 do
      begin
        stft_inp_t[k] := ((((width_window div 2)+ pergeseran)*k+data_minim)/fs);
      end;
end;

procedure TForm1.DFT;
var
z,q : integer;

begin
      for z := 0 to jdt_stft-1 do
      begin
      Cz_redft[z]:=0;
      Cz_imdft[z]:=0;

      C4_redft[z]:=0;
      C4_imdft[z]:=0;

      C3_redft[z]:=0;
      C3_imdft[z]:=0;

      DFT_freq[z] := z*fs/jdt;

      for q := 0 to jdt_stft-1 do
      begin
      Cz_redft[z]:=Cz_redft[z]+Cz_xh[q]*cos(2*pi*q*z/jdt_stft);
      Cz_imdft[z]:=Cz_imdft[z]-Cz_xh[q]*sin(2*pi*q*z/jdt_stft);
      Cz_freq[z]:=sqr(Cz_redft[z])+sqr(Cz_imdft[z]);

      C4_redft[z]:=C4_redft[z]+C4_xh[q]*cos(2*pi*q*z/jdt_stft);
      C4_imdft[z]:=C4_imdft[z]-C4_xh[q]*sin(2*pi*q*z/jdt_stft);
      C4_freq[z]:=sqr(C4_redft[z])+sqr(C4_imdft[z]);

      C3_redft[z]:=C3_redft[z]+C3_xh[q]*cos(2*pi*q*z/jdt_stft);
      C3_imdft[z]:=C3_imdft[z]-C3_xh[q]*sin(2*pi*q*z/jdt_stft);
      C3_freq[z]:=sqr(C3_redft[z])+sqr(C3_imdft[z]);
      end;
      Cz_DFThasil[z]:=(sqrt(sqr(Cz_redft[z])+sqr(Cz_imdft[z])))/jdt_stft;
      C4_DFThasil[z]:=(sqrt(sqr(C4_redft[z])+sqr(C3_imdft[z])))/jdt_stft;
      C3_DFThasil[z]:=(sqrt(sqr(C3_redft[z])+sqr(C4_imdft[z])))/jdt_stft;
      end;

      for z := 0 to round(jdt_stft/2)-1 do
        begin
          chart4.Series[0].AddXY(z*fs/jdt_stft,Cz_DFThasil[z]);
          chart4.Series[1].AddXY(z*fs/jdt_stft,C4_DFThasil[z]);
          chart4.Series[2].AddXY(z*fs/jdt_stft,C3_DFThasil[z]);
        end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i,k,j,variabel,t : integer;
begin
window;
t:=32;
For i:= 0 to jml_window-1 do
Begin
  For k :=0 to round(fs/2) do
  Begin
    Series42.AddXYZ(stft_inp_t[i],Cz_stft_inp_m[i,k],stft_inp_f[k]);
    Series41.AddXYZ(stft_inp_t[i],C4_stft_inp_m[i,k],stft_inp_f[k]);
    Series43.AddXYZ(stft_inp_t[i],C3_stft_inp_m[i,k],stft_inp_f[k]);
   { Listbox1.Items.Add(' m : '+floattostr(stft_inp_m[i,k]));
    Listbox2.Items.Add(' f : '+floattostr(stft_inp_f[k]));
    Listbox3.Items.Add(' t : '+floattostr(stft_inp_t[i]));}
  end;
end;

for j := 0 to jdt-1 do
 begin
 C3_lpf2[j]:=((((8*sqr(fs))-(2*sqr(wcc1)))*C3_lpf2[j-1])-(((4*sqr(fs))-((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)))*C3_lpf2[j-2])+(sqr(wcc1)*C3[j])+(2*sqr(wcc1)*C3[j-1])+(sqr(wcc1)*C3[j-2]))/((4*sqr(fs))+((2*sqrt(2)*wcc1)*fs)+(sqr(wcc1)));
 C3_hpf2[j] := (4*C3_lpf2[j]-8*C3_lpf2[j-1]+4*C3_lpf2[j-2]-(2*sqr(1/fs)*sqr(wcc2)-8)*C3_hpf2[j-1]-(sqr(wcc2)*sqr(1/fs)-sqrt(2)*wcc2*2*(1/fs)+4)*C3_hpf2[j-2])/(sqr(wcc2)*sqr(1/fs)+sqrt(2)*wcc2*2*(1/fs)+4);
 C3_sqr[j] := sqr(C3_hpf2[j]);
 Series44.AddXY(j,C3_HPF2[j]);
 Series45.AddXY(j,C3_sqr[j]);
 end;

for i := 0 to jdt-1 do
  begin
       for variabel := 0 to t-1 do
       begin
        C3_mav_2[i]:= C3_mav_2[i] + C3_hpf2[i-variabel];
       end;
       C3_mav1_2[i]:= C3_mav_2[i]/t;
  end;

for i := 0 to jdt-1 do
  begin
       for variabel := 0 to t-1 do
       begin
        C3_mav2_2[i]:= C3_mav2_2[i] + C3_mav1_2[i+variabel];
       end;
       C3_mav3_2[i]:= C3_mav2_2[i]/t;
       Series46.AddXY(i,C3_mav3_2[i]);
  end;


end;


procedure TForm1.Button4Click(Sender: TObject);
var
erd_batas :integer;
erd : extended;
begin
erd_batas:=strtoint(edit3.Text);

for i := data_minim to data_maxim do
  begin
    ERD:= (C3_mav3_2[erd_batas-4]- C3_mav3_2[erd_batas])*100/ C3_mav3_2[erd_batas]
  end;
 Edit4.Text := floattostr(erd);
end;

end.
