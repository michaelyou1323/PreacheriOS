import SwiftUI
import AVFoundation

struct VideoThumbnailView: View {
    let videoURL: URL
    
    @State private var thumbnailImage: UIImage? = nil
    
    var body: some View {
        if let image = thumbnailImage {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .onAppear {
                    generateThumbnail()
                }
        }
    }
    
    func generateThumbnail() {
        let asset = AVURLAsset(url: videoURL)
        let generator = AVAssetImageGenerator(asset: asset)
        generator.appliesPreferredTrackTransform = true
        
        let time = CMTimeMake(value: 1, timescale: 60)
        generator.generateCGImagesAsynchronously(forTimes: [NSValue(time: time)]) { _, image, _, _, _ in
            if let image = image {
                DispatchQueue.main.async {
                    self.thumbnailImage = UIImage(cgImage: image)
                }
            }
        }
    }
}


struct ToastModifier: ViewModifier {
    @Binding var showToast: Bool
    let toastText: String

    func body(content: Content) -> some View {
        ZStack {
            content

            if showToast {
                VStack {
                   
                    
                      
                        Text(toastText)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(15)
                            .padding()
                    
                }
                .transition(.asymmetric(insertion: .slide, removal: .slide))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            showToast = false
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // Set frame alignment to top
            }
        }
    }
}


struct FormScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var showToast = false
    @State private var toastText = ""
    @State private var isLoading = false
    
    
    
    @State var firstname = ""
    @State var lastname = ""
    @State var phonenumber = ""
    @State var country = ""
    @State var city = ""
    @State var region = ""
    @State var church = ""
    @State var email = ""
    
    @StateObject var viewModel = WriteViewModel()
    
    var body: some View {
        VStack {
            Text("بياناتك")
                .font(.system(size: 27))
                .bold()
            
            VStack {
                ScrollView {
                    TextField("الأسم الأول", text: $firstname)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 20)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("أسم العائلة", text: $lastname)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("رقم الموبايل", text: $phonenumber)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)                 
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("الدولة", text: $country)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 8).padding(.top, 15)      
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("المدينة", text: $city)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("المنطقة", text: $region)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField("الكنيسة", text: $church)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                    
                    TextField(" البريد الألكتروني ( اختياري )", text: $email)
                        .textFieldStyle(CustomTextFieldStyle())
                        .padding(.top, 15)
                        .padding(.horizontal, 15)
                        .multilineTextAlignment(.trailing)
                }
//                .' '#' '$' '[' or ']
                Button(action: {
                    if firstname.isEmpty || firstname.contains(".") || firstname.contains("#") || firstname.contains("$") || firstname.contains("[") || firstname.contains("]") || firstname.contains(" "){
                        showToast = true
                        toastText = "برجاء كتابة الأسم الأول بشكل صحيح"
                    }else if lastname.isEmpty || lastname.contains(" "){
                        showToast = true
                        toastText = "برجاء كتابة آسم العائلة بدون مسافات "
                    }else if phonenumber.isEmpty || phonenumber.contains(".") || phonenumber.contains("#") || phonenumber.contains("$") || phonenumber.contains("[") || phonenumber.contains("]") || phonenumber.contains(" ") {
                        showToast = true
                        toastText = " برجاء كتابة رقم الموبايل بشكل صحيح"
                    }else if country.isEmpty || country.contains(" ") {
                        showToast = true
                        toastText = " برجاء كتابة الدولة بدون مسافات"
                    }else if city.isEmpty || city.contains(" ") {
                        showToast = true
                        toastText = "برجاء كتابة المدينة بدون مسافات"
                    }else if region.isEmpty || region.contains(" ") {
                        showToast = true
                        toastText = "برجاء كتابة المنطقة بدون مسافات"
                    }else if church.isEmpty || church.contains(" ") {
                        showToast = true
                        toastText = "برجاء كتابة آسم الكنيسة بدون مسافات"
                    } else {
                        
                        isLoading = true // Start loading animation
                        showToast = true
                        
                                               viewModel.pushObject(firstname: firstname, lastname: lastname, phonenumber: phonenumber, country: country, city: city, region: region, church: church, email: email)

                        toastText = " تم تسجيل بياناتك ٫ سنقوم بالتواصل معك ..."
                       
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {
                            isLoading = false // Stop loading animation after 3 seconds
                            presentationMode.wrappedValue.dismiss()
                           

//                                                  isLoading = false // Stop loading animation after 3 seconds
                                              }
                                                                      
                                                 
                      
                      
                    }
                }) {
                    if isLoading {
                        ProgressView() // Show loading animation
                    } else {
                        Text("تابعني")
                    }
                }
                .disabled(isLoading) // Disable button while loading
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 3)
                )
                .padding(.vertical, 10)
            }
            .modifier(ToastModifier(showToast: $showToast, toastText: toastText))
        }
    }
}
   

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black, lineWidth: 1)
            )
    }
}
struct FormScreen_Previews: PreviewProvider {
    static var previews: some View {
        FormScreen()
        
    }
}

//
//
//if firstname.isEmpty{
//    
//    showToast = true
//    toastText = "برجاء كتابة الأسم الأول"
//}else if lastname.isEmpty{
//    showToast = true
//    toastText = "برجاء كتابة آسم العائلة"
//}else if phonenumber.isEmpty{
//    showToast = true
//    toastText = " برجاء كتابة رقم الموبايل "
//}else if country.isEmpty{
//    showToast = true
//    toastText = " برجاء كتابة الدولة"
//}else if city.isEmpty{
//    showToast = true
//    toastText = "برجاء كتابة المدينة"
//}else if region.isEmpty{
//    showToast = true
//    toastText = "برجاء كتابة المنطقة "
//}else if church.isEmpty{
//    showToast = true
//    toastText = "برجاء كتابة آسم الكنيسة"
//}else {
//    viewModel.pushObject(firstname: firstname, lastname: lastname, phonenumber: phonenumber, country: country, city: city, region: region, church: church, email: email)
//    presentationMode.wrappedValue.dismiss()
//}

// Rest of the code remains the same
