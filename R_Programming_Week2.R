x <- 2

if(x > 3) {
  y <- 10
} else {
  y <- 0
}
y
y <- if(x > 3) {
  10
} else {
  0
}
y
x


for(i in 1:10) {
  print(i)
}

x <- c("a", "b", "c", "d")

for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])


