//
//  ChemicalElement.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers

enum ChemicalElement : Int {
    case undiscovered = 0
    case hydrogen = 1
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
    
    var atom : Atom {
        return get_isotope(atomic_weight: standard_atomic_weight)
    }
    
    func get_isotope(atomic_weight: Float) -> Atom {
        let protons:[Proton] = [Proton].init(repeating: Proton(), count: rawValue)
        let neutrons:[Neutron] = [Neutron].init(repeating: Neutron(), count: Int(atomic_weight) - rawValue)
        let electron_shells:[ElectronShell] = ElectronShell.collect(electron_count: rawValue)
        return Atom(nucleus: AtomicNucleus(protons: protons, neutrons: neutrons), electron_shells: electron_shells, velocity: SpeedUnit(type: SpeedUnitType.metre_per_second, value: HugeFloat.zero))
    }
    
    /// Measured in Dalton.
    var standard_atomic_weight : Float {
        switch self {
        case .undiscovered: return 0
        case .hydrogen: return 1.0080
        case .helium: return 4.0026
        case .lithium: return 6.94
        case .beryllium: return 9.0122
        case .boron: return 10.81
        case .carbon: return 12.011
        case .nitrogen: return 14.007
        case .oxygen: return 15.999
        case .fluorine: return 18.998
        case .neon: return 20.180
        case .sodium: return 22.990
        case .magnesium: return 24.305
        case .aluminium: return 26.982
        case .silicon: return 28.085
        case .phosphorus: return 30.974
        case .sulfur: return 32.06
        case .chlorine: return 35.45
        case .argon: return 39.95
        case .potassium: return 39.098
        case .calcium: return 40.078
        case .scandium: return 44.956
        case .titanium: return 47.867
        case .vanadium: return 50.942
        case .chromium: return 51.996
        case .manganese: return 54.938
        case .iron: return 55.845
        case .cobalt: return 58.933
        case .nickel: return 58.693
        case .copper: return 63.546
        case .zinc: return 65.38
        case .gallium: return 69.723
        case .germanium: return 72.630
        case .arsenic: return 74.922
        case .selenium: return 78.971
        case .bromine: return 79.904
        case .krypton: return 83.798
        case .rubidium: return 85.468
        case .strontium: return 87.62
        case .yttrium: return 88.906
        case .zirconium: return 91.224
        case .niobium: return 92.906
        case .molybdenum: return 95.95
        case .technetium: return 97
        case .ruthenium: return 101.07
        case .rhodium: return 102.91
        case .palladium: return 106.42
        case .silver: return 107.87
        case .cadmium: return 112.41
        case .indium: return 114.82
        case .tin: return 118.71
        case .antimony: return 121.76
        case .tellurium: return 127.60
        case .iodine: return 126.90
        case .xenon: return 131.29
        case .caesium: return 132.91
        case .barium: return 137.33
        case .lanthanum: return 138.91
        case .cerium: return 140.12
        case .praseodymium: return 140.91
        case .neodymium: return 144.24
        case .promethium: return 145
        case .samarium: return 150.36
        case .europium: return 151.96
        case .gadolinium: return 157.25
        case .terbium: return 158.93
        case .dysprosium: return 162.50
        case .holmium: return 164.93
        case .erbium: return 167.26
        case .thulium: return 168.93
        case .ytterbium: return 173.05
        case .lutetium: return 174.97
        case .hafnium: return 178.49
        case .tantalum: return 180.95
        case .tungsten: return 183.84
        case .rhenium: return 186.21
        case .osmium: return 190.23
        case .iridium: return 192.22
        case .platinum: return 195.08
        case .gold: return 196.97
        case .mercury: return 200.59
        case .thallium: return 204.38
        case .lead: return 207.2
        case .bismuth: return 208.98
        case .polonium: return 209
        case .astatine: return 210
        case .radon: return 222
        case .francium: return 223
        case .radium: return 226
        case .actinium: return 227
        case .thorium: return 232.04
        case .protactinium: return 231.04
        case .uranium: return 238.03
        case .neptunium: return 237
        case .plutonium: return 244
        case .americium: return 243
        case .curium: return 247
        case .berkelium: return 247
        case .californium: return 251
        case .einsteinium: return 252
        case .fermium: return 257
        case .mendelevium: return 258
        case .nobelium: return 259
        case .lawrencium: return 266
        case .rutherfordium: return 267
        case .dubnium: return 268
        case .seaborgium: return 269
        case .bohrium: return 270
        case .hassium: return 269
        case .meitnerium: return 278
        case .darmstadtium: return 281
        case .roentgenium: return 282
        case .copernicium: return 285
        case .nihonium: return 286
        case .flerovium: return 289
        case .moscovium: return 290
        case .livermorium: return 293
        case .tennessine: return 294
        case .oganesson: return 294
        }
    }
    
    var symbol : String {
        switch self {
        case .undiscovered: return "?"
        case .hydrogen:   return "H"
        case .helium:     return "He"
        case .lithium:    return "Li"
        case .beryllium:  return "Be"
        case .boron:      return "B"
        case .carbon:     return "C"
        case .nitrogen:   return "N"
        case .oxygen:     return "O"
        case .fluorine:   return "F"
        case .neon:       return "Ne"
        case .sodium:     return "Na"
        case .magnesium:  return "Mg"
        case .aluminium:  return "Al"
        case .silicon:    return "Si"
        case .phosphorus: return "P"
        case .sulfur:     return "S"
        case .chlorine:   return "Cl"
        case .argon:      return "Ar"
        case .potassium:  return "K"
        case .calcium:    return "Ca"
        case .scandium:   return "Sc"
        case .titanium:   return "Ti"
        case .vanadium:   return "V"
        case .chromium:   return "Cr"
        case .manganese:  return "Mn"
        case .iron:       return "Fe"
        case .cobalt:     return "Co"
        case .nickel:     return "Ni"
        case .copper:     return "Cu"
        case .zinc:       return "Zn"
        case .gallium:    return "Ga"
        case .germanium:  return "Ge"
        case .arsenic:    return "As"
        case .selenium:   return "Se"
        case .bromine:    return "Br"
        case .krypton:    return "Kr"
        case .rubidium:   return "Rb"
        case .strontium:  return "Sr"
        case .yttrium:    return "Y"
        case .zirconium:  return "Zr"
        case .niobium:    return "Nb"
        case .molybdenum: return "Mo"
        case .technetium: return "Tc"
        case .ruthenium:  return "Ru"
        case .rhodium:    return "Rh"
        case .palladium:  return "Pd"
        case .silver:     return "Ag"
        case .cadmium:    return "Cd"
        case .indium:     return "In"
        case .tin:        return "Sn"
        case .antimony:   return "Sb"
        case .tellurium:  return "Te"
        case .iodine:     return "I"
        case .xenon:      return "Xe"
        case .caesium:    return "Cs"
        case .barium:     return "Ba"
        case .lanthanum:  return "La"
        case .cerium:     return "Ce"
        case .praseodymium: return "Pr"
        case .neodymium:    return "Nd"
        case .promethium:   return "Pm"
        case .samarium:     return "Sm"
        case .europium:     return "Eu"
        case .gadolinium:   return "Gd"
        case .terbium:      return "Tb"
        case .dysprosium:   return "Dy"
        case .holmium:      return "Ho"
        case .erbium:       return "Er"
        case .thulium:      return "Tm"
        case .ytterbium:    return "Yb"
        case .lutetium:     return "Lu"
        case .hafnium:      return "Hf"
        case .tantalum:     return "Ta"
        case .tungsten:     return "W"
        case .rhenium:      return "Re"
        case .osmium:       return "Os"
        case .iridium:      return "Ir"
        case .platinum:     return "Pt"
        case .gold:         return "Au"
        case .mercury:      return "Hg"
        case .thallium:     return "Tl"
        case .lead:         return "Pb"
        case .bismuth:      return "Bi"
        case .polonium:     return "Po"
        case .astatine:     return "At"
        case .radon:        return "Rn"
        case .francium:     return "Fr"
        case .radium:       return "Ra"
        case .actinium:     return "Ac"
        case .thorium:      return "Th"
        case .protactinium: return "Pa"
        case .uranium:      return "U"
        case .neptunium:    return "Np"
        case .plutonium:    return "Pu"
        case .americium:    return "Am"
        case .curium:       return "Cm"
        case .berkelium:    return "Bk"
        case .californium:  return "Cf"
        case .einsteinium:  return "Es"
        case .fermium:      return "Fm"
        case .mendelevium:  return "Md"
        case .nobelium:     return "No"
        case .lawrencium:   return "Lr"
        case .rutherfordium: return "Rf"
        case .dubnium:       return "Db"
        case .seaborgium:    return "Sg"
        case .bohrium:       return "Bh"
        case .hassium:       return "Hs"
        case .meitnerium:    return "Mt"
        case .darmstadtium:  return "Ds"
        case .roentgenium:   return "Rg"
        case .copernicium:   return "Cn"
        case .nihonium:      return "Nh"
        case .flerovium:     return "Fl"
        case .moscovium:     return "Mc"
        case .livermorium:   return "Lv"
        case .tennessine:    return "Ts"
        case .oganesson:     return "Og"
        }
    }
}
