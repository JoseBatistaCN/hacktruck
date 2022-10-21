struct retangulo {
    let comprimento: Float
    let altura: Float
    
    var area:Float {
        return altura * comprimento
    }
}

let retangulo1 = retangulo(comprimento: 35, altura: 30)
print(retangulo1.altura)
print(retangulo1.area)
