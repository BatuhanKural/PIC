#include "image.c"
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at LATH0_bit;
sbit GLCD_CS2 at LATH1_bit;
sbit GLCD_RS  at LATH2_bit;
sbit GLCD_RW  at LATH3_bit;
sbit GLCD_EN  at LATH4_bit;
sbit GLCD_RST at LATH5_bit;

sbit GLCD_CS1_Direction at TRISH0_bit;
sbit GLCD_CS2_Direction at TRISH1_bit;
sbit GLCD_RS_Direction  at TRISH2_bit;
sbit GLCD_RW_Direction  at TRISH3_bit;
sbit GLCD_EN_Direction  at TRISH4_bit;
sbit GLCD_RST_Direction at TRISH5_bit;

sbit LCD_RS at RE0_bit;
sbit LCD_EN at RE1_bit;
sbit LCD_D4 at RA0_bit;
sbit LCD_D5 at RA1_bit;
sbit LCD_D6 at RA2_bit;
sbit LCD_D7 at RA3_bit;

sbit LCD_RS_Direction at TRISE0_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D4_Direction at TRISA0_bit;
sbit LCD_D5_Direction at TRISA1_bit;
sbit LCD_D6_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISA3_bit;

int anumber= 1;
int collusion = 0;
int mute = 0;
int settingsState = 0;
int MainMenuState = 0;
int language = 0;
int languageState = 0;
int dinoState = 0;
int gameState = 1;
int difficultyState = 0;
int score = 0;
int scoreMultiplier = 1;
int speedUp = 1;
int lapCount = 0;
int scoreIncrease = 66;
int best = 0;
int autoPilot = 0;
unsigned alive = 0;
unsigned MSDelay = 50;
unsigned int health = 3;
char scoreText[] = "Skor:";
char bestText[]  = "Yuksek:";
char healthText[] = "Can:";
char scoreTexten[] = "Score:";
char bestTexten[]  = "Best:";
char healthTexten[] = "Health:";
char gameScore[7];
char bestScore[7];
char healthScore[7];


void continueGame(){
    collusion = 1;
    INT2F_bit = 1;
    health == health--;
    Delay_Ms(300);
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    }

void collideMelody(){
Sound_Play(65,200),Sound_Play(165,200),Sound_Play(196,200),Sound_Play(247,200);
}
void bDayMelody(){
Sound_Play(262, 400),Sound_Play(262, 400),Sound_Play(294, 800)
,Sound_Play(262, 800),Sound_Play(349, 800),Sound_Play(330, 1000);
}
void easyMelody() {
Sound_Play(1175, 200),Sound_Play(880, 200),Sound_Play(699, 200)
,Sound_Play(880, 400),Sound_Play(699, 400),Sound_Play(588, 400);
}
void deathMelody(){
Sound_Play(247,200),Sound_Play(196,200),Sound_Play(165,200),Sound_Play(65,200);
}
void jumpMelody(){
Sound_Play(784,10),Sound_Play(1047,10);
}
void loveMelody(){
    Sound_Play(523,400),Sound_Play(330,400),Sound_Play(330,400),Sound_Play(523,400),Sound_Play(523,1600),
    Sound_Play(330,400),Sound_Play(330,200),Sound_Play(523,400),Sound_Play(523,200),Sound_Play(523,400),
    Sound_Play(349,400),Sound_Play(330,400),Sound_Play(293,400),Sound_Play(293,200),Sound_Play(293,400),
    Sound_Play(494,400),Sound_Play(494,1600),Sound_Play(293,400),Sound_Play(293,200),Sound_Play(494,400),
    Sound_Play(494,200),Sound_Play(293,400),Sound_Play(330,400),Sound_Play(262,400),Sound_Play(262,200),
    Sound_Play(262,200),Sound_Play(440,400),Sound_Play(440,1600);
}
void interrupt(){
Sound_Init(&PORTE, 2);
    if(INT0F_bit == 1 && gameState == 1){
        INT0F_bit = 0;
        gameState = 0;
        difficultyState = 1;
        MainMenuState = 1;
        alive = 1;
        autoPilot = 0;
}
         if(INT1F_bit == 1 && gameState == 1){
        INT1F_bit = 0;
        gameState = 0;
        difficultyState = 1;
        MainMenuState = 1;
        alive = 1;
        autoPilot = 0;
}
    if(INT2F_bit == 1 && gameState == 1){
        INT2F_bit = 0;
        gameState = 0;
        difficultyState = 1;
        MainMenuState = 1;
        alive = 1;
        autoPilot = 0;
}
    if(INT1F_bit == 1 && MainMenuState == 1 && gameState == 0){
        INT1F_bit = 0;
        MainMenuState = 3;
}
    if(INT1F_bit == 1 && MainMenuState == 3 && gameState == 0){
        INT1F_bit = 0;
        MainMenuState = 2;
}
    if(INT1F_bit == 1 && MainMenuState == 2 && gameState == 0){
        INT1F_bit = 0;
        MainMenuState = 1;
}
    if(INT2F_bit == 1 && MainMenuState == 1 && gameState == 0){
        INT2F_bit = 0;
        MainMenuState = 2;
}
    if(INT2F_bit == 1 && MainMenuState == 2 && gameState == 0){
        INT2F_bit = 0;
        MainMenuState = 3;
}
    if(INT2F_bit == 1 && MainMenuState == 3 && gameState == 0){
        INT2F_bit = 0;
        MainMenuState = 1;
}
    if(INT0F_bit == 1 && MainMenuState == 1 && gameState == 0){
        INT0F_bit = 0;
        gameState = 4;
}
    if(INT0F_bit == 1 && MainMenuState == 2 && gameState == 0){
        INT0F_bit = 0;
        gameState = 8;
}
    if(INT1F_bit == 1 && settingsState == 0 && gameState == 8){
        INT1F_bit = 0;
        settingsState = 1;
    }
    if(INT1F_bit == 1 && settingsState == 1 && gameState == 8){
        INT1F_bit = 0;
        settingsState = 0;
    }
     if(INT2F_bit == 1 && settingsState == 0 && gameState == 8){
        INT2F_bit = 0;
        settingsState = 1;
    }
    if(INT2F_bit == 1 && settingsState == 1 && gameState == 8){
        INT2F_bit = 0;
        settingsState = 0;
    }
    if(INT0F_bit == 1 && settingsState == 0 && gameState == 8 && mute == 0){
        INT0F_bit = 0;
        mute = 1 ;
    }
    if(INT0F_bit == 1 && settingsState == 0 && gameState == 8 && mute == 1){
        INT0F_bit = 0;
        jumpMelody();
        mute = 0 ;
    }
    if(INT0F_bit == 1 && settingsState == 1 && gameState == 8){
        INT0F_bit = 0;
        gameState = 10;
    }
    if(INT1F_bit == 1 && languageState == 0 && gameState == 10){
        INT1F_bit = 0;
        languageState = 1;
}
    if(INT1F_bit == 1 && languageState == 1 && gameState == 10){
        INT1F_bit = 0;
        languageState = 0;
}
    if(INT2F_bit == 1 && languageState == 0 && gameState == 10){
        INT2F_bit = 0;
        languageState = 1;
}
    if(INT2F_bit == 1 && languageState == 1 && gameState == 10){
        INT2F_bit = 0;
        languageState = 0;
}
    if(INT0F_bit == 1 && languageState == 0 && gameState == 10){
        INT0F_bit = 0;
        language = 0;
        gameState = 0;
}
    if(INT0F_bit == 1 && languageState == 1 && gameState == 10){
        INT0F_bit = 0;
        language = 1;
        gameState = 0;
}
    if(INT0F_bit == 1 && MainMenuState == 3 && gameState == 0){
        INT0F_bit = 0;
        gameState = 9;
}
    if(INT1F_bit == 1 && gameState == 9){
        INT1F_bit = 0;
        gameState = 0;
}
    if(INT1F_bit == 1 && difficultyState == 1 && gameState == 4){
        INT1F_bit = 0;
        difficultyState = 3;
}
    if(INT1F_bit == 1 && difficultyState == 3 && gameState == 4){
        INT1F_bit = 0;
        difficultyState = 2;
}
    if(INT1F_bit == 1 && difficultyState == 2 && gameState == 4){
        INT1F_bit = 0;
        difficultyState = 1;
}
    if(INT2F_bit == 1 && difficultyState == 1 && gameState == 4){
        INT2F_bit = 0;
        difficultyState = 2;
}
    if(INT2F_bit == 1 && difficultyState == 2 && gameState == 4){
        INT2F_bit = 0;
        difficultyState = 3;
}
    if(INT2F_bit == 1 && difficultyState == 3 && gameState == 4){
        INT2F_bit = 0;
        difficultyState = 1;
}
    if(INT0F_bit == 1 && gameState == 4 && difficultyState == 1){
        INT0F_bit = 0;
        gameState = 2;
        MSDelay = 150;
        scoreMultiplier = 1;
        speedUp = 2;
        health = 3;
        anumber = 1;
}
    if(INT0F_bit == 1 && gameState == 4 && difficultyState == 2){
        INT0F_bit = 0;
        gameState = 2;
        MSDelay = 125;
        scoreMultiplier = 2;
        speedUp = 2;
        health = 3;
        anumber = 1;
}
    if(INT0F_bit == 1 && gameState == 4 && difficultyState == 3){
        INT0F_bit = 0;
        gameState = 2;
        MSDelay = 75;
        scoreMultiplier = 3;
        speedUp = 1;
        health = 3;
        anumber = 1;
}
    if(INT2F_bit == 1 && gameState == 2 && collusion == 1){
        INT2F_bit = 0;
        collusion = 0;
        if(mute == 0){
        collideMelody();
        }
           }
    if(INT1F_bit == 1 && gameState == 2 && autoPilot == 0){
        INT1F_bit = 0;
        autoPilot = 1;
}
    if(INT1F_bit == 1 && gameState == 2 && autoPilot == 1){
        INT1F_bit = 0;
        autoPilot = 0;
}
    if(INT0F_bit == 1 && gameState == 2 && dinoState == 0){
        INT0F_bit = 0;
        dinoState = 10;
        if(mute == 0){
        jumpMelody();
        }
}
    if(INT0F_bit == 1 && gameState == 3 && alive == 1){
        INT0F_bit = 0;
        if(mute == 0){
        deathMelody();
        }
        alive = 0;
}
    if(INT0F_bit == 1 && gameState == 3){
        INT0F_bit = 0;
        gameState = 1;
        score = 0;
}
    if(INT0F_bit == 1 && gameState == 6 && alive == 1){
        INT0F_bit = 0;
        if(mute == 0){
        bDayMelody();
        }
        alive = 0;
}
    if(INT0F_bit == 1 && gameState == 6){
        INT0F_bit = 0;
        gameState = 1;
        score = 0;
}
    if(INT0F_bit == 1 && gameState == 5 && alive == 1){
        INT0F_bit = 0;
        if(mute == 0){
        easyMelody();
        }
        alive = 0;
}
    if(INT0F_bit == 1 && gameState == 5){
        INT0F_bit = 0;
        gameState = 1;
        score = 0;
}
    if(INT0F_bit == 1 && gameState == 7 && alive == 1){
        INT0F_bit = 0;
        if(mute == 0){
        loveMelody();
        }
        alive = 0;
}
    if(INT0F_bit == 1 && gameState == 7){
        INT0F_bit = 0;
        gameState = 1;
        score = 0;
}
//To Solve some problems that caused by interrupt flags
    if(INT0F_bit == 1){
        INT0F_bit = 0;
}
    if(INT1F_bit == 1){
        INT1F_bit = 0;
}
    if(INT2F_bit == 1){
        INT2F_bit = 0;
}
}

void main(void){

//Code Starts Here
ANCON0 = 0;
ANCON1= 0;
ANCON2 = 0;
TRISA = 0;
TRISB = 0x07;
TRISC = 0;
TRISD = 0;
TRISE = 0;
TRISH = 0;

//Interrupt Settings
INTEDG0_bit=0; //External Interrupt 0 Edge Select bit
INT0IF_bit=0; //INT0 interrupt Flag Bit Clear
INT0IE_bit=1; //INT0 interrupt Enable Bit Set
INTEDG1_bit=0;
INT1IF_bit=0;
INT1IE_bit=1;
INTEDG2_bit=0;
INT2IF_bit=0;
INT2IE_bit=1;
GIE_bit=1; // Global Interrupt Register Set

//GLCD Initialization
Glcd_Init();
Glcd_Fill(0x00);

//LCD Init
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);

Lcd_Out(1,10,"Trex Game 2K21");


while(1){
if(gameState == 1 && language == 0){
    Glcd_Image(dinoStart);
    Delay_Ms(150);
    Glcd_Image(dinoStart2);
    Delay_Ms(150);
}
if(gameState == 1 && language == 1){
    Glcd_Image(dinoStarten);
    Delay_Ms(150);
    Glcd_Image(dinoStart2en);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 1 && language == 0){
    Glcd_Image(dinoMainMenu);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenu2);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 1 && language == 1){
    Glcd_Image(dinoMainMenuen);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenu2en);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 2 && language == 0){
    Glcd_Image(dinoMainMenu3);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenu);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 2 && language == 1){
    Glcd_Image(dinoMainMenu3en);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenuen);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 3 && language == 0){
    Glcd_Image(dinoMainMenu4);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenu);
    Delay_Ms(150);
}
if(gameState == 0 && MainMenuState == 3 && language == 1){
    Glcd_Image(dinoMainMenu4en);
    Delay_Ms(150);
    Glcd_Image(dinoMainMenuen);
    Delay_Ms(150);
}
if(gameState == 8 && settingsState == 0 && mute == 0){
    Glcd_Image(dinoSettings1);
    Delay_Ms(150);
    Glcd_Image(dinoSettings2);
    Delay_Ms(150);
}
if(gameState == 8 && settingsState == 0 && mute == 1){
    Glcd_Image(dinoSettings3);
    Delay_Ms(150);
    Glcd_Image(dinoSettings12);
    Delay_Ms(150);
}
if(gameState == 8 && settingsState == 1 && mute == 0){
    Glcd_Image(dinoSettings5);
    Delay_Ms(150);
    Glcd_Image(dinoSettings1);
    Delay_Ms(150);
}
if(gameState == 8 && settingsState == 1 && mute == 1){
    Glcd_Image(dinoSettings4);
    Delay_Ms(150);
    Glcd_Image(dinoSettings12);
    Delay_Ms(150);
}
if(gameState == 10 && languageState == 0){
    Glcd_Image(languageSettings);
    Delay_Ms(150);
    Glcd_Image(languageSettings1);
    Delay_Ms(150);
}
if(gameState == 10 && languageState == 1){
    Glcd_Image(languageSettings2);
    Delay_Ms(150);
    Glcd_Image(languageSettings);
    Delay_Ms(150);
}
if(gameState ==9 && language ==0){
      Glcd_Image(dinoAboutme);
      Delay_Ms(150);
}
if(gameState ==9 && language ==1){
      Glcd_Image(dinoAboutmeen);
      Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 1 && language == 0){
    Glcd_Image(dinoMenu1);
    Delay_Ms(150);
    Glcd_Image(dinoMenu2);
    Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 1 && language == 1){
    Glcd_Image(dinoMenu1en);
    Delay_Ms(150);
    Glcd_Image(dinoMenu2en);
    Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 2 && language == 0){
    Glcd_Image(dinoMenu3);
    Delay_Ms(150);
    Glcd_Image(dinoMenu1);
    Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 2 && language == 1){
    Glcd_Image(dinoMenu3en);
    Delay_Ms(150);
    Glcd_Image(dinoMenu1en);
    Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 3 && language == 0){
    Glcd_Image(dinoMenu4);
    Delay_Ms(150);
    Glcd_Image(dinoMenu1);
    Delay_Ms(150);
}
if(gameState == 4 && difficultyState == 3 && language == 1){
    Glcd_Image(dinoMenu4en);
    Delay_Ms(150);
    Glcd_Image(dinoMenu1en);
    Delay_Ms(150);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov22);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump22);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if (gameState == 2){
Lcd_Out(1, 1, "                                ");
if(anumber == 1){
IntToStr(health, healthScore);
Lcd_Out(2,22,healthScore);
anumber = 0;
}
if(language == 0){
        Lcd_Out(1,5,bestText);
        Lcd_Out(1,16,scoreText);
        Lcd_Out(1,26,healthText);
        }
   if(language == 1){
        Lcd_Out(1,5,bestTexten);
        Lcd_Out(1,16,scoreTexten);
        Lcd_Out(1,26,healthTexten);
          }
          }
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov12);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump12);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov23);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump23);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov13);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump13);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov24);
    Vdelay_ms(MSDelay);
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump24);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov14);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump14);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov25);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump25);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov15);
    Vdelay_ms(MSDelay);
    if(autoPilot == 1){
        INT0F_bit = 1;
}
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump15);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov26);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump26);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump16);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump27);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump17);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump28);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump18);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump29);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump19);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
    asd:
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov210);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump210);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov110);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump110);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov211);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump211);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov111);
    Vdelay_ms(MSDelay);
    MSDelay = MSDelay - speedUp;
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump111);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov32);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump32);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov42);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump42);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov33);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump33);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov43);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump43);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov34);
    Vdelay_ms(MSDelay);
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump34);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov44);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump44);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov35);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump35);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov45);
    Vdelay_ms(MSDelay);
    if(autoPilot == 1){
        INT0F_bit = 1;
}
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump45);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov36);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump36);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump36);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump37);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump37);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
   if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump38);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump38);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump39);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    if(health>1){
    continueGame();
    goto asd1;
    }
    if(health == 1){
    health = health--;
    IntToStr(health, healthScore);
    LCD_Out(2,22,healthScore);
    gameState = 3;
    }
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump39);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
   asd1:
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov410);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump410);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov310);
    Vdelay_ms(MSDelay);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump310);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov411);
    Vdelay_ms(MSDelay);
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump411);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    score = score + (scoreIncrease * scoreMultiplier);
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
}
if(gameState == 2 && dinoState == 0){
    Glcd_Image(dinoMov311);
    Vdelay_ms(MSDelay);
    MSDelay = MSDelay - speedUp;
}
if(gameState == 2 && dinoState > 0){
    Glcd_Image(dinoJump311);
    Vdelay_ms(MSDelay);
    dinoState = dinoState--;
    MSDelay = MSDelay - speedUp;
}

if(gameState == 2){
    lapCount++;
}
if(lapCount > 2){
    lapCount = 0;
    score = score + (1000*(health)); // When the game is finished, add 1000 to the score for the each remaining life
    IntToStr(score, gameScore);
    Lcd_Out(2,14,gameScore);
    if(difficultyState == 1){
    gameState = 5; //Change this for endings
    INT0F_bit = 1;
}
    if(difficultyState == 2){
    gameState = 6; //Change this for endings
     if(language == 0){
    Glcd_Image(dinoEnd21);
    }
     else{
    Glcd_Image(dinoEnd21en);
    }
    INT0F_bit = 1;
}
    if(difficultyState == 3){
    gameState = 7; //Change this for endings
     if(language == 0){
    Glcd_Image(dinoEnd31);
    }
     else{
    Glcd_Image(dinoEnd31en);
    }
    INT0F_bit = 1;
}
}
if(best < score){
    best = score;
    IntToStr(best, bestScore);
    Lcd_Out(2,4,bestScore);
}
if(gameState == 3 && alive == 1){
    INT0F_bit = 1;
}
if(gameState == 3 && language == 0 && health == 0){
    Glcd_Image(gameOver1);
    Delay_Ms(150);
    Glcd_Image(gameOver2);
    Delay_Ms(150);
    lapCount = 0;
}
if(gameState == 3 && language == 1 && health == 0){
    Glcd_Image(gameOver1en);
    Delay_Ms(150);
     Glcd_Image(gameOver2en);
    Delay_Ms(150);
}
if(gameState == 5 && language == 0){
    Glcd_Image(dinoEnd11);
    Delay_Ms(150);
    Glcd_Image(dinoEnd12);
    Delay_Ms(150);
}
if(gameState == 5 && language == 1){
    Glcd_Image(dinoEnd11en);
    Delay_Ms(150);
    Glcd_Image(dinoEnd12en);
    Delay_Ms(150);
}
if(gameState == 6 && language == 0){
    Glcd_Image(dinoEnd22);
    Delay_Ms(150);
    Glcd_Image(dinoEnd21);
    Delay_Ms(150);
}
if(gameState == 6 && language == 1){
    Glcd_Image(dinoEnd22en);
    Delay_Ms(150);
    Glcd_Image(dinoEnd21en);
    Delay_Ms(150);
}
if(gameState == 7 && language == 0){
    Glcd_Image(dinoEnd32);
    Delay_Ms(500);
    Glcd_Image(dinoEnd31);
    Delay_Ms(1000);
}
if(gameState == 7 && language == 1){
    Glcd_Image(dinoEnd32en);
    Delay_Ms(500);
    Glcd_Image(dinoEnd31en);
    Delay_Ms(1000);
}
}
}