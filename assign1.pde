PImage fighter;
PImage hp;
PImage enemy;
PImage treasure;
PImage bg1;
PImage bg2;

int hpX = floor(random(200));
int enemyX = 0;
int enemyY = floor(random(400));
int treasureX = floor(random(600));
int treasureY = floor(random(400));
int bgX = 0;

void setup () {
  size(640,480) ;  
  
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
}

void draw() {
  //bg
  if(bgX<=641){
    image(bg1, bgX,0);
    image(bg2, bgX-641,0);
  }
  
  if(bgX>641){
    bgX=-641;
  }
  
  if(bgX<0){
    image(bg1, bgX,0);
    image(bg2, bgX+641,0);
  }
  bgX += 1;  
  println(bgX);
  println(bgX-641);
  
  //fighter
  image(fighter, 580,235);
  
  //hp
  fill(#FF0000);
  rect(9,9, hpX, 20);
  image(hp, 0,5);
  
  //enemy
  image(enemy, enemyX, enemyY);
  enemyX += 2;
  enemyX %= 640;
  
  //treasure
  image(treasure ,treasureX, treasureY);
}
