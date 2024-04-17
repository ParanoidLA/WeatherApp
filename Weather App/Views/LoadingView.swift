//
//  LoadingView.swift
//  Weather App
//
//  Created by Lakshya Agrawal on 17/04/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
