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
} #for: 끝까지 돌아감

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
  
  #while(i<10)이 true일때까지 코드를 돌리는 것(조건반복) 만약 그냥 while(TRUE) 하면 무한반복..

#break:조건 따라 loop break해달라는 것/아래의 경우 A 2 ~ A 10 까지 프린트됨
i <- 1
while(TRUE){
  i <- i + 1
  if (i > 10) break
  print(paste("A", i))
}


my_vec + 1

#1:length(my_vec): my_vec의 끝까지
for (i in 1:30){
  my_vec[i] <- my_vec[i] +1
}
my_vec



#apply함수
a <- matrix(1:12,
              nrow=3,
            ncol=4)
a

apply(a, 1, max) #1: 행별루프 2: 열별 루프 -> 첫행의 맥스, 둘째행의 맥스, 셋째행의 맥스 나옴

for (i in 1:3) {
  print(max(a[i,]))
} #위와 비슷한 작업

#함수를 apply에 넣기
my_f <- function(vec){
  max(vec)^2 + 3
}

apply(a, 1, my_f)


array_3d <- array(1:24,
                  dim = c(3,4,2)) #즉, layer 2개에 3*4 행렬
array_3d

apply(array_3d, 1, max) #1: 가로(행) 루프였는데, 배열에서는 차원이 여러개 있는 경우 Layer1, 2의 첫 행 중 맥스
apply(array_3d, 3, max) #기준: 각 레이어의 전체.



