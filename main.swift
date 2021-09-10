import Foundation

print("Введите число ожидаемых массивов: " )
let optionalString: String? = readLine()
print("")
if optionalString == nil  {
    print ("введите натуральное больше 0")
    
}
else if let num = optionalString, var numberOfArrays = Int(num) {
    if numberOfArrays == 0  {
        print ("введите натуральное больше 0")
        
    }
    else if numberOfArrays < 0 {
            numberOfArrays = -numberOfArrays
        print("!знак введенного числа бы изменен!")
        }

func createArrays(number: Int) {
var ArrayOfLengths = [Int]()

for indexOfArray in 1...number{
    

    var NewArray = [Int]()
    var lengthOfArray = Int.random(in: 1..<21)
    

    func hh(repeatingValue: Int){
        for repeatingValue in ArrayOfLengths{
        if repeatingValue == lengthOfArray {
            lengthOfArray += 1
            return hh(repeatingValue: lengthOfArray)
            } else{
                
        ArrayOfLengths.append(lengthOfArray)}}
        }
        
hh(repeatingValue: lengthOfArray)
for _ in 1...lengthOfArray{


    let elementOfNewArray = Int.random(in: 0...40)
    NewArray.append(elementOfNewArray)

}
ArrayOfLengths.append(lengthOfArray)

if indexOfArray%2 == 0 {
    print("Не отсортированный массив №\(indexOfArray) : \(NewArray)")
    NewArray.sort(by: <)
    print("Отсортированный по возрастанию массив №\(indexOfArray) : \(NewArray)")
    print("")
} else {
    print("Не отсортированный массив №\(indexOfArray) : \(NewArray)")
    NewArray.sort(by: >)
    print("Отсортированный по убыванию массив №\(indexOfArray) : \(NewArray)")
    print("")
}
}
}
createArrays(number: numberOfArrays)
    }
