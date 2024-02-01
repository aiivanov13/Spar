import SwiftUI

struct ProductView: View {
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 7)
                    .foregroundColor(.green)
                
                Text("Цена по карте")
                    .foregroundColor(.white)
                    .padding(7)
            }
            .fixedSize()
            .padding(.leading)
            
            Spacer()
        }
        
        Image("product")
        
        HStack {
            Image("star")
            
            Text("4.1")
                .font(.headline)
            
            Text("| 19 отзывов")
                .foregroundColor(.gray)
            
            Spacer()
            
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 7)
                    .foregroundColor(.red)
                
                Text("-5%")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(4)
            }
            .fixedSize()
        }
        .padding(.horizontal)
        
        HStack {
            Text("Добавка \"Липа\"\nк чаю 200 г")
                .lineSpacing(2)
                .font(.system(size: 35, weight: .bold))
            
            Spacer()
        }
        .padding(.horizontal)
        
        HStack {
            Image("flag")
                .resizable()
                .clipShape(Circle())
                .frame(width: 25, height: 25)
            
            Text("Испания, Риоха")
                .font(.callout)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.bottom, 22)
    }
}

#Preview {
    ProductView()
}
