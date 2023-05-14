//
//  ChemicalElement.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

// https://www.rsc.org/periodic-table
// https://en.wikipedia.org/wiki/List_of_chemical_elements
public enum ChemicalElement : String, CaseIterable {
    // H2O melting point = 273.15 K (13.99+27.18=41.17)
    // H2SO4 melting point = 283.26 K (13.99+388.36+(27.18*2)=511.07)
    
    case hydrogen
    case helium
    case lithium
    case beryllium
    case boron
    case carbon
    case nitrogen
    case oxygen
    case fluorine
    case neon
    case sodium
    case magnesium
    case aluminium
    case silicon
    case phosphorus
    case sulfur
    case chlorine
    case argon
    case potassium
    case calcium
    case scandium
    case titanium
    case vanadium
    case chromium
    case manganese
    case iron
    case cobalt
    case nickel
    case copper
    case zinc
    case gallium
    case germanium
    case arsenic
    case selenium
    case bromine
    case krypton
    case rubidium
    case strontium
    case yttrium
    case zirconium
    case niobium
    case molybdenum
    case technetium
    case ruthenium
    case rhodium
    case palladium
    case silver
    case cadmium
    case indium
    case tin
    case antimony
    case tellurium
    case iodine
    case xenon
    case caesium
    case barium
    case lanthanum
    case cerium
    case praseodymium
    case neodymium
    case promethium
    case samarium
    case europium
    case gadolinium
    case terbium
    case dysprosium
    case holmium
    case erbium
    case thulium
    case ytterbium
    case lutetium
    case hafnium
    case tantalum
    case tungsten
    case rhenium
    case osmium
    case iridium
    case platinum
    case gold
    case mercury
    case thallium
    case lead
    case bismuth
    case polonium
    case astatine
    case radon
    case francium
    case radium
    case actinium
    case thorium
    case protactinium
    case uranium
    case neptunium
    case plutonium
    case americium
    case curium
    case berkelium
    case californium
    case einsteinium
    case fermium
    case mendelevium
    case nobelium
    case lawrencium
    case rutherfordium
    case dubnium
    case seaborgium
    case bohrium
    case hassium
    case meitnerium
    case darmstadtium
    case roentgenium
    case copernicium
    case nihonium
    case flerovium
    case moscovium
    case livermorium
    case tennessine
    case oganesson
    
    init?(proton_count: Int) {
        guard let element:ChemicalElement = Self.allCases.get(proton_count - 1) else { return nil }
        self = element
    }
    
    private func get_details(atomic_number: Int, symbol: String, standard_atomic_weight: String, density: String, melting_point: String?, boiling_point: String?) -> ChemicalElementDetails {
        return ChemicalElementDetails(identifier: rawValue, atomic_number: atomic_number, symbol: symbol, standard_atomic_weight: standard_atomic_weight, density: density, melting_point: melting_point, boiling_point: boiling_point)
    }
    
    public var get_details : ChemicalElementDetails {
        return ChemicalElementDetails.value_of(identifier: rawValue)!
    }
    public var details : ChemicalElementDetails {
        switch self {
        case .hydrogen:
            return get_details(atomic_number: 1, symbol: "H", standard_atomic_weight: "1.0080", density: "0.00008988", melting_point: "13.99", boiling_point: "20.271")
        case .helium:
            return get_details(atomic_number: 2, symbol: "He", standard_atomic_weight: "4.0026", density: "0.0001785", melting_point: nil, boiling_point: "4.222")
        case .lithium:
            return get_details(atomic_number: 3, symbol: "Li", standard_atomic_weight: "6.94", density: "0.534", melting_point: "453.65", boiling_point: "1615")
        case .beryllium:
            return get_details(atomic_number: 4, symbol: "Be", standard_atomic_weight: "9.0122", density: "1.85", melting_point: "1560", boiling_point: "2741")
        case .boron:
            return get_details(atomic_number: 5, symbol: "B", standard_atomic_weight: "10.81", density: "2.34", melting_point: "2350", boiling_point: "4273")
        case .carbon:
            return get_details(atomic_number: 6, symbol: "C", standard_atomic_weight: "12.011", density: "2.267", melting_point: "4098", boiling_point: "4098")
        case .nitrogen:
            return get_details(atomic_number: 7, symbol: "N", standard_atomic_weight: "14.007", density: "0.0012506", melting_point: "63.2", boiling_point: "77.355")
        case .oxygen:
            return get_details(atomic_number: 8, symbol: "O", standard_atomic_weight: "15.999", density: "0.001429", melting_point: "54.36", boiling_point: "90.188")
        case .fluorine:
            return get_details(atomic_number: 9, symbol: "F", standard_atomic_weight: "18.998", density: "0.001696", melting_point: "53.48", boiling_point: "85.04")
        case .neon:
            return get_details(atomic_number: 10, symbol: "Ne", standard_atomic_weight: "20.180", density: "0.0009002", melting_point: "24.56", boiling_point: "27.104")
        case .sodium:
            return get_details(atomic_number: 11, symbol: "Na", standard_atomic_weight: "22.990", density: "0.968", melting_point: "370.944", boiling_point: "1156.090")
        case .magnesium:
            return get_details(atomic_number: 12, symbol: "Mg", standard_atomic_weight: "24.305", density: "1.738", melting_point: "923", boiling_point: "1363")
        case .aluminium:
            return get_details(atomic_number: 13, symbol: "Al", standard_atomic_weight: "26.982", density: "2.70", melting_point: "933.473", boiling_point: "2792")
        case .silicon:
            return get_details(atomic_number: 14, symbol: "Si", standard_atomic_weight: "28.085", density: "2.3290", melting_point: "1687", boiling_point: "3538")
        case .phosphorus:
            return get_details(atomic_number: 15, symbol: "P", standard_atomic_weight: "30.974", density: "1.823", melting_point: "317.3", boiling_point: "553.7")
        case .sulfur:
            return get_details(atomic_number: 16, symbol: "S", standard_atomic_weight: "32.06", density: "2.07", melting_point: "388.36", boiling_point: "717.76")
        case .chlorine:
            return get_details(atomic_number: 17, symbol: "Cl", standard_atomic_weight: "35.45", density: "0.0032", melting_point: "171.1", boiling_point: "239.11")
        case .argon:
            return get_details(atomic_number: 18, symbol: "Ar", standard_atomic_weight: "39.95", density: "0.001784", melting_point: "83.81", boiling_point: "87.302")
        case .potassium:
            return get_details(atomic_number: 19, symbol: "K", standard_atomic_weight: "39.098", density: "0.89", melting_point: "336.7", boiling_point: "1032")
        case .calcium:
            return get_details(atomic_number: 20, symbol: "Ca", standard_atomic_weight: "40.078", density: "1.55", melting_point: "1115", boiling_point: "1757")
        case .scandium:
            return get_details(atomic_number: 21, symbol: "Sc", standard_atomic_weight: "44.956", density: "2.985", melting_point: "1814", boiling_point: "3109")
        case .titanium:
            return get_details(atomic_number: 22, symbol: "Ti", standard_atomic_weight: "47.867", density: "4.506", melting_point: "1943", boiling_point: "3560")
        case .vanadium:
            return get_details(atomic_number: 23, symbol: "V", standard_atomic_weight: "50.942", density: "6.11", melting_point: "2183", boiling_point: "3680")
        case .chromium:
            return get_details(atomic_number: 24, symbol: "Cr", standard_atomic_weight: "51.996", density: "7.15", melting_point: "2180", boiling_point: "2944")
        case .manganese:
            return get_details(atomic_number: 25, symbol: "Mn", standard_atomic_weight: "54.938", density: "7.21", melting_point: "1519", boiling_point: "2334")
        case .iron:
            return get_details(atomic_number: 26, symbol: "Fe", standard_atomic_weight: "55.845", density: "7.874", melting_point: "1811", boiling_point: "3134")
        case .cobalt:
            return get_details(atomic_number: 27, symbol: "Co", standard_atomic_weight: "58.933", density: "8.90", melting_point: "1768", boiling_point: "3200")
        case .nickel:
            return get_details(atomic_number: 28, symbol: "Ni", standard_atomic_weight: "58.693", density: "8.908", melting_point: "1728", boiling_point: "3186")
        case .copper:
            return get_details(atomic_number: 29, symbol: "Cu", standard_atomic_weight: "63.546", density: "8.96", melting_point: "1357.77", boiling_point: "2833")
        case .zinc:
            return get_details(atomic_number: 30, symbol: "Zn", standard_atomic_weight: "65.38", density: "7.14", melting_point: "692.677", boiling_point: "1180")
        case .gallium:
            return get_details(atomic_number: 31, symbol: "Ga", standard_atomic_weight: "69.723", density: "5.91", melting_point: "302.9146", boiling_point: "2502")
        case .germanium:
            return get_details(atomic_number: 32, symbol: "Ge", standard_atomic_weight: "72.630", density: "5.323", melting_point: "1211.4", boiling_point: "3106")
        case .arsenic:
            return get_details(atomic_number: 33, symbol: "As", standard_atomic_weight: "74.922", density: "5.727", melting_point: "889", boiling_point: "889")
        case .selenium:
            return get_details(atomic_number: 34, symbol: "Se", standard_atomic_weight: "78.971", density: "4.81", melting_point: "494", boiling_point: "958")
        case .bromine:
            return get_details(atomic_number: 35, symbol: "Br", standard_atomic_weight: "79.904", density: "3.1028", melting_point: "266", boiling_point: "332")
        case .krypton:
            return get_details(atomic_number: 36, symbol: "Kr", standard_atomic_weight: "83.798", density: "0.003749", melting_point: "115.78", boiling_point: "119.735")
        case .rubidium:
            return get_details(atomic_number: 37, symbol: "Rb", standard_atomic_weight: "85.468", density: "1.532", melting_point: "312.45", boiling_point: "961")
        case .strontium:
            return get_details(atomic_number: 38, symbol: "Sr", standard_atomic_weight: "87.62", density: "2.64", melting_point: "1050", boiling_point: "1650")
        case .yttrium:
            return get_details(atomic_number: 39, symbol: "Y", standard_atomic_weight: "88.906", density: "4.472", melting_point: "1795", boiling_point: "3618")
        case .zirconium:
            return get_details(atomic_number: 40, symbol: "Zr", standard_atomic_weight: "91.224", density: "6.52", melting_point: "2127", boiling_point: "4679")
        case .niobium:
            return get_details(atomic_number: 41, symbol: "Nb", standard_atomic_weight: "92.906", density: "8.57", melting_point: "2750", boiling_point: "5014")
        case .molybdenum:
            return get_details(atomic_number: 42, symbol: "Mo", standard_atomic_weight: "95.95", density: "10.28", melting_point: "2895", boiling_point: "4912")
        case .technetium:
            return get_details(atomic_number: 43, symbol: "Tc", standard_atomic_weight: "98", density: "11", melting_point: "2430", boiling_point: "4535")
        case .ruthenium:
            return get_details(atomic_number: 44, symbol: "Ru", standard_atomic_weight: "101.07", density: "12.45", melting_point: "2606", boiling_point: "4420")
        case .rhodium:
            return get_details(atomic_number: 45, symbol: "Rh", standard_atomic_weight: "102.91", density: "12.41", melting_point: "2236", boiling_point: "3968")
        case .palladium:
            return get_details(atomic_number: 46, symbol: "Pd", standard_atomic_weight: "106.42", density: "12.023", melting_point: "1828", boiling_point: "3236")
        case .silver:
            return get_details(atomic_number: 47, symbol: "Ag", standard_atomic_weight: "107.87", density: "10.49", melting_point: "1234.93", boiling_point: "2435")
        case .cadmium:
            return get_details(atomic_number: 48, symbol: "Cd", standard_atomic_weight: "112.41", density: "8.65", melting_point: "594.219", boiling_point: "1040")
        case .indium:
            return get_details(atomic_number: 49, symbol: "In", standard_atomic_weight: "114.82", density: "7.31", melting_point: "429.75", boiling_point: "2300")
        case .tin:
            return get_details(atomic_number: 50, symbol: "Sn", standard_atomic_weight: "118.71", density: "7.265", melting_point: "505.078", boiling_point: "2859")
        case .antimony:
            return get_details(atomic_number: 51, symbol: "Sb", standard_atomic_weight: "121.76", density: "6.697", melting_point: "903.778", boiling_point: "1860")
        case .tellurium:
            return get_details(atomic_number: 52, symbol: "Te", standard_atomic_weight: "127.60", density: "6.24", melting_point: "722.66", boiling_point: "1261")
        case .iodine:
            return get_details(atomic_number: 53, symbol: "I", standard_atomic_weight: "126.90", density: "4.933", melting_point: "386.9", boiling_point: "457.6")
        case .xenon:
            return get_details(atomic_number: 54, symbol: "Xe", standard_atomic_weight: "131.29", density: "0.005894", melting_point: "161.4", boiling_point: "165.051")
        case .caesium:
            return get_details(atomic_number: 55, symbol: "Cs", standard_atomic_weight: "132.91", density: "1.93", melting_point: "301.7", boiling_point: "944")
        case .barium:
            return get_details(atomic_number: 56, symbol: "Ba", standard_atomic_weight: "137.327", density: "3.51", melting_point: "1000", boiling_point: "2118")
        case .lanthanum:
            return get_details(atomic_number: 57, symbol: "La", standard_atomic_weight: "138.905", density: "6.162", melting_point: "1193", boiling_point: "3737")
        case .cerium:
            return get_details(atomic_number: 58, symbol: "Ce", standard_atomic_weight: "140.12", density: "6.770", melting_point: "1072", boiling_point: "3716")
        case .praseodymium:
            return get_details(atomic_number: 59, symbol: "Pr", standard_atomic_weight: "140.91", density: "6.77", melting_point: "1204", boiling_point: "3793")
        case .neodymium:
            return get_details(atomic_number: 60, symbol: "Nd", standard_atomic_weight: "144.24", density: "7.01", melting_point: "1289", boiling_point: "3347")
        case .promethium:
            return get_details(atomic_number: 61, symbol: "Pm", standard_atomic_weight: "145", density: "7.26", melting_point: "1315", boiling_point: "3273")
        case .samarium:
            return get_details(atomic_number: 62, symbol: "Sm", standard_atomic_weight: "150.36", density: "7.52", melting_point: "1345", boiling_point: "2067")
        case .europium:
            return get_details(atomic_number: 63, symbol: "Eu", standard_atomic_weight: "151.96", density: "5.244", melting_point: "1095", boiling_point: "1802")
        case .gadolinium:
            return get_details(atomic_number: 64, symbol: "Gd", standard_atomic_weight: "157.25", density: "7.90", melting_point: "1586", boiling_point: "3546")
        case .terbium:
            return get_details(atomic_number: 65, symbol: "Tb", standard_atomic_weight: "158.93", density: "8.23", melting_point: "1632", boiling_point: "3503")
        case .dysprosium:
            return get_details(atomic_number: 66, symbol: "Dy", standard_atomic_weight: "162.50", density: "8.540", melting_point: "1685", boiling_point: "2840")
        case .holmium:
            return get_details(atomic_number: 67, symbol: "Ho", standard_atomic_weight: "164.93", density: "8.79", melting_point: "1745", boiling_point: "2973")
        case .erbium:
            return get_details(atomic_number: 68, symbol: "Er", standard_atomic_weight: "167.26", density: "9.066", melting_point: "1802", boiling_point: "3141")
        case .thulium:
            return get_details(atomic_number: 69, symbol: "Tm", standard_atomic_weight: "168.93", density: "9.32", melting_point: "1818", boiling_point: "2223")
        case .ytterbium:
            return get_details(atomic_number: 70, symbol: "Yb", standard_atomic_weight: "173.05", density: "6.90", melting_point: "1097", boiling_point: "1469")
        case .lutetium:
            return get_details(atomic_number: 71, symbol: "Lu", standard_atomic_weight: "174.97", density: "9.841", melting_point: "1936", boiling_point: "3675")
        case .hafnium:
            return get_details(atomic_number: 72, symbol: "Hf", standard_atomic_weight: "178.49", density: "13.31", melting_point: "2506", boiling_point: "4873")
        case .tantalum:
            return get_details(atomic_number: 73, symbol: "Ta", standard_atomic_weight: "180.95", density: "16.69", melting_point: "3290", boiling_point: "5728")
        case .tungsten:
            return get_details(atomic_number: 74, symbol: "W", standard_atomic_weight: "183.84", density: "19.25", melting_point: "3687", boiling_point: "5828")
        case .rhenium:
            return get_details(atomic_number: 75, symbol: "Re", standard_atomic_weight: "186.21", density: "21.02", melting_point: "3458", boiling_point: "5863")
        case .osmium:
            return get_details(atomic_number: 76, symbol: "Os", standard_atomic_weight: "190.23", density: "22.59", melting_point: "3306", boiling_point: "5281")
        case .iridium:
            return get_details(atomic_number: 77, symbol: "Ir", standard_atomic_weight: "192.22", density: "22.56", melting_point: "2719", boiling_point: "4701")
        case .platinum:
            return get_details(atomic_number: 78, symbol: "Pt", standard_atomic_weight: "195.08", density: "21.45", melting_point: "2041.4", boiling_point: "4098")
        case .gold:
            return get_details(atomic_number: 79, symbol: "Au", standard_atomic_weight: "196.97", density: "19.3", melting_point: "1337.33", boiling_point: "3109")
        case .mercury:
            return get_details(atomic_number: 80, symbol: "Hg", standard_atomic_weight: "200.59", density: "13.534", melting_point: "234.321", boiling_point: "629.769")
        case .thallium:
            return get_details(atomic_number: 81, symbol: "Tl", standard_atomic_weight: "204.38", density: "11.85", melting_point: "577", boiling_point: "1746")
        case .lead:
            return get_details(atomic_number: 82, symbol: "Pb", standard_atomic_weight: "207.2", density: "11.34", melting_point: "600.612", boiling_point: "2022")
        case .bismuth:
            return get_details(atomic_number: 83, symbol: "Bi", standard_atomic_weight: "208.98", density: "9.78", melting_point: "544.556", boiling_point: "1837")
        case .polonium:
            return get_details(atomic_number: 84, symbol: "Po", standard_atomic_weight: "209", density: "9.196", melting_point: "527", boiling_point: "1235")
        case .astatine:
            return get_details(atomic_number: 85, symbol: "At", standard_atomic_weight: "210", density: "8.91", melting_point: "573", boiling_point: "623")
        case .radon:
            return get_details(atomic_number: 86, symbol: "Rn", standard_atomic_weight: "222", density: "0.00973", melting_point: "202", boiling_point: "211.5")
        case .francium:
            return get_details(atomic_number: 87, symbol: "Fr", standard_atomic_weight: "223", density: "2.48", melting_point: "294", boiling_point: "923")
        case .radium:
            return get_details(atomic_number: 88, symbol: "Ra", standard_atomic_weight: "226", density: "5.5", melting_point: "969", boiling_point: "1773")
        case .actinium:
            return get_details(atomic_number: 89, symbol: "Ac", standard_atomic_weight: "227", density: "10", melting_point: "1323", boiling_point: "3473")
        case .thorium:
            return get_details(atomic_number: 90, symbol: "Th", standard_atomic_weight: "232.04", density: "11.7", melting_point: "2023", boiling_point: "5058")
        case .protactinium:
            return get_details(atomic_number: 91, symbol: "Pa", standard_atomic_weight: "231.04", density: "15.37", melting_point: "1845", boiling_point: "4273")
        case .uranium:
            return get_details(atomic_number: 92, symbol: "U", standard_atomic_weight: "238.03", density: "19.1", melting_point: "1408", boiling_point: "4404")
        case .neptunium:
            return get_details(atomic_number: 93, symbol: "Np", standard_atomic_weight: "237", density: "20.45", melting_point: "917", boiling_point: "4175")
        case .plutonium:
            return get_details(atomic_number: 94, symbol: "Pu", standard_atomic_weight: "244", density: "19.85", melting_point: "913", boiling_point: "3501")
        case .americium:
            return get_details(atomic_number: 95, symbol: "Am", standard_atomic_weight: "243", density: "12", melting_point: "1449", boiling_point: "2284")
        case .curium:
            return get_details(atomic_number: 96, symbol: "Cm", standard_atomic_weight: "247", density: "13.51", melting_point: "1618", boiling_point: nil)
        case .berkelium:
            return get_details(atomic_number: 97, symbol: "Bk", standard_atomic_weight: "247", density: "14.78", melting_point: "1259", boiling_point: nil)
        case .californium:
            return get_details(atomic_number: 98, symbol: "Cf", standard_atomic_weight: "251", density: "15.1", melting_point: "1173", boiling_point: nil)
        case .einsteinium:
            return get_details(atomic_number: 99, symbol: "Es", standard_atomic_weight: "252", density: "8.84", melting_point: "1133", boiling_point: nil)
        case .fermium:
            return get_details(atomic_number: 100, symbol: "Fm", standard_atomic_weight: "257", density: "9.7", melting_point: "1800", boiling_point: nil)
        case .mendelevium:
            return get_details(atomic_number: 101, symbol: "Md", standard_atomic_weight: "258", density: "10.3", melting_point: "1100", boiling_point: nil)
        case .nobelium:
            return get_details(atomic_number: 102, symbol: "No", standard_atomic_weight: "259", density: "9.9", melting_point: "1100", boiling_point: nil)
        case .lawrencium:
            return get_details(atomic_number: 103, symbol: "Lr", standard_atomic_weight: "266", density: "14.4", melting_point: "1900", boiling_point: nil)
        case .rutherfordium:
            return get_details(atomic_number: 104, symbol: "Rf", standard_atomic_weight: "267", density: "17", melting_point: nil, boiling_point: nil)
        case .dubnium:
            return get_details(atomic_number: 105, symbol: "Db", standard_atomic_weight: "268", density: "21.6", melting_point: nil, boiling_point: nil)
        case .seaborgium:
            return get_details(atomic_number: 106, symbol: "Sg", standard_atomic_weight: "269", density: "23", melting_point: nil, boiling_point: nil)
        case .bohrium:
            return get_details(atomic_number: 107, symbol: "Bh", standard_atomic_weight: "270", density: "26", melting_point: nil, boiling_point: nil)
        case .hassium:
            return get_details(atomic_number: 108, symbol: "Hs", standard_atomic_weight: "269", density: "27", melting_point: nil, boiling_point: nil)
        case .meitnerium:
            return get_details(atomic_number: 109, symbol: "Mt", standard_atomic_weight: "278", density: "27", melting_point: nil, boiling_point: nil)
        case .darmstadtium:
            return get_details(atomic_number: 110, symbol: "Ds", standard_atomic_weight: "281", density: "26", melting_point: nil, boiling_point: nil)
        case .roentgenium:
            return get_details(atomic_number: 111, symbol: "Rg", standard_atomic_weight: "282", density: "22", melting_point: nil, boiling_point: nil)
        case .copernicium:
            return get_details(atomic_number: 112, symbol: "Cn", standard_atomic_weight: "285", density: "14.0", melting_point: nil, boiling_point: nil)
        case .nihonium:
            return get_details(atomic_number: 113, symbol: "Nh", standard_atomic_weight: "286", density: "16", melting_point: nil, boiling_point: nil)
        case .flerovium:
            return get_details(atomic_number: 114, symbol: "Fl", standard_atomic_weight: "289", density: "11.4", melting_point: nil, boiling_point: nil)
        case .moscovium:
            return get_details(atomic_number: 115, symbol: "Mc", standard_atomic_weight: "290", density: "13.5", melting_point: nil, boiling_point: nil)
        case .livermorium:
            return get_details(atomic_number: 116, symbol: "Lv", standard_atomic_weight: "293", density: "12.9", melting_point: nil, boiling_point: nil)
        case .tennessine:
            return get_details(atomic_number: 117, symbol: "Ts", standard_atomic_weight: "294", density: "7.1", melting_point: nil, boiling_point: nil)
        case .oganesson:
            return get_details(atomic_number: 118, symbol: "Og", standard_atomic_weight: "294", density: "7", melting_point: nil, boiling_point: nil)
        }
    }
    
    public var isotope_type : (any ChemicalElementIsotope.Type)? {
        switch self {
        case .hydrogen:   return HydrogenIsotope.self
        case .helium:     return HeliumIsotope.self
        case .lithium:    return LithiumIsotope.self
        case .beryllium:  return BerylliumIsotope.self
        case .boron:      return BoronIsotope.self
        case .carbon:     return CarbonIsotope.self
        case .nitrogen:   return NitrogenIsotope.self
        case .oxygen:     return OxygenIsotope.self
        case .fluorine:   return FluorineIsotope.self
        case .neon:       return NeonIsotope.self
        case .sodium:     return SodiumIsotope.self
        case .magnesium:  return MagnesiumIsotope.self
        case .aluminium:  return AluminiumIsotope.self
        case .silicon:    return SiliconIsotope.self
        case .phosphorus: return PhosphorusIsotope.self
        case .sulfur:     return SulfurIsotope.self
        case .chlorine:   return ChlorineIsotope.self
        case .argon:      return ArgonIsotope.self
        case .potassium:  return PotassiumIsotope.self
        case .calcium:    return CalciumIsotope.self
        case .scandium:   return ScandiumIsotope.self
        case .titanium:   return TitaniumIsotope.self
        case .vanadium:   return VanadiumIsotope.self
        case .chromium:   return ChromiumIsotope.self
        case .manganese:  return ManganeseIsotope.self
            
        default:
            return nil
        }
    }
}
