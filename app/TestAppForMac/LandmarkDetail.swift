import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        ScrollView {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                           MapView(cordinate: landmark.locationCoordinate)
                               .ignoresSafeArea(edges: .top)
                               .frame(height: 300)

                           Button("Open in Maps") {
                               let destination = MKMapItem(placemark: MKPlacemark(coordinate: landmark.locationCoordinate))
                               destination.name = landmark.name
                               destination.openInMaps()
                           }
                           .padding()
                       }


            VStack(alignment: .leading, spacing: 20) {
                HStack(spacing: 24) {

                    ImageView(image: landmark.image.resizable()).frame(width: 160, height: 160)
//                .offset(y: -130)
//                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                        .buttonStyle(PlainButtonStyle())
                }

                VStack {
                    Text(landmark.park)
//                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

            }
             }
                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            .frame(maxWidth: 700)
            .offset(y: -50)
        }
        .navigationTitle(landmark.name)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()

    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[2])
            .environmentObject(modelData)
            .frame(width: 850, height: 700)
    }
}