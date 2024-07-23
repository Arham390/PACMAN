INCLUDE Irvine32.inc
includelib winmm.lib


.data
stringValue db 10 DUP(?)
endl BYTE 0ah  
ground BYTE "------------------------------------------------------------------------------------------------------------------------",0
ground1 BYTE "|",0ah,0
ground2 BYTE "|",0






;;soundd;;;
PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD




;;;;;sound;;;
SND_FILENAME DWORD 00020000h
SND_LOOP DWORD  00000008h
SND_ASYNC DWORD 00000001h
file BYTE "pacman.wav" , 0








once db 0
once2 db 0
store BYTE 0
;level2

                                                                    
XCoordinates BYTE 110,110,110,110,107,108,109,100,99,98,70,71,72,73,50,51,52,53,60,60,60,56,56,64,64,30,29,28,19,19,19,19,19,18,17,11,'0'
YCoordinates BYTE 2,3,4,5,5,5,5,3,3,3,3,3,3,3,3,3,3,3,5,6,7,9,10,9,10,3,3,3,3,4,5,6,6,6,6,10,'0'
XCoordinates1 BYTE 110,110,110,110,107,108,109,100,99,98,70,71,72,73,50,51,52,53,60,60,60,56,56,64,64,30,29,28,19,19,19,19,19,18,17,'0'
YCoordinates1 BYTE 22,23,24,25,25,25,25,23,23,23,23,23,23,23,23,23,23,23,25,26,27,17,20,17,20,23,23,23,23,24,25,26,26,26,26,'0'
XCoordinates2 BYTE 20 ,18 , 16 ,14, 10 ,8, 6 ,4 ,10,10,10,8,6,4,2,10 ,10,10,10 , 40,43,46,49,52 ,70,73,76,79,82,40,33,36,40,82,82,86,90,'0'
YCoordinates2 BYTE 15 ,15 ,15,15,15,15 ,15 ,15 ,8,10,6,6,6,6,6,17,22,24,26 ,10 ,10,10,10,10,10 ,10,10,10,10,14,14,14,12,12,14,14,14,14,'0'


wallPositionsX BYTE 0
wallPositionsY BYTE 0

Xfood BYTE 20 , 20 , 20 , 20 ,20,20,20,20,20,20,20,20,20,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104, 110 , 110 , 110 , 110 ,110,110,110,110,110,110,110,110,110,110,110
Yfood BYTE 20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,7



                                                                                     
Xfood1 BYTE 28 ,25,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73,76,79,82,85,88,92,95
Yfood1 BYTE 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4

foodl1 db 0

;;;;level2 ;;;;;;; 
Xfood2 BYTE 20 , 20 , 20 , 20 ,20,20,20,20,20,20,20,20,20,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104, 110 , 110 , 110 , 110 ,110,110,110,110,110,110,110,110,110,110,110
Yfood2 BYTE 20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,7




Xfood21 BYTE 28 ,25,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73,76,79,82,85,88,92,95,44,44,44,44,75,75,75,75,75,75,75,75,75,44,44,44
Yfood21 BYTE 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7,9,11,13,15,7,9,11,13,15,17,19,21,17,19,21


foodl2 db 0


;;;level3;;;;;;;;;;;;

Xfood3 BYTE 20 , 20 , 20 , 20 ,20,20,20,20,20,20,20,20,20,28,32,36,40,44,48,52,56,60,64,68,72,76,80,84,88,92,96,100,104, 110 , 110 , 110 , 110 ,110,110,110,110,110,110,110,110,110,110,110
Yfood3 BYTE 20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,20 ,19 , 18 , 17 , 16,15,14,13,12,11,10,9,8,7




Xfood31 BYTE 31,34,40,43,46,49,52,55,58,61,67,70,73,76,79,82,85,44,44,44,44,75,75,75,75,75,75,75,75,75,44,44,44,6,10,15,50,50,50,50,50,50,70,70,70,70,70,70
Yfood31 BYTE 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7,9,11,13,15,7,9,11,15,17,19,21,17,19,21,10,11,12,18,19,20,10,11,12,18,19,20




TeleportXpos BYTE ?
TeleportYpos BYTE ?

sizeofood Dword 46
sizeoffood Dword 24

;35
sizeofarr2 dword 36



temp2 BYTE ?
check BYTE 0
check2 BYTE 0
temp byte ?

;;fruits
Xfruitpos BYTE ?
Yfruitpos BYTE ?

movement db 1
 seed DWORD 0

   delayTime DWORD 200 



strScore BYTE "Your score is: ",0
score BYTE 0,0

xPos BYTE 20
yPos BYTE 21

exXPos BYTE ?
exYPos BYTE ?

exXPosG BYTE ?
exYPosG BYTE ?


exXPosG2 BYTE ?
exYPosG2 BYTE ?

exXPosG3 BYTE ?
exYPosG3 BYTE ?



xCoinPos BYTE ?
yCoinPos BYTE ?

inputChar BYTE ?
ghostX byte 10
ghostY byte 10


ghost2X byte 40
ghost2Y byte 10

ghost3X byte 40
ghost3Y byte 20






PauseMessage BYTE "The game is paused champ , press p to unpause ",0
PauseMessage2 BYTE "                                              ",0

MainMenu BYTE "___________________MAIN MENU_________________",0
MainMenu1         BYTE "press 1 to start game:",0
MainMenu2         BYTE "press 2 to see instructions:",0
MainMenu3         BYTE "press 3 to open gamesetup (page 3)",0


ins1 BYTE "W is for forward , S is for backwards , A is for Left and D is for Right , collect all coins and fruits for maxium score",0

ins2 BYTE "press 2 to return",0 


ins3 BYTE "enter level settings",0

ground3 BYTE "|",0
ground4 BYTE "|",0ah,0



mtitle BYTE "welcome to Packman",0

nameprompt BYTE "Enter your name: ",0




    filename    db "output.txt", 0
    username   db "                          ",0
    space db "  ",0
    bytes_written   DWORD   10


noofood db 0




one db 0



; filename    BYTE "output.txt", 0
   
    newline     BYTE 13, 10   ; Carriage return and line feed (newline)

;lives
lives db 1,0
l byte "lives are ",0


level db 1

noofcoins db 0







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;level 3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.code
main PROC



         call MPage

         call GetName
 call savetofile
 

 
 call MainMenuP




 
    mov eax, SND_FILENAME 
    or eax, SND_LOOP      
    or eax, SND_ASYNC     
   invoke PlaySound, ADDR file, 0, eax





    ; draw gound at (0,29):
    mov eax,blue ;(black * 16)

    call SetTextColor
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,1
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString

    mov ecx,27
    mov dh,2
    l1:
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    inc dh
    loop l1


    mov ecx,27
    mov dh,2
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,119
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2


call DrawMazel1



 call GenerateFood
 


    call DrawGhost
    

    


    call DrawPlayer

    call CreateRandomCoin
    call DrawCoin

    call Randomize

   


    gameLoop:

     mov exYpos,0
     mov exYpos,0
     mov check,0

      mov exYposG,0
     mov exYposG,0
     mov check2,0

  call DisplayLives

   call UpdateGhost
   call MoveGhostp






 cmp level,2
   je fruits
   jmp j
   fruits:
   cmp one,0
   je oo
   jmp j
   oo:
   inc one
   call CreateRandomfruit
   call DrawFruit
   j:
   cmp level,3
   je Tele
   jmp j1
   tele:
   call DrawTeleport
   


j1:



   cmp level,3
   je yesi
   jmp over
   yesi:
    call UpdateGhost2
      call MoveGhost2p
   call UpdateGhost3
      call MoveGhost3p

      over:

      cmp lives,0
        je yes
       jmp conti
        yes:
        call Endscreen
        jmp exitGame
        conti:

cmp level, 2
je level2
cmp level, 3
je level3

jmp outlabel

level2:
    cmp once2, 0
    je yes2
    jmp con

yes2:
    inc once2
    call DrawMazel2
    
        call GenerateFood2
   jmp con


level3:
    cmp once2, 1
    je yes3
    jmp con

yes3:
    inc once2
   ; call DrawMazel3
      call DrawGhost2
        call DrawGhost3
        call GenerateFood3
   jmp con






con:
outlabel:
   
      call DrawGhost
  
  cmp level,3
  je yes4
  jmp over2
  yes4:
  call DrawGhost2
    call DrawGhost3
  over2:

      cmp level,2
      je fruits2
      fruits2:
  call checkfruitcollison
   
   cmp level,1
   je e
   e:
  call checkfood      

   cmp level,2
   je e2
   e2:
  call checkfood2      

   cmp level,3
   je e3
   e3:
  call checkfood3



     call checkTeleportcollision



    


        ; getting points:
        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
        ; player is intersecting coin:
   inc noofcoins
   inc score
        call CreateRandomCoin
        call DrawCoin
   cmp noofcoins,1
   je incd1
   jmp cn

incd1:
   inc level
   jmp notCollecting

cn:
   cmp noofcoins,2
   je incd2
   jmp notCollecting

incd2:
   mov level,3
   jmp notCollecting

notCollecting:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteInt


        ; get user key input:
        call ReadKey
        mov inputChar,al

        cmp inputChar,"p"
        je pp

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight
        jmp gameloop

      
        moveUp:
       
        call checkfood
        cmp level,2
        je yeee
        yeee:
        call checkfood2
        cmp level,3
        je yeee2
        yeee2:
        call checkfood3

        cmp level,3
        je r
        jmp over4
        r:
           call CheckCollisionWithGhost2
              call CheckCollisionWithGhost3
        over4:
         call CheckCollisionWithGhost
         mov al , yPos
        mov exYPos , al
        mov al, xPos
        mov exXpos,al
        dec exYPos
        cmp level ,1
     
         call CheckCollisionWithWalls
     
       cmp check,1
         je label1
        cmp yPos,2
        je label1
        ; allow player to jump:
        mov ecx,1
        jumpLoop:
            call UpdatePlayer
            dec yPos
            call DrawPlayer
            mov eax,70
            call Delay
        loop jumpLoop
       
       label1:
        jmp gameLoop
        
          
        moveDown:
        
        call checkfood
          cmp level,2
        je yeee27
        yeee27:
        call checkfood2
        cmp level,3
        je yeee21
        yeee21:
       call checkfood3
       cmp level,3
        je r2
        jmp over42
        r2:
           call CheckCollisionWithGhost2
              call CheckCollisionWithGhost3
        over42:
         call CheckCollisionWithGhost
        mov al , yPos
        mov exYPos , al
        mov al, xPos
        mov exXpos,al
        inc exYPos
        
         
         call CheckCollisionWithWalls
       
         cmp check,1
         je label2
    
        cmp yPos,28
        je label2
        call UpdatePlayer
        inc yPos
        call DrawPlayer
        label2:
        jmp gameLoop

        moveLeft:
        
        call checkfood
          cmp level,2
        je yeee3
        yeee3:
        call checkfood2
        cmp level,3
        je yeee23
        yeee23:
        call checkfood3
        cmp level,3
        je r3
        jmp over43
        r3:
           call CheckCollisionWithGhost2
              call CheckCollisionWithGhost3
        over43:
         call CheckCollisionWithGhost
          mov al , yPos
        mov exYPos , al
        mov al, xPos
        mov exXpos,al
        dec exXPos
        
         call CheckCollisionWithWalls
        
         cmp check,1
         je label3
        cmp xPos,1
        je gameloop
        call UpdatePlayer
        dec xPos
        call DrawPlayer
        label3:
        jmp gameLoop

        moveRight:
         
        call checkfood
            cmp level,2
        je yeee4
        yeee4:
        call checkfood2
        cmp level,3
        je yeee24
        yeee24:
        call checkfood3
          cmp level,3
        je r5
        jmp over45
        r5:
           call CheckCollisionWithGhost2
              call CheckCollisionWithGhost3
        over45:
         call CheckCollisionWithGhost
        mov al , yPos
        mov exYPos , al
        mov al, xPos
        mov exXpos,al
        inc exXPos
      
         call CheckCollisionWithWalls
       
         cmp check,1
         je label4
        cmp xPos,118
        je gameloop
        call UpdatePlayer
        inc xPos
        call DrawPlayer
        label4:
        jmp gameLoop

        pp:
        call PauseP
        mov inputchar,'h'
        

      

      
    jmp gameLoop
    
           
    exitGame:
    exit
main ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP






;;;;;;;;;;;;;;;;;;;;Ghost Movement;;;;;;;;;;;;;;;;;;;;;;
  
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


UpdateGhost PROC
  
    mov eax, blue
    call SetTextColor
    mov dl, ghostX
    mov dh, ghostY
    call Gotoxy
    mov al, " "
    call WriteChar
    ret
UpdateGhost ENDP

UpdateGhost2 PROC

    mov eax, blue
    call SetTextColor
    mov dl, ghost2X
    mov dh, ghost2Y
    call Gotoxy
    mov al, " "
    call WriteChar
    ret
UpdateGhost2 ENDP



UpdateGhost3 PROC
   
    mov eax, blue
    call SetTextColor
    mov dl, ghost3X
    mov dh, ghost3Y
    call Gotoxy
    mov al, " "
    call WriteChar
    ret
UpdateGhost3 ENDP


RandomNumberGenerator PROC
   
    rdtsc
    mov seed, eax

   
    mov eax, seed
    imul eax, 1103515245
    add eax, 12345
    mov seed, eax

  
    mov eax, seed
    and eax, 3

    inc eax

    ret
RandomNumberGenerator ENDP

MoveGhostp PROC
    call RandomNumberGenerator

    cmp eax, 1
    je move_ghost_up
    cmp eax, 2
    je move_ghost_down
    cmp eax, 3
    je move_ghost_left
    cmp eax, 4
    je move_ghost_right

move_ghost_up:
    mov al , ghostY
        mov exYPosG , al
        mov al, ghostX
        mov exXposG,al
        dec exYPosG
        cmp level ,1
     
         call CheckCollisionWithWallsG 
     
       cmp check2,1
         je label22
    sub ghostY, 1
    cmp ghostY, 2
    jg no_change_direction_up
    
    mov ghostY, 2   
no_change_direction_up:
    jmp apply_delay

move_ghost_down:
    mov al , ghostY
        mov exYPosG , al
        mov al, ghostX
        mov exXposG,al
        inc exYPosG
        
         
         call CheckCollisionWithWallsG
       
         cmp check2,1
         je label22

    add ghostY, 1
    cmp ghostY, 28
    jl no_change_direction_down
    mov ghostY, 28     
no_change_direction_down:
    jmp apply_delay

move_ghost_left:
     mov al , GhostY
        mov exYPosG , al
        mov al, ghostX
        mov exXposG,al
        dec exXPosG
        
         call CheckCollisionWithWallsG
        
         cmp check2,1
         je label22
    sub ghostX, 1
    cmp ghostX, 2
    jg no_change_direction_left
    mov ghostX, 2     
no_change_direction_left:
    jmp apply_delay

move_ghost_right:
      mov al , ghostY
        mov exYPosG , al
        mov al,  ghostX
        mov exXposG,al
        inc exXPosG
        
         call CheckCollisionWithWallsG
        
         cmp check2,1
         je label22
    add ghostX, 1
    cmp ghostX, 118
    jl no_change_direction_right
    mov ghostX, 118 
    ; Set to the maximum value if boundary is reached.
no_change_direction_right:
    jmp apply_delay

     label22:
     ret
apply_delay:
    invoke Sleep, delayTime
     
    
ghostEnd:
 
 
    ret
MoveGhostp ENDP






MoveGhost2p PROC
    call RandomNumberGenerator

    cmp eax, 1
    je move_ghost_up
    cmp eax, 2
    je move_ghost_down
    cmp eax, 3
    je move_ghost_left
    cmp eax, 4
    je move_ghost_right

move_ghost_up:
    mov al , ghost2Y
        mov exYPosG2 , al
        mov al, ghost2X
        mov exXposG2,al
        dec exYPosG2
        cmp level ,1
     
         call CheckCollisionWithWallsG2
     
       cmp check2,1
         je label22
    sub ghostY, 1
    cmp ghostY, 2
    jg no_change_direction_up
    
    mov ghostY, 2   
no_change_direction_up:
    jmp apply_delay

move_ghost_down:
    mov al , ghostY
        mov exYPosG2 , al
        mov al, ghost2X
        mov exXposG2,al
        inc exYPosG2
        
         
         call CheckCollisionWithWallsG2
       
         cmp check2,1
         je label22

    add ghost2Y, 1
    cmp ghost2Y, 28
    jl no_change_direction_down
    mov ghost2Y, 28     
no_change_direction_down:
    jmp apply_delay

move_ghost_left:
     mov al , Ghost2Y
        mov exYPosG2 , al
        mov al, ghost2X
        mov exXposG2,al
        dec exXPosG2
        
         call CheckCollisionWithWallsG2
        
         cmp check2,1
         je label22
    sub ghost2X, 1
    cmp ghost2X, 2
    jg no_change_direction_left
    mov ghost2X, 2     
no_change_direction_left:
    jmp apply_delay

move_ghost_right:
      mov al , ghost2Y
        mov exYPosG2 , al
        mov al,  ghost2X
        mov exXposG2,al
        inc exXPosG2
        
         call CheckCollisionWithWallsG2
        
         cmp check2,1
         je label22
    add ghost2X, 1
    cmp ghost2X, 118
    jl no_change_direction_right
    mov ghost2X, 118   
    ; Set to the maximum value if boundary is reached.
no_change_direction_right:
    jmp apply_delay

     label22:
     ret
apply_delay:
    invoke Sleep, delayTime
     
    
ghostEnd:
 
 
    ret
MoveGhost2p ENDP


MoveGhost3p PROC
    call RandomNumberGenerator

    cmp eax, 1
    je move_ghost_up
    cmp eax, 2
    je move_ghost_down
    cmp eax, 3
    je move_ghost_left
    cmp eax, 4
    je move_ghost_right

move_ghost_up:
    mov al , ghost3Y
        mov exYPosG3 , al
        mov al, ghost3X
        mov exXposG3,al
        dec exYPosG3
        cmp level ,1
     
         call CheckCollisionWithWallsG3
     
       cmp check2,1
         je label22
    sub ghostY, 1
    cmp ghostY, 2
    jg no_change_direction_up
    
    mov ghostY, 2   
no_change_direction_up:
    jmp apply_delay

move_ghost_down:
    mov al , ghostY
        mov exYPosG3 , al
        mov al, ghost3X
        mov exXposG3,al
        inc exYPosG3
        
         
         call CheckCollisionWithWallsG3
       
         cmp check2,1
         je label22

    add ghost3Y, 1
    cmp ghost3Y, 28
    jl no_change_direction_down
    mov ghost3Y, 28     
no_change_direction_down:
    jmp apply_delay

move_ghost_left:
     mov al , Ghost3Y
        mov exYPosG3 , al
        mov al, ghost3X
        mov exXposG3,al
        dec exXPosG3
        
         call CheckCollisionWithWallsG3
        
         cmp check2,1
         je label22
    sub ghost3X, 1
    cmp ghost3X, 2
    jg no_change_direction_left
    mov ghost3X, 2     
no_change_direction_left:
    jmp apply_delay

move_ghost_right:
      mov al , ghost3Y
        mov exYPosG3 , al
        mov al,  ghost3X
        mov exXposG3,al
        inc exXPosG3
        
         call CheckCollisionWithWallsG3
        
         cmp check2,1
         je label22
    add ghost3X, 1
    cmp ghost3X, 118
    jl no_change_direction_right
    mov ghost3X, 118    
no_change_direction_right:
    jmp apply_delay

     label22:
     ret
apply_delay:
    invoke Sleep, delayTime
     
    
ghostEnd:
 
 
    ret
MoveGhost3p ENDP





















;;;;;;;ghostt;;;;;;;;;;;;;;



DrawGhost PROC
    mov eax, White ; (blue*16)
    call SetTextColor
    mov dl, ghostX
    mov dh, ghostY
    call Gotoxy
    mov al, "G"
    call WriteChar
    call delay
    ret
DrawGhost ENDP





DrawGhost2 PROC
    mov eax, White ; (blue*16)
    call SetTextColor
    mov dl, ghost2X
    mov dh, ghost2Y
    call Gotoxy
    mov al, "G"
    call WriteChar
    call delay
    ret
DrawGhost2 ENDP









DrawGhost3 PROC
    mov eax, White ; (blue*16)
    call SetTextColor
    mov dl, ghost3X
    mov dh, ghost3Y
    call Gotoxy
    mov al, "G"
    call WriteChar
    call delay
    ret
DrawGhost3 ENDP










DrawCoin PROC
    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,xCoinPos
    mov dh,yCoinPos
    call Gotoxy
    mov al,"."
    call WriteChar
    ret
DrawCoin ENDP

CreateRandomCoin PROC
    mov eax,30
    inc eax
    call RandomRange
    mov xCoinPos,al
    mov yCoinPos,20
    ret
CreateRandomCoin ENDP

MPage PROC
    mov eax, blue      
    call SetTextColor

    mov dl, 45 
    mov dh, 10  
    call Gotoxy
    mov edx, OFFSET mtitle  
    call WriteString      


    mov eax, 0
    call ReadChar

  
    call Clrscr

    ret
MPage ENDP





RandomizeGhostMovement PROC
 
    mov ax, 3  
    call RandomRange
    sub ghostX, al

    mov eax, 3
    call RandomRange
    sub ghostY, al

    mov eax, 80
    sub eax, 2   
    cmp ghostX, 0
    jl  setGhostX
    cmp ghostX, al
    jge setGhostX
    jmp doneRandomize

setGhostX:
    mov ghostX, 0

doneRandomize:
    ret
RandomizeGhostMovement ENDP








RandomizeGhostMovement2 PROC
   
    mov ax, 3  
    call RandomRange
    sub ghost2X, al

    mov eax, 3
    call RandomRange
    sub ghost2Y, al

 
    mov eax, 80
    sub eax, 2   
    cmp ghost2X, 0
    jl  setGhostX
    cmp ghost2X, al
    jge setGhostX
    jmp doneRandomize

setGhostX:
    mov ghost2X, 0

doneRandomize:
    ret
RandomizeGhostMovement2 ENDP







RandomizeGhostMovement3 PROC
   
    mov ax, 3   
    call RandomRange
    sub ghost3X, al

    mov eax, 3
    call RandomRange
    sub ghost3Y, al

  
    mov eax, 80
    sub eax, 2 
    cmp ghost3X, 0
    jl  setGhostX
    cmp ghost3X, al
    jge setGhostX
    jmp doneRandomize

setGhostX:
    mov ghost3X, 0

doneRandomize:
    ret
RandomizeGhostMovement3 ENDP



















PauseP PROC

    mov eax, blue
    call SetTextColor

    mov dl, 45  ; X position
    mov dh, 10  ; Y position
    call Gotoxy
    mov edx, OFFSET PauseMessage  
    call WriteString  

    
    waitForP:
        mov eax, 0
        call ReadChar
        cmp al, 'p'   
         mov dl, 45  ; X position
    mov dh, 10  ; Y position
    call Gotoxy
    mov edx, OFFSET PauseMessage2  
        call WriteString  
ret
        jne waitForP  



    ret
PauseP ENDP


DisplayLives PROC
 
    mov eax, red
    call SetTextColor

   
    mov dl, 85
    mov dh, 0
    call Gotoxy

    ; Display lives text
    mov edx, OFFSET l
    call WriteString

  
    mov al, lives
    call WriteInt

    ret
DisplayLives ENDP


ClearChar PROC
   
    mov eax, black
    call SetTextColor

 
    mov dl, ghostX
    mov dh, ghostY
    call Gotoxy

 
    mov al, " "
    call WriteChar

    
    mov eax, White 
    call SetTextColor

    ret
ClearChar ENDP

MainMenuP PROC

    mov eax, blue      
    call SetTextColor

    
    mov dl, 45  
    mov dh, 5   
    call Gotoxy
    mov edx, OFFSET MainMenu  
    call WriteString        

    ; Display the menu options
    mov dl, 45  
    mov dh, 10  
    call Gotoxy
    mov edx, OFFSET MainMenu1  
    call WriteString

    mov dl, 45 
    mov dh, 12  
    call Gotoxy
    mov edx, OFFSET MainMenu2  
    call WriteString


     mov dl, 45  
    mov dh, 14  
    call Gotoxy
    mov edx, OFFSET MainMenu3  
    call WriteString

  
    mov eax, 0
    call ReadChar

    cmp al, '1'
    je game

    cmp al, '2'
    je instructions

    cmp al,'3'
    je gamesetup

    jmp MainMenuP

instructions:
    call Clrscr  
    call Instruc  
    jmp MainMenuP  

gamesetup:
call Clrscr
call set
jmp MainMenuP

game:
    call Clrscr  
    ret

MainMenuP ENDP


Instruc PROC

    mov eax, red
    call SetTextColor

    ; Display the instructions
    mov dl, 30  
    mov dh, 5   
    call Gotoxy
    mov edx, OFFSET ins1  
    call WriteString        

   
    mov eax, 0
    call ReadChar

    call Clrscr  
    ret

Instruc ENDP





set PROC

    mov eax, red
    call SetTextColor

    ; Display the instructions
    mov dl, 30  
    mov dh, 5   
    call Gotoxy
    mov edx, OFFSET ins3  
    call WriteString        

   
    mov eax, 0
    call ReadChar

    cmp al,'2'
    mov level,2

    cmp al,'3'
    mov level,3

    call Clrscr  
    ret

set ENDP







DrawWall PROC
 

   
    mov eax, LightGray
    call SetTextColor

    
    call Gotoxy

  
    mov edx, OFFSET ground3
    call WriteString

    ret
DrawWall ENDP


;;;;;;;;;;;
DrawMazel1 PROC
mov ecx,0
mov eax,0
mov edx,0
    mov ecx, sizeofarr2 
    ;loop counter
    mov edi, 0   
    mov esi,0

drawMazeLoop1:
    mov dl, XCoordinates[edi]
    mov dh, YCoordinates[edi]
    call DrawWall

      mov dl, XCoordinates1[edi]
    mov dh, YCoordinates1[edi]
    call DrawWall

    inc edi
    loop drawMazeLoop1
    ret
DrawMazel1 ENDP


;;;;;;;;;;;



DrawMazel2 PROC
mov ecx,0
mov eax,0
mov edx,0
    mov ecx, sizeofarr2 
    ;loop counter
    mov edi, 0   
    mov esi,0

drawMazeLoop2:

    mov dl, XCoordinates[edi]
    mov dh, YCoordinates[edi]
    call DrawWall
      mov dl, XCoordinates1[edi]
    mov dh, YCoordinates1[edi]
    call DrawWall
      cmp level,2
   
        
  mov dl, XCoordinates2[edi]
    mov dh, YCoordinates2[edi]
    call DrawWall
    inc edi
    loop drawMazeLoop2
    ret
DrawMazel2 ENDP










 

    AnomalyCheck PROC
   cmp xpos,118
   je setPlayerX
    cmp xpos,20
    je setPlayerX
    ret

setPlayerX:
   sub xPos,5
     
    ret

setGhostX:
   
    mov ghostX, 40 
    ret
AnomalyCheck ENDP

CheckCollisionWithGhost PROC
  
    mov al, xPos
    cmp al, ghostX
    jne checkY

    mov al, yPos
    cmp al, ghostY
    jne checkY

   
    dec lives

   
    mov xPos, 20
    mov yPos, 20

checkY:
  

    ret
CheckCollisionWithGhost ENDP


CheckCollisionWithGhost2 PROC
  
    mov al, xPos
    cmp al, ghost2X
    jne checkY

    mov al, yPos
    cmp al, ghost2Y
    jne checkY

   
    dec lives

   
    mov xPos, 20
    mov yPos, 20

checkY:
  

    ret
CheckCollisionWithGhost2 ENDP

CheckCollisionWithGhost3 PROC
  
    mov al, xPos
    cmp al, ghost3X
    jne checkY

    mov al, yPos
    cmp al, ghost3Y
    jne checkY

   
    dec lives

   
    mov xPos, 20
    mov yPos, 20

checkY:
  

    ret
CheckCollisionWithGhost3 ENDP









CheckCollisionWithWallsG PROC
 mov esi, 0  
    checkLoop:
        mov al, exYposG
        cmp al, YCoordinates[esi]
        je collidedY

        mov al, exYposG
        cmp al, YCoordinates1[esi]
        je collidedY

        mov al, exYposG
        cmp al, YCoordinates2[esi]
        je collidedY

        jmp notCollidedY

    collidedY:
        mov bl, exXposG
        cmp bl, XCoordinates[esi]
        je collided

        mov bl, exXposG
        cmp bl, XCoordinates1[esi]
        je collided

        mov bl, exXposG
        cmp bl, XCoordinates2[esi]
        je collided


    notCollidedY:
        inc esi
        cmp esi, sizeofarr2  
        jl checkLoop

      
        mov check2, 0
        jmp notCollidedX

    collided:
   
        mov check2, 1

    notCollidedX:
        ret
CheckCollisionWithWallsG ENDP




CheckCollisionWithWallsG2 PROC
 mov esi, 0 
    checkLoop:
        mov al, exYposG2
        cmp al, YCoordinates[esi]
        je collidedY

        mov al, exYposG2
        cmp al, YCoordinates1[esi]
        je collidedY

        mov al, exYposG2
        cmp al, YCoordinates2[esi]
        je collidedY

        jmp notCollidedY

    collidedY:
   
        mov bl, exXposG2
        cmp bl, XCoordinates[esi]
        je collided

        mov bl, exXposG2
        cmp bl, XCoordinates1[esi]
        je collided

        mov bl, exXposG2
        cmp bl, XCoordinates2[esi]
        je collided


    notCollidedY:
        inc esi
        cmp esi, sizeofarr2  
        jl checkLoop

      
        mov check2, 0
        jmp notCollidedX

    collided:
      
        mov check2, 1

    notCollidedX:
        ret
CheckCollisionWithWallsG2 ENDP








CheckCollisionWithWallsG3 PROC
 mov esi, 0  

  
    checkLoop:
        mov al, exYposG3
        cmp al, YCoordinates[esi]
        je collidedY

        mov al, exYposG3
        cmp al, YCoordinates1[esi]
        je collidedY

        mov al, exYposG3
        cmp al, YCoordinates2[esi]
        je collidedY

        jmp notCollidedY

    collidedY:
        ; If collided in Y, now check X coordinates
        mov bl, exXposG3
        cmp bl, XCoordinates[esi]
        je collided

        mov bl, exXposG3
        cmp bl, XCoordinates1[esi]
        je collided

        mov bl, exXposG3
        cmp bl, XCoordinates2[esi]
        je collided


    notCollidedY:
        inc esi
        cmp esi, sizeofarr2  
        jl checkLoop

       
        mov check2, 0
        jmp notCollidedX

    collided:
       
        mov check2, 1

    notCollidedX:
        ret
CheckCollisionWithWallsG3 ENDP





CheckCollisionWithWalls PROC
      
    mov esi, 0 

  
    checkLoop:
        mov al, exYpos
        cmp al, YCoordinates[esi]
        je collidedY

        mov al, exYpos
        cmp al, YCoordinates1[esi]
        je collidedY

        mov al, exYpos
        cmp al, YCoordinates2[esi]
        je collidedY

        jmp notCollidedY

    collidedY:
    
        mov bl, exXpos
        cmp bl, XCoordinates[esi]
        je collided

        mov bl, exXpos
        cmp bl, XCoordinates1[esi]
        je collided

        mov bl, exXpos
        cmp bl, XCoordinates2[esi]
        je collided


    notCollidedY:
        inc esi
        cmp esi, sizeofarr2  ; Number of walls
        jl checkLoop

        mov check, 0
        jmp notCollidedX

    collided:
       
        mov check, 1

    notCollidedX:
        ret
CheckCollisionWithWalls ENDP



ConvertByteToString PROC
    movzx eax, al
    mov ecx, 10
    mov edx, OFFSET stringValue
    call ConvertToString
    ret
ConvertByteToString ENDP

ConvertToString PROC
    push ebx
    mov ebx, 10
    mov ecx, 10
    mov edi, edx
    add edi, ecx
    mov byte ptr [edi], 0
convertLoop:
    dec edi
    xor edx, edx
    div ebx
    add dl, '0'
    mov [edi], dl
    test eax, eax
    jnz convertLoop
    mov edx, edi
    pop ebx
    ret
ConvertToString ENDP




 CreateRandomFruit  PROC
 mov eax,30
    inc eax
    call RandomRange
    mov xFruitPos,al
    mov yFruitPos,10
    ret
CreateRandomFruit ENDP



 DrawFruit PROC

  mov eax,LightMagenta ;
    call SetTextColor
    mov dl,xFruitPos
    mov dh,yFruitPos
    call Gotoxy
    mov al,"^"
    call WriteChar
    ret


DrawFruit ENDP




checkfruitcollison PROC
    mov bl, xPos
    cmp bl, xFruitPos
    jne notEqualX

    mov bl, yPos
    cmp bl, yFruitPos
    je collided

notEqualX:
  
    ret

collided:
   inc score
   inc score
   inc score
   inc score
    inc score
    call CreateRandomFruit
    call DrawFruit
    ret

checkfruitcollison ENDP


DrawFood PROC
    mov eax,red ;(red * 16)
    call SetTextColor
    call Gotoxy
    mov al,"."
    call WriteChar
    ret
DrawFood ENDP

Generatefood PROC
mov ecx,0
mov eax,0
mov edx,0
    mov ecx, sizeofood
    ;loop counter
    mov edi, 0   
    mov esi,0

drawfoodLoop1:
    mov dl, Xfood[edi]
    mov dh, Yfood[edi]
    call DrawFood
       mov dl, Xfood1[edi]
    mov dh, Yfood1[edi]
    call DrawFood
    inc edi
 loop drawfoodLoop1

  mov ecx, sizeoffood
 mov edi,0
 drawfoodloop2:

       mov dl, Xfood1[edi]
    mov dh, Yfood1[edi]
    call DrawFood
    inc edi
loop drawfoodloop2
    ret
Generatefood ENDP





Generatefood2 PROC
mov ecx,0
mov eax,0
mov edx,0
    mov ecx, sizeofood
  
    mov edi, 0   
    mov esi,0

drawfoodLoop1:
    mov dl, Xfood2[edi]
    mov dh, Yfood2[edi]
    call DrawFood
       mov dl, Xfood21[edi]
    mov dh, Yfood21[edi]
    call DrawFood
    inc edi
 loop drawfoodLoop1

  mov ecx, sizeoffood
 mov edi,0
 drawfoodloop2:

       mov dl, Xfood21[edi]
    mov dh, Yfood21[edi]
    call DrawFood
    inc edi
loop drawfoodloop2
    ret
Generatefood2 ENDP




Generatefood3 PROC
mov ecx,0
mov eax,0
mov edx,0
    mov ecx, sizeofood
    ;loop counter
    mov edi, 0   
    mov esi,0

drawfoodLoop1:
    mov dl, Xfood3[edi]
    mov dh, Yfood3[edi]
    call DrawFood
       mov dl, Xfood31[edi]
    mov dh, Yfood31[edi]
    call DrawFood
    inc edi
 loop drawfoodLoop1

  mov ecx, sizeoffood
 mov edi,0
 drawfoodloop2:

       mov dl, Xfood31[edi]
    mov dh, Yfood31[edi]
    call DrawFood
    inc edi
loop drawfoodloop2
    ret
Generatefood3 ENDP













checkfood PROC
   
    mov esi, 0 
    mov ax,0
checkLoop:
    mov al, Ypos
    cmp al, Yfood[esi]
    je collidedY

     mov al, Ypos
    cmp al, Yfood1[esi]
      je collidedY2

    jmp notCollidedY

collidedY:
 
    mov bl, Xpos
    cmp bl, Xfood[esi]
    je collided

    
collidedY2:
  
    mov bl, Xpos
    cmp bl, Xfood1[esi]
   
    je collided2



notCollidedY:
    inc esi

  cmp esi,48
  jl checkLoop

notCollidedX:

    ret

collided:
   inc foodl1
    inc score
    mov YFood[esi],0
      mov XFood[esi],0
 
    
   jmp notCollidedX


    collided2:
     inc foodl1
    inc score
    mov YFood1[esi],0
      mov YFood1[esi],0
    
     
    jmp notCollidedX 
    ; Jump to the notCollidedX label

checkfood ENDP








checkfood2 PROC
   
    mov esi, 0 
    mov ax,0
checkLoop:
    mov al, Ypos
    cmp al, Yfood2[esi]
    je collidedY

     mov al, Ypos
    cmp al, Yfood21[esi]
      je collidedY2

    jmp notCollidedY

collidedY:
    ; If collided in Y, now check X coordinates
    mov bl, Xpos
    cmp bl, Xfood2[esi]
    je collided

    
collidedY2:
  
    mov bl, Xpos
    cmp bl, Xfood21[esi]
    je collided2



notCollidedY:
    inc esi

  cmp esi,48
  jl checkLoop

notCollidedX:

    ret

collided:
    inc score
    inc foodl2
    mov YFood2[esi],0
    jmp notCollidedX  
    ; Jump to the notCollidedX label


    collided2:
    inc score
    inc foodl2
    mov YFood21[esi],0
    jmp notCollidedX  
    ; Jump to the notCollidedX label

checkfood2 ENDP






checkfood3 PROC
 
    mov esi, 0 ;
    mov ax,0
checkLoop:
    mov al, Ypos
    cmp al, Yfood3[esi]
    je collidedY

     mov al, Ypos
    cmp al, Yfood31[esi]
      je collidedY2

    jmp notCollidedY

collidedY:
    ; If collided in Y, now check X coordinates
    mov bl, Xpos
    cmp bl, Xfood3[esi]
    je collided

    
collidedY2:
    mov bl, Xpos
    cmp bl, Xfood31[esi]
    je collided2



notCollidedY:
    inc esi
  cmp esi,48
  jl checkLoop

notCollidedX:
    ret

collided:
    inc score
    mov YFood3[esi],0
    jmp notCollidedX  


    collided2:
    inc score
    mov YFood31[esi],0
    jmp notCollidedX  

checkfood3 ENDP









;;;;;;;;;;;;;;;; level 3;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

EndScreen PROC
call clrscr
 mov eax, red
    call SetTextColor

    ; Display the instructions
    mov dl, 30  
    mov dh, 3  
    call Gotoxy
    mov edx, OFFSET username  
    call WriteString        

    mov dl ,40
    mov dh,3
    Call Gotoxy
   call Gotoxy
    mov edx, OFFSET Strscore  
    call WriteString 


      mov dl ,60
    mov dh,3 
   call Gotoxy
    mov dl,score
    call WriteINT 

    ret
EndScreen ENDP



DrawTeleport PROC
    mov eax, magenta ; (red * 16)
    call SetTextColor
    mov dl, 20
    mov dh, 24
    call Gotoxy
    mov al, "~"
    call WriteChar
  
    ret
DrawTeleport ENDP




checkTeleportCollision PROC
comment @
mov bx,0
    mov bl, xPos
    cmp bl, TeleportXpos

    mov bh, yPos
    cmp bh, TeleportYpos

    je TeleportPlayer 
    jmp continue
    TeleportPlayer:
   call UpdatePlayer
        inc yPos
        call DrawPlayer


    continue:
    @
    ret
    
 checkTeleportCollision ENDP






 
GetName PROC
   
    mov eax, LightGreen
    call SetTextColor

    mov dl, 30  
    mov dh, 10 
    call Gotoxy

  
    mov edx, OFFSET namePrompt
    call WriteString

  
    mov dl, 30  
    mov dh, 12
    call Gotoxy

    mov edx, OFFSET username
    mov ecx, 30 
    call ReadString

   
    mov eax, 0
    
 
  
    call Clrscr
    ret
GetName ENDP






SaveToFile PROC
  
    invoke CreateFile, ADDR filename, FILE_APPEND_DATA, FILE_SHARE_WRITE, 0, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0
    mov ebx, eax  ; File handle

   
   
    invoke SetFilePointer, ebx, 0, 0, FILE_END

  
    invoke WriteFile, ebx, ADDR username, SIZEOF username, ADDR bytes_written, 0

    movzx eax, score
    mov ecx, 10
    mov edx, OFFSET stringValue
    call ConvertToString

       invoke WriteFile, ebx, ADDR stringValue, LENGTHOF stringValue, ADDR bytes_written, 0


        movzx eax, level
    mov ecx, 10
    mov edx, OFFSET stringValue
    call ConvertToString

       invoke WriteFile, ebx, ADDR stringValue, LENGTHOF stringValue, ADDR bytes_written, 0


    mov edx, OFFSET newline
    invoke WriteFile, ebx, edx, LENGTHOF newline, ADDR bytes_written, 0

  
  
    invoke CloseHandle, ebx

    ret

    saveTofile ENDP


    ;;;extraa;;;

    playsd PROC

       mov eax, SND_FILENAME 
    or eax, SND_LOOP      
    or eax, SND_ASYNC     
   invoke PlaySound, ADDR file, 0, eax

    playsd ENDP
    


END main