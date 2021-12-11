# Acme Project
Acme Corp is a fictional company that has been selling insurance products (*Plans*) for over 30 years. However, Acme hasn't kept up with technology and still sells its Plans over the phone, in person, or by mail. 

Acme sells Auto, Home, Appliances, Retirement, Health, and Consumer Electronics Insurance Plans. But the initial plan is to digitize only Appliances and Consumer Electronics.

Acme wants to reach as many customers as possible, thus it plans to provide mobile apps to connect to its Backend systems.

This repository is going to track Acme's ambitions to transform itself into a digital power house.

- [Requirements](#requirements)
	- [Plans](#plans)
	- [Products](#products)
	- [Account](#account)
	- [Billing](#billing)
	- [Claims](#claims)
- [Projects](#projects)
	- Server
	  - [Go](#go)
	- Client
	  - [iOS](#ios)
- [Who do I talk to?](#who-do-i-talk-to)

## Requirements

### Plans

Acme's current Appliances Plan only covers the following items:

| Item         | Purshase Date    | Purshase Price|
|--------------|------------------|---------------|
| Stove        | less than 1 year | $900.00       |
| Refrigerator | less than 1 year | $1,100.00     |
| Dishwasher   | less than 1 year | $600.00       |
| Washer       | less than 1 year | $500.00       |
| Dryer        | less than 1 year | $400.00       |
| Microwave    | less than 1 year | $300.00       |
| Blender      | less than 1 year | $100.00       |
| Toaster      | less than 1 year | $100.00       |

Acme's current Electronics Plan only covers the following items:

| Item         | Purshase Date  | Purshase Price|
|--------------|----------------|---------------|
| TV           | less than year | $600.00       |
| Radio        | less than year | $340.00       |
| Computer     | less than year | $800.00       |
| Camera       | less than year | $230.00       |
| Smartphone   | less than year | $700.00       |
| Tablet       | less than year | $650.00       |
| Printer      | less than year | $300.00       |
| Thermostat   | less than year | $250.00       |

The `Purshase Date` and `Purshase Price` are Plan requirements.

> The reason these Plans were initially selected is their simple **price** structure

Price structure:

| Plan         | Minimum Cost | Cost per Item |
|--------------|--------------|---------------|
| Appliances   | $11.99       | $3.99         |
| Electronics  | $9.99        | $1.99         |

`Minimum Cost` is the Plan cost regardless of how many items are added to the plan. For example, if the Applicance plan is chosen and one item is added, the total is **$15.98** - the Plans minimum $11.99 plus item $3.99.

After the Minimum Cost, the Plan increases as items added.

> The Minimum Cost is only applied once if devices from both plans are selected. For example, if a client adds a Stove (Appliances) and a Smartphone (Electronics) the total cost is the most expensive Minimum Cost plus the price of each item.

`Cost per Item` is simply the cost of adding an item to the Plan.

### Products
The system should have a pool of searchable Products that qualify for an available Plan.
>There's no point in having items that cannot be added to any plan.

### Account
In order to use the system, a user most have an account. The system should allow users to create accounts that contain their personal and contact information.
- To create an account (signup), the user must provide the following: `first Name`, `last Name`, `email`, and `password`.
- To login, the user must provide the following: `email`, and `password`.
- Once logged in, a user can add/edit the following: `first Name`, `last Name`, `phone`, `email`, `street`, `city`, `state`, `zip code`, and `country`.

### Billing
Store customers' billing information which will be use to purshase Plans, pay recurring fees, and pay deductibles during a claim. Also, provide information about the next bill date, perhaps a billing history

### Claims
The claims system should work as follows:

- Client requests claims form for a given item
- System returns the form to complete
- Client completes and submits the form
- System accepts claim deductible payment
- Sytem provides submitted claims information

>The claim form is very simple and is the same for all Plans.

Sample form:

	   Item:________________________________________________
	   Is the item partially functional (y/n)?______________
	   Was the item damaged in an accident (y/n)?___________
	   Comments_____________________________________________
   
# Projects

### Server

- [Go](https://golang.org) app developed on a mac using [Goland](https://www.jetbrains.com/go) IDE. The Database of choice [PostgreSQL](https://www.postgresql.org) is use for persistence.

### Client

- Native [iOS](https://www.apple.com/ios/ios-11/) app develop in [Xcode](https://developer.apple.com/xcode/) using the [Swift](https://swift.org) Programming Language and [SwiftUI](https://developer.apple.com/xcode/swiftui/).

# Who do I talk to?
Miguel Fermin via [Email](mailto:mfermin@mafsoftware.com) or [LinkedIn](https://www.linkedin.com/in/miguel-fermin-94658544/)


