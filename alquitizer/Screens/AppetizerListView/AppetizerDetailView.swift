//
//  AppetizerDetailView.swift
//  alquitizer
//
//  Created by Mauricio Fontana on 08/02/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                LoadingView()
            }
            .frame(width: 300, height: 225)

            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .frame(height: 70)
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: appetizer.calories)
                    NutritionInfo(title: "Protein", value: appetizer.protein)
                    NutritionInfo(title: "Carbs", value: appetizer.carbs)
                }
            }

            Spacer()

            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to order")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetail = false
            } label: {
                XDismissButton()
            },
            alignment: .topTrailing
        )
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    let title: String
    let value: Int

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
            Text("\(value)")
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .italic()
        }
    }
}
