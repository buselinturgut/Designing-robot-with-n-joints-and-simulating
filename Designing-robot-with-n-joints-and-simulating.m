clear all; close all; clc;

syms phi_1_0 phi_2_1 phi_3_2 phi_4_3 phi_5_4 phi_6_5 phi_7_6 phi_8_7 phi_9_8 phi_a_9 phi_a_8 phi_a_7 phi_a_6 phi_a_5 phi_a_4 phi_a_3 phi_a_2 phi_a_1 phi_9_7 phi_9_6 phi_9_5 phi_9_4 phi_9_3 phi_9_2 phi_9_1 phi_8_6 phi_8_5 phi_8_4 phi_8_3 phi_8_2 phi_8_1 phi_7_5 phi_7_4 phi_7_3 phi_7_2 phi_7_1 phi_6_4 phi_6_3 phi_6_2 phi_6_1 phi_5_3 phi_5_2 phi_5_1 phi_4_2 phi_4_1 phi_3_1 
phi_1_0 =zeros(6,6);
phi_2_1 =zeros(6,6);
phi_3_2 =zeros(6,6);
phi_4_3 =zeros(6,6);
phi_5_4 =zeros(6,6);
phi_6_5 =zeros(6,6);
phi_7_6 =zeros(6,6);
phi_8_7 =zeros(6,6);
phi_9_8 =zeros(6,6);
phi_a_9 =zeros(6,6);
phi_a_8 =zeros(6,6);
phi_a_7 =zeros(6,6);
phi_a_6 =zeros(6,6);
phi_a_5 =zeros(6,6);
phi_a_4 =zeros(6,6);
phi_a_3 =zeros(6,6);
phi_a_2 =zeros(6,6);
phi_a_1 =zeros(6,6);
phi_9_7 =zeros(6,6);
phi_9_6 =zeros(6,6);
phi_9_5 =zeros(6,6);
phi_9_4 =zeros(6,6);
phi_9_3 =zeros(6,6);
phi_9_2 =zeros(6,6);
phi_9_1 =zeros(6,6);
phi_8_6 =zeros(6,6);
phi_8_5 =zeros(6,6);
phi_8_4 =zeros(6,6);
phi_8_3 =zeros(6,6);
phi_8_2 =zeros(6,6);
phi_8_1 =zeros(6,6);
phi_7_5 =zeros(6,6);
phi_7_4 =zeros(6,6);
phi_7_3 =zeros(6,6);
phi_7_2 =zeros(6,6);
phi_7_1 =zeros(6,6);
phi_6_4 =zeros(6,6);
phi_6_3 =zeros(6,6);
phi_6_2 =zeros(6,6);
phi_6_1 =zeros(6,6);
phi_5_3 =zeros(6,6);
phi_5_2 =zeros(6,6);
phi_5_1 =zeros(6,6);
phi_4_2 =zeros(6,6);
phi_4_1 =zeros(6,6);
phi_3_1 =zeros(6,6);
 syms mxx1 mxy1 mxz1 myx1 myy1 myz1 mzx1 mzy1 mzz1    %%
 syms mxx2 mxy2 mxz2 myx2 myy2 myz2 mzx2 mzy2 mzz2    %%
 syms mxx3 mxy3 mxz3 myx3 myy3 myz3 mzx3 mzy3 mzz3    %%
 syms mxx4 mxy4 mxz4 myx4 myy4 myz4 mzx4 mzy4 mzz4    %%a??rl?k merkezinin konumu i?in tan?mlamalar.
 syms mxx5 mxy5 mxz5 myx5 myy5 myz5 mzx5 mzy5 mzz5    %%
 syms mxx6 mxy6 mxz6 myx6 myy6 myz6 mzx6 mzy6 mzz6    %%
 syms mxx7 mxy7 mxz7 myx7 myy7 myz7 mzx7 mzy7 mzz7    %%
 syms mxx8 mxy8 mxz8 myx8 myy8 myz8 mzx8 mzy8 mzz8    %%
 syms mxx9 mxy9 mxz9 myx9 myy9 myz9 mzx9 mzy9 mzz9    %%

%ne kadar eksen sayimiz var ?
prompt = 'Robotumuz ka? eksenli ?'  ;
n = input(prompt)


syms t1 t2 t3 t4 t5 t6 t7 t8 t9  
t = [t1;t2;t3;t4;t5;t6;t7;t8;t9];
a=[t1];
for i=1:n
    a(1,i) = t(i,1);
end
a

%X, Y ve Z eksenleri i?in genel y?r?ngelerimiz a?a??daki gibidir;
X = [1;0;0];
Y = [0;1;0];
Z = [0;0;1];

sifir_6_matris= zeros(6,6);

I_6_matris= eye(6,6);

I_3_matris= eye(3,3);
            
sifir_2_matris=[0;0;0;0;0;0]; 
sifir_3_matris=[0;0;0];

%%H Matrislerimiz%%
 
 h1=[0;1;0]; 
 H1=[h1;sifir_3_matris];
 
 h2=[1;0;0]; 
 H2=[h2;sifir_3_matris];
 
 h3=[0;1;0];  
 H3=[h3;sifir_3_matris];
 
 h4=[1;0;0];  
 H4=[h4;sifir_3_matris];
 
 h5=[0;1;0];  
 H5=[h5;sifir_3_matris];
 
 h6=[1;0;0];  
 H6=[h6;sifir_3_matris];
 
 h7=[0;1;0];  
 H7=[h7;sifir_3_matris];
 
 h8=[1;0;0];  
 H8=[h8;sifir_3_matris];
 
 h9=[0;1;0];  
 H9=[h9;sifir_3_matris];
  
rev = [1     0     0     0     0     0 ;
         0     1     0     0     0     0 ;
         0     0     1     0     0     0 ;
         0     0    -1     1     0     0 ;
         0     0     0     0     1     0 ;
         1     0     0     0     0     1]; 
         
pris = [ 1     0     0     0     0     0 ;
              0     1     0     0     0     0 ;
              0     0     1     0     0     0 ;
              0     0     0     1     0     0 ;
              0     0     1     0     1     0 ;
              0    -1     0     0     0     1]; 



if n >= 1
    prompt = 'Robotun 1. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_1_0 = rev
    elseif a==2
        phi_1_0 = pris
    end
    phitb = phi_1_0;
end

if n>= 2
    prompt = 'Robotun 2. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_2_1 = rev
    elseif a==2
        phi_2_1 = pris
    end
    phitb = phitb*phi_2_1;
end

if n>= 3
    prompt = 'Robotun 3. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_3_2 = rev
    elseif a==2
        phi_3_2 = pris
    end
    phitb = phitb*phi_3_2;
end

if n>= 4
    prompt = 'Robotun 4. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_4_3 = rev
    elseif a==2
        phi_4_3 = pris
    end
    phitb = phitb*phi_4_3;
end

if n>= 5
    prompt = 'Robotun 5. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_5_4 = rev
    elseif a==2
        phi_5_4 = pris
    end
    phitb = phitb*phi_5_4;
end

if n>= 6
    prompt = 'Robotun 6. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_6_5 = rev
    elseif a==2
        phi_6_5 = pris
    end
    phitb = phitb*phi_6_5;
end

if n>= 7
    prompt = 'Robotun 7. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_7_6 = rev
    elseif a==2
        phi_7_6 = pris
    end
    phitb = phitb*phi_7_6;
end

if n>= 8
    prompt = 'Robotun 8. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_8_7 = rev
    elseif a==2
        phi_8_7 = pris
    end
    phitb = phitb*phi_8_7;
end

if n>= 9
    prompt = 'Robotun 9. ekseni d?nel mi(1) prizmatik mi (2)' ;
    a = input(prompt)
    if a == 1
        phi_9_8 = rev
    elseif a==2
        phi_9_8 = pris
    end
    phitb = phitb*phi_9_8;
end

phit = pris

%philerimizi ayr? ayr? d?ng?lere ald?k. phit ve phitb yazd?k.

%%genel phi matrisimizi elde edebilmemiz i?in ihtiyac?m?z olan phi de?erleri%%

phi_3_1=phi_3_2*phi_2_1;
phi_4_2=phi_4_3*phi_3_2;
phi_4_1=phi_4_2*phi_2_1;
phi_5_3=phi_5_4*phi_4_3;
phi_5_2=phi_5_3*phi_3_2;
phi_5_1=phi_5_2*phi_2_1;
phi_6_4=phi_6_5*phi_5_4;
phi_6_3=phi_6_4*phi_4_3;
phi_6_2=phi_6_3*phi_3_2;
phi_6_1=phi_6_2*phi_2_1;
phi_7_5=phi_7_6*phi_6_5;
phi_7_4=phi_7_5*phi_5_4;
phi_7_3=phi_7_4*phi_4_3;
phi_7_2=phi_7_3*phi_3_2;
phi_7_1=phi_7_2*phi_2_1;
phi_8_6=phi_8_7*phi_7_6;
phi_8_5=phi_8_6*phi_6_5;
phi_8_4=phi_8_5*phi_5_4;
phi_8_3=phi_8_4*phi_4_3;
phi_8_2=phi_8_3*phi_3_2;
phi_8_1=phi_8_2*phi_2_1;
phi_9_7=phi_9_8*phi_8_7;
phi_9_6=phi_9_7*phi_7_6;
phi_9_5=phi_9_6*phi_6_5;
phi_9_4=phi_9_5*phi_5_4;
phi_9_3=phi_9_4*phi_4_3;
phi_9_2=phi_9_3*phi_3_2;
phi_9_1=phi_9_2*phi_2_1;



% genel phi
phi_genel1=[I_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_2_1        I_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_3_1           phi_3_2         I_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_4_1           phi_4_2             phi_4_3        I_6_matris  sifir_6_matris  sifir_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_5_1           phi_5_2             phi_5_3            phi_5_4        I_6_matris  sifir_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_6_1           phi_6_2             phi_6_3            phi_6_4            phi_6_5        I_6_matris  sifir_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_7_1           phi_7_2             phi_7_3            phi_7_4            phi_7_5            phi_7_6        I_6_matris   sifir_6_matris  sifir_6_matris ;
               phi_8_1           phi_8_2             phi_8_3            phi_8_4            phi_8_5            phi_8_6              phi_8_7      I_6_matris   sifir_6_matris ;
               phi_9_1           phi_9_2             phi_9_3            phi_9_4            phi_9_5            phi_9_6              phi_9_7            phi_9_8      I_6_matris ];
% bizim i?in gerekli olan phi matrisini ay?kl?yoruz 

for i=1:6*n
 for j=1:6*n
 phi_son(i,j)=phi_genel1(i,j);   
end    
end 
phi_son
%phi matrisinin boyutu


if n==1
phit_genel1=[ phit]; 
sifir_6_matris=[phi_1_0];
end
if n==2
phit_genel1=[ sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris];
end
if n==3
phit_genel1=[sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris];
end
if n==4
phit_genel1=[ sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end
if n==5
phit_genel1=[ sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end
if n==6
phit_genel1=[ sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end
if n==7
phit_genel1=[sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end 
if n==8
phit_genel1=[sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end 
if n==9
phit_genel1=[sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris sifir_6_matris phit]; 
sifir_6_matris=[phi_1_0;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris;sifir_6_matris];
end

phitb_genel2_sonuc=phit_genel1*phi_son*sifir_6_matris;


H_genel1=[    H1          sifir_2_matris    sifir_2_matris    sifir_2_matris    sifir_2_matris    sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris ;
           sifir_2_matris        H2          sifir_2_matris    sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris    sifir_2_matris   sifir_2_matris ;
           sifir_2_matris   sifir_2_matris         H3          sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris    sifir_2_matris   sifir_2_matris ;
           sifir_2_matris   sifir_2_matris    sifir_2_matris         H4          sifir_2_matris    sifir_2_matris   sifir_2_matris    sifir_2_matris   sifir_2_matris ; 
           sifir_2_matris   sifir_2_matris    sifir_2_matris    sifir_2_matris         H5          sifir_2_matris   sifir_2_matris    sifir_2_matris   sifir_2_matris ;
           sifir_2_matris   sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris          H6         sifir_2_matris    sifir_2_matris   sifir_2_matris ;
           sifir_2_matris   sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris     sifir_2_matris         H7         sifir_2_matris   sifir_2_matris ;
           sifir_2_matris   sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris     sifir_2_matris    sifir_2_matris         H8        sifir_2_matris ;
           sifir_2_matris   sifir_2_matris    sifir_2_matris    sifir_2_matris   sifir_2_matris     sifir_2_matris    sifir_2_matris   sifir_2_matris        H9  ];
%%% istenilen boyutta bir  H_genel1 matrisi 
for i=1:6*n
 for j=1:n
 H_genel1_son(i,j)=H_genel1(i,j);   
end    
end 
size(H_genel1_son)
  %%Transpoz i?lemleri%%
 
  H_geneltranspoze=H_genel1_son.';
  Fi_Geneltranspoze=phi_son.';
%%Jakobiyen hesab?%%
  J1=phit_genel1*phi_son*H_genel1_son;
size(phit_genel1)
size(phi_son)
size(H_genel1_son)


%%Jakobiyenin tersi%%
j=J1;
if n >= 1
    prompt = 'Robotun 1. ekseninin h?z?' ;
    hiz_matrisi(1,1) = input(prompt);
end

if n>= 2
   prompt = 'Robotun 2. ekseninin h?z?' ;
    hiz_matrisi(2,1) = input(prompt);
end

if n>= 3
  prompt = 'Robotun 3. ekseninin h?z?' ;
    hiz_matrisi(3,1) = input(prompt);
end

if n>= 4
 prompt = 'Robotun 4. ekseninin h?z?' ;
    hiz_matrisi(4,1) = input(prompt);
end

if n>= 5
    prompt = 'Robotun 5. ekseninin h?z?' ;
    hiz_matrisi(5,1) = input(prompt);
end

if n>= 6
     prompt = 'Robotun 6. ekseninin h?z?' ;
    hiz_matrisi(6,1) = input(prompt);
end

if n>= 7
    prompt = 'Robotun 7. ekseninin h?z?' ;
    hiz_matrisi(7,1) = input(prompt);
end

if n>= 8
  prompt = 'Robotun 8. ekseninin h?z?' ;
    hiz_matrisi(8,1) = input(prompt);
end

if n>= 9
   prompt = 'Robotun 9. ekseninin h?z?' ;
    hiz_matrisi(9,1) = input(prompt);
end


hiz_matrisi

Q_cikti=j*hiz_matrisi;  %%dinamik analizinde kullanca??m?z Q ??kt?lar?%%
  
  
 Q_dot_t0=0;        %%
 Q_dot_t1=10.9048;  %%
 Q_dot_t2=6.2857;   %%
 Q_dot_t3=7.3333;   %%  Q 1. t?revi 
 Q_dot_t4=6.2857;   %%  kinematik analizden elde edilen de?erler
 Q_dot_t5=3.7619;   %% 
Q_dot_t6=13.4286;  %%
Q_dot_t7=6.2857;   %%
Q_dot_t8=3.7619;   %%
Q_dot_t9=7.3333;   %%
 

%%HIZ TANIMLAMALARI%%
 w0=[0;0;0];       
 w1=w0+h1*Q_dot_t1;
 w2=w1+h2*Q_dot_t2;
 w3=w2+h3*Q_dot_t3;
 w4=w3+h4*Q_dot_t4;
 w5=w4+h5*Q_dot_t5;
 w6=w5+h6*Q_dot_t6;
 w7=w6+h7*Q_dot_t7;
 w8=w7+h8*Q_dot_t8;
 w9=w8+h9*Q_dot_t9;
 
 zaman=0.01;
 Q_dot2_t0=0;                        %%
 Q_dot2_t1=(Q_dot_t1-Q_dot_t0)/zaman;  %%
 Q_dot2_t2=(Q_dot_t2-Q_dot_t1)/zaman;  %%
 Q_dot2_t3=(Q_dot_t3-Q_dot_t2)/zaman;  %%
 Q_dot2_t4=(Q_dot_t4-Q_dot_t3)/zaman;  %% Q 2. t?revi
 Q_dot2_t5=(Q_dot_t5-Q_dot_t4)/zaman;  %%
 Q_dot2_t6=(Q_dot_t6-Q_dot_t5)/zaman;  %%
 Q_dot2_t7=(Q_dot_t7-Q_dot_t6)/zaman;  %%
 Q_dot2_t8=(Q_dot_t8-Q_dot_t7)/zaman;  %%
 Q_dot2_t9=(Q_dot_t9-Q_dot_t8)/zaman;  %%

 ttt_genel=[Q_dot2_t1;Q_dot2_t2;Q_dot2_t3;Q_dot2_t4;Q_dot2_t5;Q_dot2_t6;Q_dot2_t7;Q_dot2_t8;Q_dot2_t9];
 for i=1:n
    ttt_genel_son(i,1)=ttt_genel(i,1); 
 end
 ttt_genel_son
 %%I matrisi i?in tan?mlamalar%%
 %%Kullan?c? isterse de?erleri de?i?tirebilir%%
 
 Ixx=1; 
 Ixy=1; 
 Ixz=1; 
 Iyx=1; 
 Iyy=1; 
 Iyz=1; 
 Izx=1; 
 Izy=1; 
 Izz=1;
 %%1 matrisi%%
 
 Isabit=[Ixx Ixy Ixz;  
         Iyx Iyy Iyz;
         Izx Izy Izz];
     
 l01=[0;1;0];  %%
 l12=[0;0;1];  %%
 l23=[0;0;1];  %%
 l34=[0;1;0];  %% linklerin y?nelim matrisleri
 l45=[1;0;0];  %%
 l56=[0;1;0];  %%
 l67=[0;1;0];  %%
 l78=[0;0;1];  %%
 l89=[0;1;0];  %%

 
 g1=[0;0.5;0];    %%
 g2=[0.5;0.5;0];  %%
 g3=[0.5;1;0];    %%
 g4=[1;1;0];      %% Robot'un a??rl?k merkezleri
 g5=[1;1.5;0];    %%
 g6=[1.5;1.5;0];  %%
 g7=[1.5;2;0];    %%
 g8=[2;2;0];    %%
 g9=[2;2.5;0];    %%

 l1cs=[0 0 0.5;0 0 0;-0.5 0 0];
 l2cs=[0 0 0.5;0 0 -0.5;-0.5 0.5 0];
 l3cs=[0 0 1;0 0 -0.5;-1 0.5 0];
 l4cs=[0 0 1;0 0 -1;-1 1 0];
 l5cs=[0 0 1.5;0 0 -1;-1.5 1 0];
 l6cs=[0 0 1.5;0 0 -1.5;-1.5 1.5 0];
 l7cs=[0 0 2;0 0 -1.5;-2 1.5 0];
 l8cs=[0 0 2;0 0 -2;-2 2 0];
 l9cs=[0 0 2;0 0 -2;-2.5 2 0];

 
 m1=[mxx1 mxy1 mxz1;myx1 myy1 myz1;mzx1 mzy1 mzz1];
 m2=[mxx2 mxy2 mxz2;myx2 myy2 myz2;mzx2 mzy2 mzz2];
 m3=[mxx3 mxy3 mxz3;myx3 myy3 myz3;mzx3 mzy3 mzz3];
 m4=[mxx4 mxy4 mxz4;myx4 myy4 myz4;mzx4 mzy4 mzz4];
 m5=[mxx5 mxy5 mxz5;myx5 myy5 myz5;mzx5 mzy5 mzz5];
 m6=[mxx6 mxy6 mxz6;myx6 myy6 myz6;mzx6 mzy6 mzz6];
 m7=[mxx7 mxy7 mxz7;myx7 myy7 myz7;mzx7 mzy7 mzz7];
 m8=[mxx8 mxy8 mxz8;myx8 myy8 myz8;mzx8 mzy8 mzz8];
 m9=[mxx9 mxy9 mxz9;myx9 myy9 myz9;mzx9 mzy9 mzz9];

 
 M1=[Isabit m1*l1cs;
    -m1*l1cs I_3_matris*m1];

M2=[Isabit m2*l2cs;
    -m2*l2cs I_3_matris*m2];

M3=[Isabit m3*l3cs;
    -m3*l3cs I_3_matris*m3];

M4=[Isabit m4*l4cs;
    -m4*l4cs I_3_matris*m4];

M5=[Isabit m5*l5cs;
    -m5*l5cs I_3_matris*m5];

M6=[Isabit m6*l6cs;
    -m6*l6cs I_3_matris*m6];

M7=[Isabit m7*l7cs;
    -m7*l7cs I_3_matris*m7];

M8=[Isabit m8*l8cs;
    -m8*l8cs I_3_matris*m8];

M9=[Isabit m9*l9cs;
    -m9*l9cs I_3_matris*m9];



 M_genel=[     M1         sifir_6_matris      sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris       M2             sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris           M3            sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris          M4            sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris     sifir_6_matris          M5            sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris     sifir_6_matris     sifir_6_matris          M6            sifir_6_matris     sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris          M7            sifir_6_matris     sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris          M8            sifir_6_matris ;
          sifir_6_matris  sifir_6_matris      sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris     sifir_6_matris           M9  ];
for i=1:6*n
 for j=1:6*n
 M_genel_son(i,j)=M_genel(i,j);   
 end    
end 
M_genel_son

 %%Ivmesel ifadeler %%
  
  
a1=[cross(w0,w1);
    cross(w0,cross(w0,l01))];

a2=[cross(w1,w2);
    cross(w1,cross(w1,l12))];

a3=[cross(w2,w3);
    cross(w2,cross(w2,l23))];

a4=[cross(w3,w4);
    cross(w3,cross(w3,l34))];

a5=[cross(w4,w5);
    cross(w4,cross(w4,l45))];

a6=[cross(w5,w6);
    cross(w5,cross(w5,l56))];

a7=[cross(w6,w7);
    cross(w6,cross(w6,l67))];

a8=[cross(w7,w8);
    cross(w7,cross(w7,l78))];

a9=[cross(w8,w9);
    cross(w8,cross(w8,l89))];



a_genel=[a1;a2;a3;a4;a5;a6;a7;a8;a9];

for i=1:6*n
a_genel_son(i,1)=a_genel(i,1);
end 
a_genel_son