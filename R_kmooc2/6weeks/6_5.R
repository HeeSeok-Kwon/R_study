#프로그래밍 예제
#숫자 맞추기 게임

# n <- readline(prompt="숫자를 입력하세요: ")
# cat("입력한 숫자는 ",n,"입니다.\n")

num <- round(runif(1)*100,digits=0)
guess <- -1
cat("Guess a number between 0 and 100.\n")

while(guess != num){
  guess <- readline(prompt="Guess number :")
  guess <- as.integer(guess)
  if(guess == num){
    cat("Congratulations",num,"is right.\n")
  } else if(guess < num) {
    cat("It's smaller!\n")
  } else if(guess > num) {
    cat("It's bigger!\n")
  }
}