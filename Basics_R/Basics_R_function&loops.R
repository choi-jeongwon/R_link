#Functions and Loops - statisticsplaybook

#함수의 최대값 위치 찾기
set.seed(100)
my_vec <- sample(1:100, 30)
my_vec

find_max <- function(x) {which.max(x)}
find_max(my_vec)

find_max2 <- function(x){
  maximum <- max(x);
  which(x == maximum)
}
find_max2(my_vec)


#조건문
x <- 3
if(x>5){
  print("x is larger than 5")
} else {
  print("x is less than 5")
}

ifelse(x>5, "larger5", "less5")  


if (TRUE) {
  print("x is larger than 5")
} else {
  print("x is less than 5")
} #TRUE: 앞, False: 뒤


#input에 따라 뱉는 값 여러개 하는 함수
input <- "good"
switch(
  input,
  "good" = 1,
  "normal" = 2,
  "bad" = 3,
  "etc" = print("값이 다름")
)


#Loops
vec <- 1:3
for (i in vec) {
  print()
}

vec2 <- my_vec[1:5] #my_vec의 첫번째~다섯번째
for (i in vec2) {
  i <- 2 * i
  print(paste("Here is", i))
}


i <- 1
while(i < 10){
  i <- i + 1
  print(paste("A", i))
}
  
  #while(i<10)이 true일때까지 코드를 돌리는 것
