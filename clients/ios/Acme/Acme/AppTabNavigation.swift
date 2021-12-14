//
//  AppTabNavigation.swift
//  Acme
//
//  Created by Miguel Fermin on 12/11/21.
//

import SwiftUI
import AcmeKit

struct AppTabNavigation: View {
    @EnvironmentObject private var model: ProfileModel
    
    @State private var selection: Tab = .profile
    
    var body: some View {
        TabView(selection: $selection) {
            // MARK: - Profile Tab
            NavigationView {
                ProfileView(model: model)
            }
            .tabItem {
                let text = Text("Profile", comment: "Profile tab title")
                Label {
                    text
                } icon: {
                    Image(systemName: "list.bullet")
                }
                .accessibility(label: text)
            }
            .tag(Tab.profile)
            
            // MARK: - Plans Tab
            NavigationView {
                PlansList()
                    .environmentObject(PlansModel())
            }
            .tabItem {
                let text = Text("Plans", comment: "Plans tab title")
                Label {
                    text
                } icon: {
                    Image(systemName: "person")
                }
                .accessibility(label: text)
            }
            .tag(Tab.plans)
            
            // MARK: - Claims Tab
            NavigationView {
                ClaimsView()
            }
            .tabItem {
                let text = Text("Claims", comment: "Claims tab title")
                Label {
                    text
                } icon: {
                    Image(systemName: "heart.fill")
                }
                .accessibility(label: text)
            }
            .tag(Tab.claims)
            
            // MARK: - Billing Tab
            NavigationView {
                BillingView()
            }
            .tabItem {
                let text = Text("Billing", comment: "Billing tab title")
                Label {
                    text
                } icon: {
                    Image(systemName: "seal.fill")
                }
                .accessibility(label: text)
            }
            .tag(Tab.billing)
            
            // MARK: - Support Tab
            NavigationView {
                SupportView()
            }
            .tabItem {
                let text = Text("Support", comment: "Support tab title")
                Label {
                    text
                } icon: {
                    Image(systemName: "book.closed.fill")
                }
                .accessibility(label: text)
            }
            .tag(Tab.support)
        }
    }
}

// MARK: - Tab
extension AppTabNavigation {
    enum Tab {
        case profile
        case plans
        case claims
        case billing
        case support
    }
}

// MARK: - Previews
struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
            .environmentObject(ProfileModel.sample)
    }
}
