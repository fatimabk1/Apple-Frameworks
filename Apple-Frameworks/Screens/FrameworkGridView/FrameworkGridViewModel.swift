//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Fatima Kahbi on 10/25/23.
//

import SwiftUI

// final bc we will not be subclassing
final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    let columns: [GridItem]  = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    @Published var isShowingDetailView = false
}
