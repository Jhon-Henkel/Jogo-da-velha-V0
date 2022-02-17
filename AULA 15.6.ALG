Algoritmo "AULA 15.6"
//
// Descrição   : Jogo da velha
// Autor(a)    : Jhon
// Data atual  : 25/1/2022

Var
   J:vetor[1..3,1..3]de caractere
   sx:vetor[1..3,1..3]de inteiro
   so:vetor[1..3,1..3]de inteiro
   S:vetor[1..8]de inteiro
   SOO:vetor[1..8]de inteiro
   P,X,O,STX,STO,DV,SV,FA:inteiro
   fv,ov,VX,VO,RF:caractere
   
//validador de campeão
funcao campeao():caractere

inicio
   se(STX=30)entao
     escreval()
     escreval("Fim de jogo!!! Parabéns jogador do 'X'!!!")
     interrompa
   senao
     se(STO=90) entao
       escreval()
       escreval("Fim de jogo!!! Parabéns jogador do 'O'!!!")
       interrompa
     fimse
   fimse

   retorne(RF)

fimfuncao

//validador de jogada X
funcao validadorX(): caractere

inicio
   limpatela
   ov<-velha()
   escreval("Jogada invalida, tente novamente.")
   escreval()
   escreval("Onde deseja colocar o 'X'?")
   leia(X)
   retorne(VX)
   
fimfuncao

//Validador de jogada O
funcao validadorO(): caractere

inicio
   limpatela
   ov<-velha()
   escreval("Jogada invalida, tente novamente.")
   escreval()
   escreval("Onde deseja colocar o 'O'?")
   leia(O)
   retorne(VO)

fimfuncao
   
//Mostrar velha
funcao velha():caractere

inicio
   limpatela
   escreval()
   escreval(" ",J[1,1]," | ",J[2,1]," | ",J[3,1])
   escreval("-----------")
   escreval(" ",J[1,2]," | ",J[2,2]," | ",J[3,2])
   escreval("-----------")
   escreval(" ",J[1,3]," | ",J[2,3]," | ",J[3,3])
   escreval()

   retorne(fv)

fimfuncao

Inicio

   J[1,1]<-"1"
   J[1,2]<-"4"
   J[1,3]<-"7"
   J[2,1]<-"2"
   J[2,2]<-"5"
   J[2,3]<-"8"
   J[3,1]<-"3"
   J[3,2]<-"6"
   J[3,3]<-"9"

   escreval("|----Jogo da velha----|")
   escreval("|---------------------|")
   escreval("|                     |")
   escreval("|-[1]-Single player---|")
   escreval("|-[2]-Two players-----|")
   escreval("|                     |")
   escreval("|---------------------|")
   escreval("|---------------------|")
   escreval()
   escreva("Digite sua opção: ")
   leia(P)
   
////////////////////////////////////////////////////////////
////////////////////// Single Player ///////////////////////
////////////////////////////////////////////////////////////
   
   se(P=1)entao
     fv<-velha()
     X<-0
     O<-0
     SV<-0
     
///////////////////////////////////////
/////////// 1P Codigo X ///////////////
///////////////////////////////////////

     enquanto (SV<9) faca
     
       se (SV=9)entao
         RF<-campeao()
         escreval("Deu Velha!!!")
         interrompa
       fimse

       escreval("Onde deseja colocar o 'X'?")
       leia(X)

       se(X=1)entao
         repita
           se (J[1,1]="O")entao
             VX<-validadorX()
           senao
             se(J[1,1]="X")entao
               VX<-validadorX()
             senao
               se(J[1,1]=1)entao
                 J[1,1]<-"X"
                 sx[1,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X>1)
       fimse

       se(X=2)entao
         repita
           se (J[2,1]="O")entao
             VX<-validadorX()
           senao
             se(J[2,1]="X")entao
               VX<-validadorX()
             senao
               se(J[2,1]=2)entao
                 J[2,1]<-"X"
                 sx[2,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<2)ou(X>2)
       fimse

       se(X=3)entao
         repita
           se (J[3,1]="O")entao
             VX<-validadorX()
           senao
             se(J[3,1]="X")entao
               VX<-validadorX()
             senao
               se(J[3,1]=3)entao
                 J[3,1]<-"X"
                 sx[3,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<3)ou(X>3)
       fimse

       se(X=4)entao
         repita
           se (J[1,2]="O")entao
             VX<-validadorX()
           senao
             se(J[1,2]="X")entao
               VX<-validadorX()
             senao
               se(J[1,2]=4)entao
                 J[1,2]<-"X"
                 sx[1,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<4)ou(X>4)
       fimse

       se(X=5)entao
         repita
           se (J[2,2]="O")entao
             VX<-validadorX()
           senao
             se(J[2,2]="X")entao
               VX<-validadorX()
             senao
               se(J[2,2]=5)entao
                 J[2,2]<-"X"
                 sx[2,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<5)ou(X>5)
       fimse

       se(X=6)entao
         repita
           se (J[3,2]="O")entao
             VX<-validadorX()
           senao
             se(J[3,2]="X")entao
               VX<-validadorX()
             senao
               se(J[3,2]=6)entao
                 J[3,2]<-"X"
                 sx[3,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<6)ou(X>6)
       fimse

       se(X=7)entao
         repita
           se (J[1,3]="O")entao
             VX<-validadorX()
           senao
             se(J[1,3]="X")entao
               VX<-validadorX()
             senao
               se(J[1,3]=7)entao
                 J[1,3]<-"X"
                 sx[1,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<7)ou(X>7)
       fimse

       se(X=8)entao
         repita
           se (J[2,3]="O")entao
             VX<-validadorX()
           senao
             se(J[2,3]="X")entao
               VX<-validadorX()
             senao
               se(J[2,3]=8)entao
                 J[2,3]<-"X"
                 sx[2,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<8)ou(X>8)
       fimse

       se(X=9)entao
         repita
           se (J[3,3]="O")entao
             VX<-validadorX()
           senao
             se(J[3,3]="X")entao
               VX<-validadorX()
             senao
               se(J[3,3]=9)entao
                 J[3,3]<-"X"
                 sx[3,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<9)ou(X>9)
       fimse

       //Soma jogadas X
       S[1]<-sx[1,1]+sx[1,2]+sx[1,3]
       S[2]<-sx[2,1]+sx[2,2]+sx[2,3]
       S[3]<-sx[3,1]+sx[3,2]+sx[3,3]
       S[4]<-sx[1,1]+sx[2,1]+sx[3,1]
       S[5]<-sx[1,2]+sx[2,2]+sx[3,2]
       S[6]<-sx[1,3]+sx[2,3]+sx[3,3]
       S[7]<-sx[1,1]+sx[2,2]+sx[3,3]
       S[8]<-sx[3,1]+sx[2,2]+sx[1,3]

       se (S[1]=30)entao
         STX<-30
       senao
         se (S[2]=30)entao
           STX<-30
         senao
           se (S[3]=30)entao
             STX<-30
           senao
             se (S[4]=30)entao
               STX<-30
             senao
               se (S[5]=30)entao
                 STX<-30
               senao
                 se (S[6]=30)entao
                   STX<-30
                 senao
                   se (S[7]=30)entao
                     STX<-30
                   senao
                     se (S[8]=30)entao
                       STX<-30
                     fimse
                   fimse
                 fimse
               fimse
             fimse
           fimse
         fimse
       fimse

       RF<-campeao()
       
///////////////////////////////////////
/////////// 1P Codigo O ///////////////
///////////////////////////////////////

       se (SV=9)entao
         RF<-campeao()
         escreval("Deu Velha!!!")
         interrompa
       fimse

       //1ª linha
       se (J[3,1]="3") e (sx[1,1]+sx[2,1]=20)entao
         J[3,1]<-"O"
         so[3,1]<-30
         ov<-velha()
         SV<-SV+1
       senao
         se (J[2,1]="2") e (sx[1,1]+sx[3,1]=20)entao
           J[2,1]<-"O"
           so[2,1]<-30
           ov<-velha()
           SV<-SV+1
         senao
           se (J[1,1]="1") e (sx[2,1]+sx[3,1]=20)entao
             J[1,1]<-"O"
             so[1,1]<-30
             ov<-velha()
             SV<-SV+1
           senao
             //2ª linha
             se (J[3,2]="6") e (sx[1,2]+sx[2,2]=20)entao
               J[3,2]<-"O"
               so[3,2]<-30
               ov<-velha()
               SV<-SV+1
             senao
               se (J[2,2]="5") e (sx[1,2]+sx[3,2]=20)entao
                 J[2,2]<-"O"
                 so[2,2]<-30
                 ov<-velha()
                 SV<-SV+1
               senao
                 se (J[1,2]="4") e (sx[2,2]+sx[3,2]=20)entao
                   J[1,2]<-"O"
                   so[1,2]<-30
                   ov<-velha()
                   SV<-SV+1
                 senao
                   //3ª linha
                   se (J[3,3]="9") e (sx[1,3]+sx[2,3]=20)entao
                     J[3,3]<-"O"
                     so[3,3]<-30
                     ov<-velha()
                     SV<-SV+1
                   senao
                     se (J[2,3]="8") e (sx[1,3]+sx[3,3]=20)entao
                       J[2,3]<-"O"
                       so[2,3]<-30
                       ov<-velha()
                       SV<-SV+1
                     senao
                       se (J[1,3]="7") e (sx[2,3]+sx[3,3]=20)entao
                         J[1,3]<-"O"
                         so[1,3]<-30
                         ov<-velha()
                         SV<-SV+1
                       senao
                         //1ª diagonal
                         se (J[3,3]="9") e (sx[1,1]+sx[2,2]=20)entao
                           J[3,3]<-"O"
                           so[3,3]<-30
                           ov<-velha()
                           SV<-SV+1
                         senao
                           se (J[2,2]="5") e (sx[1,1]+sx[3,3]=20)entao
                             J[2,2]<-"O"
                             so[2,2]<-30
                             ov<-velha()
                             SV<-SV+1
                           senao
                             se (J[1,1]="1") e (sx[2,2]+sx[3,3]=20)entao
                               J[1,1]<-"O"
                               so[1,1]<-30
                               ov<-velha()
                               SV<-SV+1
                             senao
                               //2ª diagonal
                               se (J[1,3]="7") e (sx[3,1]+sx[2,2]=20)entao
                                 J[1,3]<-"O"
                                 so[1,3]<-30
                                 ov<-velha()
                                 SV<-SV+1
                               senao
                                 se (J[2,2]="5") e (sx[3,1]+sx[1,3]=20)entao
                                   J[2,2]<-"O"
                                   so[2,2]<-30
                                   ov<-velha()
                                   SV<-SV+1
                                 senao
                                   se (J[3,1]="3") e (sx[2,2]+sx[1,3]=20)entao
                                     J[3,1]<-"O"
                                     so[3,1]<-30
                                     ov<-velha()
                                     SV<-SV+1
                                   senao
                                     //1ª coluna
                                     se (J[1,3]="7") e (sx[1,1]+sx[1,2]=20)entao
                                       J[1,3]<-"O"
                                       so[1,3]<-30
                                       ov<-velha()
                                       SV<-SV+1
                                     senao
                                       se (J[1,2]="4") e (sx[1,1]+sx[1,3]=20)entao
                                         J[1,2]<-"O"
                                         so[1,2]<-30
                                         ov<-velha()
                                         SV<-SV+1
                                       senao
                                         se (J[1,1]="1") e (sx[1,2]+sx[1,3]=20)entao
                                           J[1,1]<-"O"
                                           so[1,1]<-30
                                           ov<-velha()
                                           SV<-SV+1
                                         senao
                                           //2ª coluna
                                           se (J[2,3]="8") e (sx[2,1]+sx[2,2]=20)entao
                                             J[2,3]<-"O"
                                             so[2,3]<-30
                                             ov<-velha()
                                             SV<-SV+1
                                           senao
                                             se (J[2,2]="5") e (sx[2,1]+sx[2,3]=20)entao
                                               J[2,2]<-"O"
                                               so[2,2]<-30
                                               ov<-velha()
                                               SV<-SV+1
                                             senao
                                               se (J[2,1]="2") e (sx[2,2]+sx[2,3]=20)entao
                                                 J[2,1]<-"O"
                                                 so[2,1]<-30
                                                 ov<-velha()
                                                 SV<-SV+1
                                               senao
                                                 //3ª coluna
                                                 se (J[3,3]="9") e (sx[3,1]+sx[3,2]=20)entao
                                                   J[3,3]<-"O"
                                                   so[3,3]<-30
                                                   ov<-velha()
                                                   SV<-SV+1
                                                 senao
                                                   se (J[3,2]="6") e (sx[3,1]+sx[3,3]=20)entao
                                                     J[3,2]<-"O"
                                                     so[3,2]<-30
                                                     ov<-velha()
                                                     SV<-SV+1
                                                   senao
                                                     se (J[3,1]="3") e (sx[3,2]+sx[3,3]=20)entao
                                                       J[3,1]<-"O"
                                                       so[3,1]<-30
                                                       ov<-velha()
                                                       SV<-SV+1
                                                     senao
                                                       //Jogadas aleatórias
                                                       repita
                                                         FA<-1
                                                         O<-0
                                                         O<-randi(8)+1
                                                         se (O=1) e (J[1,1]="1")entao
                                                           J[1,1]<-"O"
                                                           so[1,1]<-30
                                                           ov<-velha()
                                                           SV<-SV+1
                                                           FA<-4
                                                         senao
                                                           se (O=2) e (J[2,1]="2")entao
                                                             J[2,1]<-"O"
                                                             so[2,1]<-30
                                                             ov<-velha()
                                                             SV<-SV+1
                                                             FA<-4
                                                           senao
                                                             se (O=3) e (J[3,1]="3") entao
                                                               J[3,1]<-"O"
                                                               so[3,1]<-30
                                                               ov<-velha()
                                                               SV<-SV+1
                                                               FA<-4
                                                             senao
                                                               se (O=4) e (J[1,2]="4") entao
                                                                 J[1,2]<-"O"
                                                                 so[1,2]<-30
                                                                 ov<-velha()
                                                                 SV<-SV+1
                                                                 FA<-4
                                                               senao
                                                                 se (O=5) e (J[2,2]="5") entao
                                                                   J[2,2]<-"O"
                                                                   so[2,2]<-30
                                                                   ov<-velha()
                                                                   SV<-SV+1
                                                                   FA<-4
                                                                 senao
                                                                   se (O=6) e (J[3,2]="6") entao
                                                                     J[3,2]<-"O"
                                                                     so[3,2]<-30
                                                                     ov<-velha()
                                                                     SV<-SV+1
                                                                     FA<-4
                                                                   senao
                                                                     se (O=7) e (J[1,3]="7") entao
                                                                       J[1,3]<-"O"
                                                                       so[1,3]<-30
                                                                       ov<-velha()
                                                                       SV<-SV+1
                                                                       FA<-4
                                                                     senao
                                                                       se (O=8) e (J[2,3]="8") entao
                                                                         J[2,3]<-"O"
                                                                         so[2,3]<-30
                                                                         ov<-velha()
                                                                         SV<-SV+1
                                                                         FA<-4
                                                                       senao
                                                                         se (O=9) e (J[3,3]="9")entao
                                                                           J[3,3]<-"O"
                                                                           so[3,3]<-30
                                                                           ov<-velha()
                                                                           SV<-SV+1
                                                                           FA<-4
                                                                         fimse
                                                                       fimse
                                                                     fimse
                                                                   fimse
                                                                 fimse
                                                               fimse
                                                             fimse
                                                           fimse
                                                         fimse
                                                       ate (FA>3)
                                                     fimse
                                                   fimse
                                                 fimse
                                               fimse
                                             fimse
                                           fimse
                                         fimse
                                       fimse
                                     fimse
                                   fimse
                                 fimse
                               fimse
                             fimse
                           fimse
                         fimse
                       fimse
                     fimse
                   fimse
                 fimse
               fimse
             fimse
           fimse
         fimse
       fimse
       
       //Soma jogadas O
       SOO[1]<-so[1,1]+so[1,2]+so[1,3]
       SOO[2]<-so[2,1]+so[2,2]+so[2,3]
       SOO[3]<-so[3,1]+so[3,2]+so[3,3]
       SOO[4]<-so[1,1]+so[2,1]+so[3,1]
       SOO[5]<-so[1,2]+so[2,2]+so[3,2]
       SOO[6]<-so[1,3]+so[2,3]+so[3,3]
       SOO[7]<-so[1,1]+so[2,2]+so[3,3]
       SOO[8]<-so[3,1]+so[2,2]+so[1,3]

       se (SOO[1]=90)entao
         STO<-90
       senao
         se (SOO[2]=90)entao
           STO<-90
         senao
           se (SOO[3]=90)entao
             STO<-90
           senao
             se (SOO[4]=90)entao
               STO<-90
             senao
               se (SOO[5]=90)entao
                 STO<-90
               senao
                 se (SOO[6]=90)entao
                   STO<-90
                 senao
                   se (SOO[7]=90)entao
                     STO<-90
                   senao
                     se (SOO[8]=90)entao
                       STO<-90
                     fimse
                   fimse
                 fimse
               fimse
             fimse
           fimse
         fimse
       fimse

       RF<-campeao()

     fimenquanto
   fimse
   
///////////////////////////////////////////////////////////
////////////////////// Two Players ////////////////////////
///////////////////////////////////////////////////////////
   se (P=2)entao
     fv<-velha()
     X<-0
     O<-0
     SV<-0
       
///////////////////////////////////////
/////////// 2P Codigo X ///////////////
///////////////////////////////////////

     enquanto (SV<9) faca

       se (SV=9)entao
         RF<-campeao()
         escreval("Deu Velha!!!")
         interrompa
       fimse

       escreval("Onde deseja colocar o 'X'?")
       leia(X)

       se(X=1)entao
         repita
           se (J[1,1]="O")entao
             VX<-validadorX()
           senao
             se(J[1,1]="X")entao
               VX<-validadorX()
             senao
               se(J[1,1]=1)entao
                 J[1,1]<-"X"
                 sx[1,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X>1)
       fimse
       
       se(X=2)entao
         repita
           se (J[2,1]="O")entao
             VX<-validadorX()
           senao
             se(J[2,1]="X")entao
               VX<-validadorX()
             senao
               se(J[2,1]=2)entao
                 J[2,1]<-"X"
                 sx[2,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<2)ou(X>2)
       fimse
       
       se(X=3)entao
         repita
           se (J[3,1]="O")entao
             VX<-validadorX()
           senao
             se(J[3,1]="X")entao
               VX<-validadorX()
             senao
               se(J[3,1]=3)entao
                 J[3,1]<-"X"
                 sx[3,1]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<3)ou(X>3)
       fimse
       
       se(X=4)entao
         repita
           se (J[1,2]="O")entao
             VX<-validadorX()
           senao
             se(J[1,2]="X")entao
               VX<-validadorX()
             senao
               se(J[1,2]=4)entao
                 J[1,2]<-"X"
                 sx[1,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<4)ou(X>4)
       fimse

       se(X=5)entao
         repita
           se (J[2,2]="O")entao
             VX<-validadorX()
           senao
             se(J[2,2]="X")entao
               VX<-validadorX()
             senao
               se(J[2,2]=5)entao
                 J[2,2]<-"X"
                 sx[2,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<5)ou(X>5)
       fimse
       
       se(X=6)entao
         repita
           se (J[3,2]="O")entao
             VX<-validadorX()
           senao
             se(J[3,2]="X")entao
               VX<-validadorX()
             senao
               se(J[3,2]=6)entao
                 J[3,2]<-"X"
                 sx[3,2]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<6)ou(X>6)
       fimse

       se(X=7)entao
         repita
           se (J[1,3]="O")entao
             VX<-validadorX()
           senao
             se(J[1,3]="X")entao
               VX<-validadorX()
             senao
               se(J[1,3]=7)entao
                 J[1,3]<-"X"
                 sx[1,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<7)ou(X>7)
       fimse
       
       se(X=8)entao
         repita
           se (J[2,3]="O")entao
             VX<-validadorX()
           senao
             se(J[2,3]="X")entao
               VX<-validadorX()
             senao
               se(J[2,3]=8)entao
                 J[2,3]<-"X"
                 sx[2,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<8)ou(X>8)
       fimse
       
       se(X=9)entao
         repita
           se (J[3,3]="O")entao
             VX<-validadorX()
           senao
             se(J[3,3]="X")entao
               VX<-validadorX()
             senao
               se(J[3,3]=9)entao
                 J[3,3]<-"X"
                 sx[3,3]<-10
                 ov<-velha()
                 X<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (X<9)ou(X>9)
       fimse

       //Soma jogadas X
       S[1]<-sx[1,1]+sx[1,2]+sx[1,3]
       S[2]<-sx[2,1]+sx[2,2]+sx[2,3]
       S[3]<-sx[3,1]+sx[3,2]+sx[3,3]
       S[4]<-sx[1,1]+sx[2,1]+sx[3,1]
       S[5]<-sx[1,2]+sx[2,2]+sx[3,2]
       S[6]<-sx[1,3]+sx[2,3]+sx[3,3]
       S[7]<-sx[1,1]+sx[2,2]+sx[3,3]
       S[8]<-sx[3,1]+sx[2,2]+sx[1,3]

       se (S[1]=30)entao
         STX<-30
       senao
         se (S[2]=30)entao
           STX<-30
         senao
           se (S[3]=30)entao
             STX<-30
           senao
             se (S[4]=30)entao
               STX<-30
             senao
               se (S[5]=30)entao
                 STX<-30
               senao
                 se (S[6]=30)entao
                   STX<-30
                 senao
                   se (S[7]=30)entao
                     STX<-30
                   senao
                     se (S[8]=30)entao
                       STX<-30
                     fimse
                   fimse
                 fimse
               fimse
             fimse
           fimse
         fimse
       fimse
       
       RF<-campeao()
       
///////////////////////////////////////
/////////// 2P Codigo O ///////////////
///////////////////////////////////////

       se (SV=9)entao
         RF<-campeao()
         escreval("Deu Velha!!!")
         interrompa
       fimse
       
       escreval("Onde deseja colocar o 'O'?")
       leia(O)
       
       se(O=1)entao
         repita
           se (J[1,1]="X")entao
             VO<-validadorO()
           senao
             se(J[1,1]="O")entao
               VO<-validadorO()
             senao
               se(J[1,1]=1)entao
                 J[1,1]<-"O"
                 so[1,1]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O>1)
       fimse
       
       se(O=2)entao
         repita
           se (J[2,1]="X")entao
             VO<-validadorO()
           senao
             se(J[2,1]="O")entao
               VO<-validadorO()
             senao
               se(J[2,1]=2)entao
                 J[2,1]<-"O"
                 so[2,1]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<2)ou(O>2)
       fimse

       se(O=3)entao
         repita
           se (J[3,1]="X")entao
             VO<-validadorO()
           senao
             se(J[3,1]="O")entao
               VO<-validadorO()
             senao
               se(J[3,1]=3)entao
                 J[3,1]<-"O"
                 so[3,1]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<3)ou(O>3)
       fimse

       se(O=4)entao
         repita
           se (J[1,2]="X")entao
             VO<-validadorO()
           senao
             se(J[1,2]="O")entao
               VO<-validadorO()
             senao
               se(J[1,2]=4)entao
                 J[1,2]<-"O"
                 so[1,2]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<4)ou(O>4)
       fimse

       se(O=5)entao
         repita
           se (J[2,2]="X")entao
             VO<-validadorO()
           senao
             se(J[2,2]="O")entao
               VO<-validadorO()
             senao
               se(J[2,2]=5)entao
                 J[2,2]<-"O"
                 so[2,2]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<5)ou(O>5)
       fimse

       se(O=6)entao
         repita
           se (J[3,2]="X")entao
             VO<-validadorO()
           senao
             se(J[3,2]="O")entao
               VO<-validadorO()
             senao
               se(J[3,2]=6)entao
                 J[3,2]<-"O"
                 so[3,2]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<6)ou(O>6)
       fimse

       se(O=7)entao
         repita
           se (J[1,3]="X")entao
             VO<-validadorO()
           senao
             se(J[1,3]="O")entao
               VO<-validadorO()
             senao
               se(J[1,3]=7)entao
                 J[1,3]<-"O"
                 so[1,3]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<7)ou(O>7)
       fimse

       se(O=8)entao
         repita
           se (J[2,3]="X")entao
             VO<-validadorO()
           senao
             se(J[2,3]="O")entao
               VO<-validadorO()
             senao
               se(J[2,3]=8)entao
                 J[2,3]<-"O"
                 so[2,3]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<8)ou(O>8)
       fimse

       se(O=9)entao
         repita
           se (J[3,3]="X")entao
             VO<-validadorO()
           senao
             se(J[3,3]="O")entao
               VO<-validadorO()
             senao
               se(J[3,3]=9)entao
                 J[3,3]<-"O"
                 so[3,3]<-30
                 ov<-velha()
                 O<-10
                 SV<-SV+1
               fimse
             fimse
           fimse
         ate (O<9)ou(O>9)
       fimse

       //Soma jogadas O
       SOO[1]<-so[1,1]+so[1,2]+so[1,3]
       SOO[2]<-so[2,1]+so[2,2]+so[2,3]
       SOO[3]<-so[3,1]+so[3,2]+so[3,3]
       SOO[4]<-so[1,1]+so[2,1]+so[3,1]
       SOO[5]<-so[1,2]+so[2,2]+so[3,2]
       SOO[6]<-so[1,3]+so[2,3]+so[3,3]
       SOO[7]<-so[1,1]+so[2,2]+so[3,3]
       SOO[8]<-so[3,1]+so[2,2]+so[1,3]

       se (SOO[1]=90)entao
         STO<-90
       senao
         se (SOO[2]=90)entao
           STO<-90
         senao
           se (SOO[3]=90)entao
             STO<-90
           senao
             se (SOO[4]=90)entao
               STO<-90
             senao
               se (SOO[5]=90)entao
                 STO<-90
               senao
                 se (SOO[6]=90)entao
                   STO<-90
                 senao
                   se (SOO[7]=90)entao
                     STO<-90
                   senao
                     se (SOO[8]=90)entao
                       STO<-90
                     fimse
                   fimse
                 fimse
               fimse
             fimse
           fimse
         fimse
       fimse

       RF<-campeao()

     fimenquanto
   fimse
   
Fimalgoritmo