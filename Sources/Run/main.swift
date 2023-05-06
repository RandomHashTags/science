//
//  main.swift
//
//  Created by Evan Anderson on 4/4/23.
//

#if canImport(MacOSUserInterface)
import MacOSUserInterface
#endif

#if canImport(MacOSUserInterface)
ScienceApplication.run()
#else
print("the GUI is only available on MacOS platforms right now")
#endif
