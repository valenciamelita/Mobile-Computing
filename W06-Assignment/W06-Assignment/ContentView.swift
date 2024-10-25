//
//  ContentView.swift
//  W06-Assignment
//
//  Created by student on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView { // Wrap in a ScrollView to enable scrolling
            VStack(alignment: .leading) { // Align items to the leading edge
                Section {
                    VStack(spacing: 10) {
                        ZStack(alignment: .top) {
                            Rectangle()
                                .fill(Color.indigo)
                                .frame(height: 160)
                           
                                

                            Text("🌝")
                                .font(.system(size: 50))
                                .frame(width: 100, height: 100)
                                .background(Color.gray)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .offset(y: 85)
                        }
                        .frame(height: 150)
                        .padding(.top, -10)
                        .padding(.bottom, 30)

                        Text("@valenciamelita")
                            .foregroundStyle(.secondary)

                        Text("Valencia Melita")
                            .font(.title)
                            .fontWeight(.semibold)

                        HStack {
                            Text("Surabaya")
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundColor(.purple)

                            Text("Joined August 2022")
                                .font(.caption)
                                .fontWeight(.light)
                                .foregroundStyle(.secondary)
                        }

                        HStack {
                            Button(action: {}) {
                                Label("Follow", systemImage: "person")
                                    .padding()
                                    .font(.caption)
                                    .foregroundStyle(.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                            }
                            Button(action: {}) {
                                Label("Message", systemImage: "message")
                                    .padding()
                                    .font(.caption)
                                    .foregroundStyle(.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.secondary, lineWidth: 1)
                                    )
                            }
                            Button(action: {}) {
                                Label("More", systemImage: "ellipsis")
                                    .padding()
                                    .font(.caption)
                                    .foregroundStyle(.black)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.gray, lineWidth: 1)
                                    )
                            }
                        }.padding(.bottom, 10)

                        Text("Hello I am an ISB Student learning in Swift. I am learning SwiftUI.")
                            .multilineTextAlignment(.center)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
                
                Section {
                    VStack(alignment: .leading) {
                        Text("Information")
                            .font(.title2)
                            .fontWeight(.semibold)

                        VStack {
                            InfoRow(icon: "globe", label: "Website", value: "example.com")
                            InfoRow(icon: "envelope", label: "Email", value: "vchristy@student.ciputra.ac.id")
                            InfoRow(icon: "phone", label: "Phone", value: "+62 822 3456 7204")
                            InfoRow(icon: "calendar", label: "Joined", value: "30 August 2022")
                        }

                        Divider()

                        HStack {
                            TagView(tag: "UI Designer")
                            TagView(tag: "UX Designer")
                            TagView(tag: "Design System")
                        }
                        
                        HStack {
                            TagView(tag: "Product")
                            TagView(tag: "Successful")
                        }
                    }
                    .padding()
                }
            }
            .padding(.top, 10) // Optional: add some top padding for spacing
        }
        .edgesIgnoringSafeArea(.top) // Optional: ignore the safe area at the top
    }
}

struct InfoRow: View {
    var icon: String
    var label: String
    var value: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.gray)
                .frame(width: 20, height: 20, alignment: .leading)
            
            Text(label)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 3)
                .padding(.bottom, 10)
            Spacer()
            Text(value)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

struct TagView: View {
    var tag: String
    
    var body: some View {
        HStack {
            Button(action: {}) {
                Text(tag)
                    .font(.system(size: 14))
                    .padding(.vertical, 8)
                    .padding(.horizontal, 16)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(6)
                    .foregroundColor(.black)
            }
        }
    }
}

#Preview {
    ContentView()
}

