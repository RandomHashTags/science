//
//  ChemicalElement.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers

// TODO: support uncertainty
struct ChemicalElement : Hashable {
    static var elements : [Int:ChemicalElement] = [:]
    
    let atomic_number:Int
    let symbol:String
    /// Masured in Dalton
    let standard_atomic_weight:Float
    //let freezing_point:TemperatureUnit
    /// if known, melting point of this chemical element, measured in degrees Kelvin
    let melting_point:TemperatureUnit?
    
    init(atomic_number: Int, symbol: String, standard_atomic_weight: Float, melting_point: String?) {
        self.atomic_number = atomic_number
        self.symbol = symbol
        self.standard_atomic_weight = standard_atomic_weight
        //self.freezing_point = TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat(freezing_point))
        self.melting_point = melting_point != nil ? TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat(melting_point!)) : nil
        ChemicalElement.elements[atomic_number] = self
    }
    
    lazy var atom : Atom = {
        return get_isotope(atomic_weight: standard_atomic_weight)
    }()
    
    func get_isotope(atomic_weight: Float) -> Atom {
        let protons:[Proton] = [Proton].init(repeating: Proton(), count: atomic_number)
        let neutrons:[Neutron] = [Neutron].init(repeating: Neutron(), count: Int(atomic_weight) - atomic_number)
        let electron_shells:[ElectronShell] = ElectronShell.collect(electron_count: atomic_number)
        return Atom(nucleus: AtomicNucleus(protons: protons, neutrons: neutrons), electron_shells: electron_shells, velocity: SpeedUnit(type: SpeedUnitType.metre_per_second, value: HugeFloat.zero))
    }
}
// https://www.rsc.org/periodic-table
// https://en.wikipedia.org/wiki/List_of_chemical_elements
extension ChemicalElement {
    static var hydrogen:ChemicalElement =      ChemicalElement(atomic_number: 1, symbol: "H", standard_atomic_weight: 1.0080, melting_point: "13.99")
    static var helium:ChemicalElement =        ChemicalElement(atomic_number: 2, symbol: "He", standard_atomic_weight: 4.0026, melting_point: nil)
    static var lithium:ChemicalElement =       ChemicalElement(atomic_number: 3, symbol: "Li", standard_atomic_weight: 6.94, melting_point: "453.65")
    static var beryllium:ChemicalElement =     ChemicalElement(atomic_number: 4, symbol: "Be", standard_atomic_weight: 9.0122, melting_point: "1560")
    static var boron:ChemicalElement =         ChemicalElement(atomic_number: 5, symbol: "B", standard_atomic_weight: 10.81, melting_point: "2350")
    static var carbon:ChemicalElement =        ChemicalElement(atomic_number: 6, symbol: "C", standard_atomic_weight: 12.011, melting_point: "4098")
    static var nitrogen:ChemicalElement =      ChemicalElement(atomic_number: 7, symbol: "N", standard_atomic_weight: 14.007, melting_point: "63.2")
    static var oxygen:ChemicalElement =        ChemicalElement(atomic_number: 8, symbol: "O", standard_atomic_weight: 15.999, melting_point: "54.36")
    static var fluorine:ChemicalElement =      ChemicalElement(atomic_number: 9, symbol: "F", standard_atomic_weight: 18.998, melting_point: "53.48")
    static var neon:ChemicalElement =          ChemicalElement(atomic_number: 10, symbol: "Ne", standard_atomic_weight: 20.180, melting_point: "24.56")
    static var sodium:ChemicalElement =        ChemicalElement(atomic_number: 11, symbol: "Na", standard_atomic_weight: 22.990, melting_point: "370.944")
    static var magnesium:ChemicalElement =     ChemicalElement(atomic_number: 12, symbol: "Mg", standard_atomic_weight: 24.305, melting_point: "923")
    static var aluminium:ChemicalElement =     ChemicalElement(atomic_number: 13, symbol: "Al", standard_atomic_weight: 26.982, melting_point: "933.473")
    static var silicon:ChemicalElement =       ChemicalElement(atomic_number: 14, symbol: "Si", standard_atomic_weight: 28.085, melting_point: "1687")
    static var phosphorus:ChemicalElement =    ChemicalElement(atomic_number: 15, symbol: "P", standard_atomic_weight: 30.974, melting_point: "317.3")
    static var sulfur:ChemicalElement =        ChemicalElement(atomic_number: 16, symbol: "S", standard_atomic_weight: 32.06, melting_point: "388.36")
    static var chlorine:ChemicalElement =      ChemicalElement(atomic_number: 17, symbol: "Cl", standard_atomic_weight: 35.45, melting_point: "171.1")
    static var argon:ChemicalElement =         ChemicalElement(atomic_number: 18, symbol: "Ar", standard_atomic_weight: 39.95, melting_point: "83.81")
    static var potassium:ChemicalElement =     ChemicalElement(atomic_number: 19, symbol: "K", standard_atomic_weight: 39.098, melting_point: "336.7")
    static var calcium:ChemicalElement =       ChemicalElement(atomic_number: 20, symbol: "Ca", standard_atomic_weight: 40.078, melting_point: "1115")
    static var scandium:ChemicalElement =      ChemicalElement(atomic_number: 21, symbol: "Sc", standard_atomic_weight: 44.956, melting_point: "1814")
    static var titanium:ChemicalElement =      ChemicalElement(atomic_number: 22, symbol: "Ti", standard_atomic_weight: 47.867, melting_point: "1943")
    static var vanadium:ChemicalElement =      ChemicalElement(atomic_number: 23, symbol: "V", standard_atomic_weight: 50.942, melting_point: "2183")
    static var chromium:ChemicalElement =      ChemicalElement(atomic_number: 24, symbol: "Cr", standard_atomic_weight: 51.996, melting_point: "2180")
    static var manganese:ChemicalElement =     ChemicalElement(atomic_number: 25, symbol: "Mn", standard_atomic_weight: 54.938, melting_point: "1519")
    static var iron:ChemicalElement =          ChemicalElement(atomic_number: 26, symbol: "Fe", standard_atomic_weight: 55.845, melting_point: "1811")
    static var cobalt:ChemicalElement =        ChemicalElement(atomic_number: 27, symbol: "Co", standard_atomic_weight: 58.933, melting_point: "1768")
    static var nickel:ChemicalElement =        ChemicalElement(atomic_number: 28, symbol: "Ni", standard_atomic_weight: 58.693, melting_point: "1728")
    static var copper:ChemicalElement =        ChemicalElement(atomic_number: 29, symbol: "Cu", standard_atomic_weight: 63.546, melting_point: "1357.77")
    static var zinc:ChemicalElement =          ChemicalElement(atomic_number: 30, symbol: "Zn", standard_atomic_weight: 65.38, melting_point: "692.677")
    static var gallium:ChemicalElement =       ChemicalElement(atomic_number: 31, symbol: "Ga", standard_atomic_weight: 69.723, melting_point: "302.9146")
    static var germanium:ChemicalElement =     ChemicalElement(atomic_number: 32, symbol: "Ge", standard_atomic_weight: 72.630, melting_point: "1211.4")
    static var arsenic:ChemicalElement =       ChemicalElement(atomic_number: 33, symbol: "As", standard_atomic_weight: 74.922, melting_point: "889")
    static var selenium:ChemicalElement =      ChemicalElement(atomic_number: 34, symbol: "Se", standard_atomic_weight: 78.971, melting_point: "494")
    static var bromine:ChemicalElement =       ChemicalElement(atomic_number: 35, symbol: "Br", standard_atomic_weight: 79.904, melting_point: "266")
    static var krypton:ChemicalElement =       ChemicalElement(atomic_number: 36, symbol: "Kr", standard_atomic_weight: 83.798, melting_point: "115.78")
    static var rubidium:ChemicalElement =      ChemicalElement(atomic_number: 37, symbol: "Rb", standard_atomic_weight: 85.468, melting_point: "312.45")
    static var strontium:ChemicalElement =     ChemicalElement(atomic_number: 38, symbol: "Sr", standard_atomic_weight: 87.62, melting_point: "1050")
    static var yttrium:ChemicalElement =       ChemicalElement(atomic_number: 39, symbol: "Y", standard_atomic_weight: 88.906, melting_point: "1795")
    static var zirconium:ChemicalElement =     ChemicalElement(atomic_number: 40, symbol: "Zr", standard_atomic_weight: 91.224, melting_point: "2127")
    static var niobium:ChemicalElement =       ChemicalElement(atomic_number: 41, symbol: "Nb", standard_atomic_weight: 92.906, melting_point: "2750")
    static var molybdenum:ChemicalElement =    ChemicalElement(atomic_number: 42, symbol: "Mo", standard_atomic_weight: 95.95, melting_point: "2895")
    static var technetium:ChemicalElement =    ChemicalElement(atomic_number: 43, symbol: "Tc", standard_atomic_weight: 98, melting_point: "2430")
    static var ruthenium:ChemicalElement =     ChemicalElement(atomic_number: 44, symbol: "Ru", standard_atomic_weight: 101.07, melting_point: "2606")
    static var rhodium:ChemicalElement =       ChemicalElement(atomic_number: 45, symbol: "Rh", standard_atomic_weight: 102.91, melting_point: "2236")
    static var palladium:ChemicalElement =     ChemicalElement(atomic_number: 46, symbol: "Pd", standard_atomic_weight: 106.42, melting_point: "1828")
    static var silver:ChemicalElement =        ChemicalElement(atomic_number: 47, symbol: "Ag", standard_atomic_weight: 107.87, melting_point: "1234.93")
    static var cadmium:ChemicalElement =       ChemicalElement(atomic_number: 48, symbol: "Cd", standard_atomic_weight: 112.41, melting_point: "594.219")
    static var indium:ChemicalElement =        ChemicalElement(atomic_number: 49, symbol: "In", standard_atomic_weight: 114.82, melting_point: "429.75")
    static var tin:ChemicalElement =           ChemicalElement(atomic_number: 50, symbol: "Sn", standard_atomic_weight: 118.71, melting_point: "505.078")
    static var antimony:ChemicalElement =      ChemicalElement(atomic_number: 51, symbol: "Sb", standard_atomic_weight: 121.76, melting_point: "903.778")
    static var tellurium:ChemicalElement =     ChemicalElement(atomic_number: 52, symbol: "Te", standard_atomic_weight: 127.60, melting_point: "722.66")
    static var iodine:ChemicalElement =        ChemicalElement(atomic_number: 53, symbol: "I", standard_atomic_weight: 126.90, melting_point: "386.9")
    static var xenon:ChemicalElement =         ChemicalElement(atomic_number: 54, symbol: "Xe", standard_atomic_weight: 131.29, melting_point: "161.4")
    static var caesium:ChemicalElement =       ChemicalElement(atomic_number: 55, symbol: "Cs", standard_atomic_weight: 132.91, melting_point: "301.7")
    static var barium:ChemicalElement =        ChemicalElement(atomic_number: 56, symbol: "Ba", standard_atomic_weight: 137.327, melting_point: "1000")
    static var lanthanum:ChemicalElement =     ChemicalElement(atomic_number: 57, symbol: "La", standard_atomic_weight: 138.905, melting_point: "1193")
    static var cerium:ChemicalElement =        ChemicalElement(atomic_number: 58, symbol: "Ce", standard_atomic_weight: 140.12, melting_point: "1072")
    static var praseodymium:ChemicalElement =  ChemicalElement(atomic_number: 59, symbol: "Pr", standard_atomic_weight: 140.91, melting_point: "1204")
    static var neodymium:ChemicalElement =     ChemicalElement(atomic_number: 60, symbol: "Nd", standard_atomic_weight: 144.24, melting_point: "1289")
    static var promethium:ChemicalElement =    ChemicalElement(atomic_number: 61, symbol: "Pm", standard_atomic_weight: 145, melting_point: "1315")
    static var samarium:ChemicalElement =      ChemicalElement(atomic_number: 62, symbol: "Sm", standard_atomic_weight: 150.36, melting_point: "1345")
    static var europium:ChemicalElement =      ChemicalElement(atomic_number: 63, symbol: "Eu", standard_atomic_weight: 151.96, melting_point: "1095")
    static var gadolinium:ChemicalElement =    ChemicalElement(atomic_number: 64, symbol: "Gd", standard_atomic_weight: 157.25, melting_point: "1586")
    static var terbium:ChemicalElement =       ChemicalElement(atomic_number: 65, symbol: "Tb", standard_atomic_weight: 158.93, melting_point: "1632")
    static var dysprosium:ChemicalElement =    ChemicalElement(atomic_number: 66, symbol: "Dy", standard_atomic_weight: 162.50, melting_point: "1685")
    static var holmium:ChemicalElement =       ChemicalElement(atomic_number: 67, symbol: "Ho", standard_atomic_weight: 164.93, melting_point: "1745")
    static var erbium:ChemicalElement =        ChemicalElement(atomic_number: 68, symbol: "Er", standard_atomic_weight: 167.26, melting_point: "1802")
    static var thulium:ChemicalElement =       ChemicalElement(atomic_number: 69, symbol: "Tm", standard_atomic_weight: 168.93, melting_point: "1818")
    static var ytterbium:ChemicalElement =     ChemicalElement(atomic_number: 70, symbol: "Yb", standard_atomic_weight: 173.05, melting_point: "1097")
    static var lutetium:ChemicalElement =      ChemicalElement(atomic_number: 71, symbol: "Lu", standard_atomic_weight: 174.97, melting_point: "1936")
    static var hafnium:ChemicalElement =       ChemicalElement(atomic_number: 72, symbol: "Hf", standard_atomic_weight: 178.49, melting_point: "2506")
    static var tantalum:ChemicalElement =      ChemicalElement(atomic_number: 73, symbol: "Ta", standard_atomic_weight: 180.95, melting_point: "3290")
    static var tungsten:ChemicalElement =      ChemicalElement(atomic_number: 74, symbol: "W", standard_atomic_weight: 183.84, melting_point: "3687")
    static var rhenium:ChemicalElement =       ChemicalElement(atomic_number: 75, symbol: "Re", standard_atomic_weight: 186.21, melting_point: "3458")
    static var osmium:ChemicalElement =        ChemicalElement(atomic_number: 76, symbol: "Os", standard_atomic_weight: 190.23, melting_point: "3306")
    static var iridium:ChemicalElement =       ChemicalElement(atomic_number: 77, symbol: "Ir", standard_atomic_weight: 192.22, melting_point: "2719")
    static var platinum:ChemicalElement =      ChemicalElement(atomic_number: 78, symbol: "Pt", standard_atomic_weight: 195.08, melting_point: "2041.4")
    static var gold:ChemicalElement =          ChemicalElement(atomic_number: 79, symbol: "Au", standard_atomic_weight: 196.97, melting_point: "1337.33")
    static var mercury:ChemicalElement =       ChemicalElement(atomic_number: 80, symbol: "Hg", standard_atomic_weight: 200.59, melting_point: "234.321")
    static var thallium:ChemicalElement =      ChemicalElement(atomic_number: 81, symbol: "Tl", standard_atomic_weight: 204.38, melting_point: "577")
    static var lead:ChemicalElement =          ChemicalElement(atomic_number: 82, symbol: "Pb", standard_atomic_weight: 207.2, melting_point: "600.612")
    static var bismuth:ChemicalElement =       ChemicalElement(atomic_number: 83, symbol: "Bi", standard_atomic_weight: 208.98, melting_point: "544.556")
    static var polonium:ChemicalElement =      ChemicalElement(atomic_number: 84, symbol: "Po", standard_atomic_weight: 209, melting_point: "527")
    static var astatine:ChemicalElement =      ChemicalElement(atomic_number: 85, symbol: "At", standard_atomic_weight: 210, melting_point: "573")
    static var radon:ChemicalElement =         ChemicalElement(atomic_number: 86, symbol: "Rn", standard_atomic_weight: 222, melting_point: "202")
    static var francium:ChemicalElement =      ChemicalElement(atomic_number: 87, symbol: "Fr", standard_atomic_weight: 223, melting_point: "294")
    static var radium:ChemicalElement =        ChemicalElement(atomic_number: 88, symbol: "Ra", standard_atomic_weight: 226, melting_point: "969")
    static var actinium:ChemicalElement =      ChemicalElement(atomic_number: 89, symbol: "Ac", standard_atomic_weight: 227, melting_point: "1323")
    static var thorium:ChemicalElement =       ChemicalElement(atomic_number: 90, symbol: "Th", standard_atomic_weight: 232.04, melting_point: "2023")
    static var protactinium:ChemicalElement =  ChemicalElement(atomic_number: 91, symbol: "Pa", standard_atomic_weight: 231.04, melting_point: "1845")
    static var uranium:ChemicalElement =       ChemicalElement(atomic_number: 92, symbol: "U", standard_atomic_weight: 238.03, melting_point: "1408")
    static var neptunium:ChemicalElement =     ChemicalElement(atomic_number: 93, symbol: "Np", standard_atomic_weight: 237, melting_point: "917")
    static var plutonium:ChemicalElement =     ChemicalElement(atomic_number: 94, symbol: "Pu", standard_atomic_weight: 244, melting_point: "913")
    static var americium:ChemicalElement =     ChemicalElement(atomic_number: 95, symbol: "Am", standard_atomic_weight: 243, melting_point: "1449")
    static var curium:ChemicalElement =        ChemicalElement(atomic_number: 96, symbol: "Cm", standard_atomic_weight: 247, melting_point: "1618")
    static var berkelium:ChemicalElement =     ChemicalElement(atomic_number: 97, symbol: "Bk", standard_atomic_weight: 247, melting_point: "1259")
    static var californium:ChemicalElement =   ChemicalElement(atomic_number: 98, symbol: "Cf", standard_atomic_weight: 251, melting_point: "1173")
    static var einsteinium:ChemicalElement =   ChemicalElement(atomic_number: 99, symbol: "Es", standard_atomic_weight: 252, melting_point: "1133")
    static var fermium:ChemicalElement =       ChemicalElement(atomic_number: 100, symbol: "Fm", standard_atomic_weight: 257, melting_point: "1800")
    static var mendelevium:ChemicalElement =   ChemicalElement(atomic_number: 101, symbol: "Md", standard_atomic_weight: 258, melting_point: "1100")
    static var nobelium:ChemicalElement =      ChemicalElement(atomic_number: 102, symbol: "No", standard_atomic_weight: 259, melting_point: "1100")
    static var lawrencium:ChemicalElement =    ChemicalElement(atomic_number: 103, symbol: "Lr", standard_atomic_weight: 266, melting_point: "1900")
    static var rutherfordium:ChemicalElement = ChemicalElement(atomic_number: 104, symbol: "Rf", standard_atomic_weight: 267, melting_point: nil)
    static var dubnium:ChemicalElement =       ChemicalElement(atomic_number: 105, symbol: "Db", standard_atomic_weight: 268, melting_point: nil)
    static var seaborgium:ChemicalElement =    ChemicalElement(atomic_number: 106, symbol: "Sg", standard_atomic_weight: 269, melting_point: nil)
    static var bohrium:ChemicalElement =       ChemicalElement(atomic_number: 107, symbol: "Bh", standard_atomic_weight: 270, melting_point: nil)
    static var hassium:ChemicalElement =       ChemicalElement(atomic_number: 108, symbol: "Hs", standard_atomic_weight: 269, melting_point: nil)
    static var meitnerium:ChemicalElement =    ChemicalElement(atomic_number: 109, symbol: "Mt", standard_atomic_weight: 278, melting_point: nil)
    static var darmstadtium:ChemicalElement =  ChemicalElement(atomic_number: 110, symbol: "Ds", standard_atomic_weight: 281, melting_point: nil)
    static var roentgenium:ChemicalElement =   ChemicalElement(atomic_number: 111, symbol: "Rg", standard_atomic_weight: 282, melting_point: nil)
    static var copernicium:ChemicalElement =   ChemicalElement(atomic_number: 112, symbol: "Cn", standard_atomic_weight: 285, melting_point: nil)
    static var nihonium:ChemicalElement =      ChemicalElement(atomic_number: 113, symbol: "Nh", standard_atomic_weight: 286, melting_point: nil)
    static var flerovium:ChemicalElement =     ChemicalElement(atomic_number: 114, symbol: "Fl", standard_atomic_weight: 289, melting_point: nil)
    static var moscovium:ChemicalElement =     ChemicalElement(atomic_number: 115, symbol: "Mc", standard_atomic_weight: 290, melting_point: nil)
    static var livermorium:ChemicalElement =   ChemicalElement(atomic_number: 116, symbol: "Lv", standard_atomic_weight: 293, melting_point: nil)
    static var tennessine:ChemicalElement =    ChemicalElement(atomic_number: 117, symbol: "Ts", standard_atomic_weight: 294, melting_point: nil)
    static var oganesson:ChemicalElement =     ChemicalElement(atomic_number: 118, symbol: "Og", standard_atomic_weight: 294, melting_point: nil)
}
