//
//  SignUpView.swift
//  Real Estate App
//
//  Created by arifashraf on 14/12/21.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject var signUpVM = SignUpViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Your Agency Details")
                    .padding()
                    .font(.system(size: 20, weight: .regular, design: .default))
                
                VStack {
                    HStack {
                        Text("Agency Name")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Enter Agency Name", text: $signUpVM.agencyName)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                
                VStack {
                    HStack {
                        Text("Agency Address")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Enter Agency Street Address", text: $signUpVM.agencyAddress)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                .padding(.top, 40)
                
                HStack {
                    VStack {
                        HStack {
                            Text("City")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        TextField("Select", text: $signUpVM.city)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    .padding(.top, 40)
                    
                    VStack {
                        HStack {
                            Text("State")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("Select", text: $signUpVM.state)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    .padding(.top, 40)
                    
                    VStack {
                        HStack {
                            
                            Text("Zip Code")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("XXXX", text: $signUpVM.zipCode)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    .padding(.top, 40)
                    
                }
                HStack {
                    VStack {
                        HStack {
                            Text("Business Type")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("Select", text: $signUpVM.businessType)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    .padding(.top, 40)
                    
                    VStack {
                        HStack {
                            Text("Deals Type")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("Select", text: $signUpVM.dealsType)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    .padding(.top, 40)
                }
                VStack {
                    HStack {
                        Text("Business Location")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                        
                    }
                    
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Select", text: $signUpVM.businessLocation)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                .padding(.top, 40)
                
                VStack {
                    HStack {
                        Text("Dealing Status")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                        
                    }
                    
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    TextField("Select atleast one", text: $signUpVM.dealingStatus)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                .padding(.top, 40)
            }
            .padding()
            
            VStack {
                VStack {
                    HStack {
                        Text("Number of Employee")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    TextField("00", text: $signUpVM.numberOfEmployees)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                
                .padding()
                HStack {
                    VStack {
                        HStack {
                            Text("First Name")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("Enter First Name", text: $signUpVM.firstName)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                    }
                    
                    .padding()
                    
                    VStack {
                        HStack {
                            Text("Last Name")
                                .foregroundColor(.gray)
                            Text("*")
                                .foregroundColor(.red)
                            
                        }
                        
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                        TextField("Enter Last Name", text: $signUpVM.lastName)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 0)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.gray))
                        
                    }
                    .padding()
                    
                }
                VStack {
                    HStack{
                        Text("Email")
                            .foregroundColor(.gray)
                        Text("*")
                            .foregroundColor(.red)
                        
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }
                    TextField("Enter Email Address", text: $signUpVM.email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 0)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray))
                }
                .padding()
                
                //                VStack{
                //                    Text ("Can we contact you?")
                //                    VStack {
                //                        Picker("Can we contact you?", selection: $selectedColorIndex, content: { // <2>
                //                            Text("Yes").tag(0) // <3>
                //                            Text("No").tag(1) // <4>
                //
                //                        })
                //                        Text(" \(selectedColorIndex)") // <6>
                //                    }
                //                    .padding()
                //                }
                
                //                VStack {
                //                    Text ("Please share contact person details:")
                //                        .foregroundColor(.gray)
                //                }
                //                .padding()
                //                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //
                //                HStack {
                //                    VStack {
                //                        HStack {
                //                            Text("First Name")
                //                                .foregroundColor(.gray)
                //                            Text("*")
                //                                .foregroundColor(.red)
                //                        }
                //
                //                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //
                //                        TextField("Enter First Name", text: $viewModel.firstName)
                //                            .padding()
                //                            .overlay(RoundedRectangle(cornerRadius: 0)
                //                                        .stroke(lineWidth: 1)
                //                                        .foregroundColor(.gray))
                //                    }
                //                    .padding()
                //
                //                    VStack {
                //                        HStack {
                //                            Text("Last Name")
                //                                .foregroundColor(.gray)
                //                            Text("*")
                //                                .foregroundColor(.red)
                //
                //                        }
                //
                //                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //
                //                        TextField("Enter Last Name", text: $viewModel.lastName)
                //                            .padding()
                //                            .overlay(RoundedRectangle(cornerRadius: 0)
                //                                        .stroke(lineWidth: 1)
                //                                        .foregroundColor(.gray))
                //                    }
                //                    .padding()
                //
                //                }
                //                VStack {
                //                    HStack{
                //                        Text("Email")
                //                            .foregroundColor(.gray)
                //                        Text("*")
                //                            .foregroundColor(.red)
                //
                //                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                //                    }
                //                    TextField("Enter Email Address", text: $viewModel.email)
                //                        .padding()
                //                        .overlay(RoundedRectangle(cornerRadius: 0)
                //                                    .stroke(lineWidth: 1)
                //                                    .foregroundColor(.gray))
                //                }
                //                .padding()
                
                VStack{
                    NavigationLink(destination: WelcomeView(),
                                   isActive: self.$signUpVM.isSignUpValid)
                    {
                        Text("SIGN UP")
                            .padding()
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color("CustomDarkBlue"))
                            .onTapGesture
                        {
                            //determine login validity
                            let isSignUpValid = !self.signUpVM.agencyName.isEmpty && !self.signUpVM.agencyAddress.isEmpty && !self.signUpVM.city.isEmpty && !self.signUpVM.state.isEmpty && !self.signUpVM.zipCode.isEmpty && !self.signUpVM.businessType.isEmpty && !self.signUpVM.dealsType.isEmpty && !self.signUpVM.businessLocation.isEmpty && !self.signUpVM.dealingStatus.isEmpty && !self.signUpVM.numberOfEmployees.isEmpty && !self.signUpVM.firstName.isEmpty && !self.signUpVM.lastName.isEmpty && !self.signUpVM.email.isEmpty
                            
                            //trigger logic
                            if isSignUpValid {
                                self.signUpVM.isSignUpValid = true //trigger NavigationLink
                                //                                        viewModel.logIn()
                            }
                            else {
                                self.signUpVM.shouldShowSignUpAlert = true //trigger Alert
                            }
                        }
                    }
                    .padding([.leading, .trailing], 15)
                    .alert(isPresented: $signUpVM.shouldShowSignUpAlert) {
                        Alert(title: Text("All fields are mandatory to fill"))
                    }
                }
                
            }
        }
        .navigationBarTitle("Sign Up", displayMode: .inline)
    }
    
    
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
