//
//  AppSidebarNavigation.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI
import AcmeAccount
import AcmePlans
import AcmeClaims
import AcmeBilling
import AcmeSupport

struct AppSidebarNavigation: View {
    @EnvironmentObject private var model: ProfileModel
    
    @State private var selection: NavigationItem? = .plans
    @State private var modalSelection: ModalItem?
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(tag: NavigationItem.plans, selection: $selection) {
                    PlansList()
                        .environmentObject(PlansModel())
                } label: {
                    Label("Plans", systemImage: "person")
                }
                
                NavigationLink(tag: NavigationItem.claims, selection: $selection) {
                    ClaimsView()
                } label: {
                    Label("Claims", systemImage: "heart.fill")
                }
                
                NavigationLink(tag: NavigationItem.billing, selection: $selection) {
                    BillingView()
                } label: {
                    Label("Billing", systemImage: "seal.fill")
                }
            }
            .navigationTitle("Acme")
            
            .sheet(item: $modalSelection) { item in
                switch item {
                case .profile:
                    ProfileView(model: model)
                case .support:
                    SupportView()
                }
            }
            
            .toolbar {
                HStack {
                    Button(action: { modalSelection = .profile }) {
                        Label("Profile", systemImage: "list.bullet")
                    }
                    Button(action: { modalSelection = .support }) {
                        Label("Support", systemImage: "book.closed")
                    }
                }
            }
            
            Text("Select Plans")
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .ignoresSafeArea()
            
            Text("Select a Plan")
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .ignoresSafeArea()
                .toolbar {Button(action: {}) {Image(systemName: "heart")}}
        }
    }
}

// MARK: - AppSidebarNavigation+NavigationItem
extension AppSidebarNavigation {
    enum NavigationItem: Equatable {
        case plans
        case claims
        case billing
    }
}

// MARK: - AppSidebarNavigation+ModalItem
extension AppSidebarNavigation {
    enum ModalItem: String, Identifiable {
        case profile
        case support
        
        var id: String { rawValue }
    }
}

// MARK: - PreviewProvider
struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
            .environmentObject(ProfileModel.sample)
    }
}
