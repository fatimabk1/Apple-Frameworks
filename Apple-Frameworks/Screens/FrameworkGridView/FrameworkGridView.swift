//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Fatima Kahbi on 10/24/23.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    

    var body: some View {
        NavigationStack {
            List {
                ForEach (MockData.frameworks) { framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework, dimension: 70)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
}



#Preview {
    FrameworkGridView()
}
