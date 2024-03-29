//
//  OneSOrbital.swift
//  Overlap Integral Between Two Orbitals
//
//  Created by Marco on 2/29/2024.
//


//                1s Orbital
//
//                                  3/2
//                /  1   \       /Z\       -Zr/a
//   Psi       =  | ----  |      |-|     e
//      1,0,0     |   __  |      \a/
//                \ |/pi /
//

import Foundation

// 1s Orbital Wavefunction

struct OneSOrbital {
    
    // Atomic number for hydrogen
    let Z: Double = 1.0

    // Bohr radius in angstroms
    let a: Double = 0.5292

    // Calculates the wavefunction value of a 1s orbital given the distance from the nucleus
    func calculateWavefunction(r: Double) -> Double {
        let normalizationFactor = 1.0 / sqrt(Double.pi)
        let exponent = -Z * r / a
        let radialPart = pow(Z / a, 1.5)
        return normalizationFactor * radialPart * exp(exponent)
    }
}
