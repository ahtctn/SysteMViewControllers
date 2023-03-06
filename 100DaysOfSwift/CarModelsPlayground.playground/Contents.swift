import UIKit

enum CarBrand: String, CaseIterable {
    case Mercedes = "asda"
    case BMW = "whroom"
    case Sahin = "dj akman"
    case Toyota = "hayat onda"
    case Renault = "Wututu"
}

for brand in CarBrand.allCases{
    print(brand.rawValue)
}

func carKnownFor(brand: CarBrand) -> String {
    return brand.rawValue
}

carKnownFor(brand: .BMW)
carKnownFor(brand: .Mercedes)
carKnownFor(brand: .Sahin)

enum TofasModelPrice {
    case Sahin(price: Int)
    case Kartal(price: Int)
    case Dogan(price: Int)
    case Murat131(price: Int)
    case Serce
}

func getTofasPrice(for tofasModel: TofasModelPrice){
    switch tofasModel{
        
    case .Sahin(price: let price):
        if price > 100_000 {
            print("bu paraya şahin mi olur")
        } else {
            print("hayırlı ve uğurlu olsun")
        }
    case .Kartal(price: let price):
        if price > 110_000 {
            print("Bu paraya kartal mı olur?")
        } else {
            print("hayırlı ve uğurlu olsun.")
        }
    case .Dogan(price: let price):
        if price > 120_000 {
            print("Bu paraya doğan mı olur?")
        } else {
            print("hayırlı olsun.")
        }
    case .Murat131(price: let price):
        if price > 90_000 {
            print("bu paraya murat mı olur?")
        } else {
            print("hayırlı olsun")
        }
    case .Serce:
        print("uzak dur.")
    }
}
    
//Computed Properties in Enums

