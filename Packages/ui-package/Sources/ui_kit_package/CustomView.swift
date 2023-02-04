//
//  File.swift
//  
//
//  Created by Can Tekinalp on 3.02.2023.
//

import SwiftUI

public class CustomView: UIView {
    
    /// Adds dummy `UIView`
    public func addChildView() {
        self.addSubview(UIView(frame: .zero))
    }
}
