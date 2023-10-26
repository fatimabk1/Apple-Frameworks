//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Fatima Kahbi on 10/24/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    @Environment(\.dismiss) var dismiss
    let framework: Framework
    
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework, dimension: 140)
                .padding(.bottom)
            Text(framework.description)
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
        }
        .padding()
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
