import SwiftUI

struct ProductCardView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ProductView()
                
                DescriptionView()
                    .padding(.horizontal)
                
                FeedbackView()
                
            }
            .navigationBarItems(
                leading: Image(systemName: "arrow.left")
                    .renderingMode(.template)
                    .foregroundColor(.green),
                trailing: HStack {
                    Image("list")
                        .renderingMode(.template)
                        .foregroundColor(.green)
                    
                    Image("upload")
                        .renderingMode(.template)
                        .foregroundColor(.green)
                        .padding(10)
                    
                    Image("heart")
                        .renderingMode(.template)
                        .foregroundColor(.green)
                }
            )
        }
        .padding(.bottom, 107)
    }
}

#Preview {
    ProductCardView()
}
