//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Fatima Kahbi on 10/25/23.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    let dimension: CGFloat
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: dimension, height: dimension)
                .padding(.trailing)
            Text(framework.name)
                .font(.title2)
                .lineLimit(1)
                .minimumScaleFactor(0.8)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework, dimension: 80)
}
