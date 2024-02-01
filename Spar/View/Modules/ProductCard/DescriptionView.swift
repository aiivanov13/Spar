import SwiftUI

struct DescriptionView: View {
    
    private let specifications = Specification.specifications
    
    var body: some View {
        Section {
            HStack {
                Text("Флавоноиды липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов.")
                
                Spacer()
            }
        } header: {
            HStack {
                Text("Описание")
                    .font(.headline)
                
                Spacer()
            }
            .padding(.bottom, 3)
        }
        
        Section {
            ForEach(specifications, id: \.self) { specification in
                HStack {
                    Text(specification.name)
                        .layoutPriority(1)
                    
                    ZStack {
                        Spacer()
                        
                        Divider()
                    }
                    
                    Text(specification.value)
                        .layoutPriority(1)
                        .lineLimit(2)
                        .multilineTextAlignment(.trailing)
                }
            }
        } header: {
            HStack {
                Text("Основные характеристики")
                    .font(.headline)
                
                Spacer()
            }
            .padding(.top)
        }
        .font(.system(size: 15))
        
        HStack {
            Button {
            } label: {
                Text("Все характеристики")
                    .font(.headline)
                    .foregroundColor(.green)
            }
            
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    DescriptionView()
}
