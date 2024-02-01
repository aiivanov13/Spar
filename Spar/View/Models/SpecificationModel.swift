import Foundation

struct Specification: Hashable {
    let name: String
    let value: String
}

extension Specification {
    static var specifications: [Specification] = [
        Specification(name: "Производство\n", value: "Россия, Краснодарский\nкрай"),
        Specification(name: "Энергетическая\nценность, ккал/100г", value: "25 ккал, 105\nкДж"),
        Specification(name: "Жиры/100г", value: "0,1г"),
        Specification(name: "Белки/100г", value: "1,3г"),
        Specification(name: "Углеводы/100г", value: "3,3г")
    ]
}
