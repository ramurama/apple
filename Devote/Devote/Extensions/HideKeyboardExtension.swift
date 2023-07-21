//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by Ramu Ramasamy on 21.07.23.
//

import SwiftUI

// the code inside this will only work if we import the UIKit framework
#if canImport(UIKit)
extension View {
    func hideKeyBoard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
