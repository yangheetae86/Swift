var largest : Int

let a = 15
let b = 4
let c = 22

if a > b {
    largest = a
} else {
    largest = b
}
print(largest)
largest = a > b ? b : c
print(largest)


