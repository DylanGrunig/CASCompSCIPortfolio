import SwiftUI

struct RealEarthquakeList: View {
    @State var earthquakeData: Earthquakes?
    
    var body: some View {
        if let earthquakeData = earthquakeData {
            NavigationView {
                List(earthquakeData.features, id: \.id) { earthquake in
                    NavigationLink{
                        //for testing of the list...
                        // Text("Details & Map View will go here soon!")
                        //Once...
                        MapView(earthquake: earthquake)
                    } label: {
                        Text(earthquake.properties.title)
                    }
                }
                .navigationTitle("Recent Earthquakes")
            }
        }
        else {
            Text("Loading . . . ")
                .onAppear(perform: {
                    loadEarthquakes { (earthquakes) in
                        self.earthquakeData = earthquakes
                        
                        
                        
                    }
                })
        }
    }
    
}


struct RealEarthquakeList_Previews: PreviewProvider {
    static var previews: some View {
        RealEarthquakeList()
    }
}
