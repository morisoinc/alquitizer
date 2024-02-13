//
//  String+Ext.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import Foundation
import RegexBuilder

extension String {
    var isValidEmail: Bool {
        let emailRegEx = Regex {
            OneOrMore {
                CharacterClass(
                    .anyOf("._%+-"),
                    ("A"..."Z"),
                    ("0"..."9"),
                    ("a"..."z")
                )
            }
            "@"
            OneOrMore {
                CharacterClass(
                    .anyOf(".-"),
                    ("A"..."Z"),
                    ("a"..."z"),
                    ("0"..."9")
                )
            }
            "."
            Repeat(2...64) {
                CharacterClass(
                    ("A"..."Z"),
                    ("a"..."z")
                )
            }
        }
        
        return self.wholeMatch(of: emailRegEx) != nil
    }
}
