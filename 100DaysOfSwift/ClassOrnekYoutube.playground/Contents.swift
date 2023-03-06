import UIKit

class Hayvanlar {
    var bacakSayisi: Int
    
    init(bacakSayisi: Int) {
        self.bacakSayisi = bacakSayisi
    }
}

class Kopek: Hayvanlar {
    func havla() -> String {
        return "Her köpek farklı şekilde havlar."
    }
    
    override init(bacakSayisi: Int){
        super.init(bacakSayisi: bacakSayisi)
    }
}

class Kangal: Kopek {
    override func havla() -> String {
        return "Şampiyon Sivasspor"
    }
}

class CobanKopegi: Kopek {
    override func havla() -> String {
        return "AvAvAvAv"
    }
}

class Kedi: Hayvanlar {
    var evcilMi: Bool
    
    init(evcilMi: Bool, bacakSayisi: Int){
        self.evcilMi = evcilMi
        super.init(bacakSayisi: bacakSayisi)
    }
}

class Aslan: Kedi {
    override init(evcilMi: Bool, bacakSayisi: Int) {
        super.init(evcilMi: evcilMi, bacakSayisi: bacakSayisi)
    }
}

class VanKedisi: Kedi {
    override init(evcilMi: Bool, bacakSayisi: Int) {
        super.init(evcilMi: evcilMi, bacakSayisi: bacakSayisi)
    }
    
    func gozRengi(gozRengi: Bool) -> String {
        if gozRengi == true {
            return "Van kedilerinin gözleri iki renkli olur"
        } else {
            return "Ama bazı Van kedileri tıpkı diğer kediler gibi tek bir göz rengine sahip olabilir."
        }
    }
}

var kedi1 = Kedi(evcilMi: true, bacakSayisi: 4)
var cobanKopegi = CobanKopegi(bacakSayisi: 4)
var aslan = Aslan(evcilMi: false, bacakSayisi: 26)
print(cobanKopegi.havla())
print(cobanKopegi.bacakSayisi)
print("Aslan \(aslan.evcilMi)")
print("Aslanın \(aslan.bacakSayisi) bacağı vardır.")

print("\(kedi1.bacakSayisi) bacaklı bir kedi olan Van Kedisi, \(kedi1.evcilMi) evcildir.")

