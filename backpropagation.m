%girdiler
input1=0.05
input2=0.10

%aðýrlýklar
w1=0.15
w2=0.2
w3=0.25
w4=0.3
w5=0.4
w6=0.45
w7=0.3
w8=0.55

%öðrenme kat sayýsý
learningRate=0.5

%beklenen çýktýlar
target1=0.01
target2=0.99

%bias deðerleri
bias1=0.35
bias2=0.60

%iterayon sayýsý
iteration=100

%neth1 ve outh1 hesaplama
neth1=(input1*w1)+(input2*w2)+bias1
outh1=(1/(1+exp(-1*neth1)))

%neth2 ve outh21 hesaplama
neth2=(input1*w3)+(input2*w4)+bias1
outh2=(1/(1+exp(-1*neth2)))

%neto1 ve outo1 hesaplama
netO1=(outh1*w5)+(outh2*w6)+bias2
outO1=(1/(1+exp(-1*netO1)))

%neto2 ve outo2 hesaplama
netO2=(outh1*w7)+(outh2*w8)+bias2
outO2=(1/(1+exp(-1*netO2)))

%hedefler ile çýkýþlarýn hata oranlarýnýn hesaplanmasý
Error_O1=(1/2)*(target1-outO1)^2
Error_O1=(1/2)*(target2-outO2)^2

%toplam hatalarýn hesaplanmasý
Error_Total=Error_O1+Error_O1

%hata oraný hesaplama
errorRate=-(target1-outO1)*outO1*(1-outO1)

%hata oraný ile outh1 ile yeni bir deðiþken tanýmlama
newVariable=errorRate*outh1

%w5 üzerindeki aðýrlýk güncellemesi
w5=w5+(learningRate*(-newVariable))


