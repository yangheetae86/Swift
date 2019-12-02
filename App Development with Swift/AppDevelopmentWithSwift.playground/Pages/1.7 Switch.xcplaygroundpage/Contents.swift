let numberOfWheels = 2
switch numberOfWheels {
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("Somany")
}


let character = "f"

switch character {
case "a","b","c","d","e" :
    print("this character is a vowel")
default:
    print("this character is not a vowel")
}


let distance = 99
switch distance {
case 0...9:
    print("close")
case 10...99:
    print("n close")
case 100...999:
    print("nn close")
default:
    print("nnn close")
}
