# acme
Acme Corp is a fictional company that has been selling insurance products (*Plans*) for over 30 years. However, Acme hasn't kept up with technology and still sells its Plans over the phone, in person, or by mail. 

Acme sells Auto, Home, Appliances, Retirement, Health, and Consumer Electronics Insurance Plans. But the initial plan is to digitize only Appliances and Consumer Electronics.

This repository is going to track Acme's ambitions to transform itself into a digital power house.

# Applications
Acme wants to reach as many customers as possible, thus it plans to provide Mobile and Web apps to connect to its (*soon to be developed*) Backend system.

This digital power house consists of the following applications:

* [Backend App](https://github.com/miguelfermin/acme)
* [iOS App](https://github.com/miguelfermin/acme-ios)
* [Android App](https://github.com/miguelfermin/acme-android)
* [Web App](https://github.com/miguelfermin/acme-web)

System Requirements and the Backend Application are hosted on this repository. Client applications are hosted on their own repositories.

Development is tracked in [Trello](https://trello.com) (*I personally prefer [Asana](https://asana.com/) but you can't have public boards for non-team members*). Below are the progress boards:

- [acme](https://trello.com/b/myv4c7t9/acme)
- [acme-ios](https://trello.com/b/vr7USb5m/acme-ios)
- [acme-android](https://trello.com/b/ldwAQKcP/acme-android)
- [acme-web](https://trello.com/b/3iwGk4oQ/acme-web)

>Besides development work, which is tracked on Trello, I needed a way to share my thought process as I develop these applications. I chose [postach.io](https://postach.io/site) because it's free, easy to use, and it syncs with my [Evernote](https://evernote.com/) account.
>
>I'll be posting my thought process as I work on this projects at my [postach site](http://miguelfermin.postach.io).

## System Requirements
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

### Items
The system should have a pool of searchable Items that qualify for an available Plan.
>There's no point in having items that cannot be added to any plan.

Keep track of items that are intended to be added to a Plan so the user could finish the transaction later. This functionality is similar to an Amazon shopping cart where clients can add items and buy them later.

### Account
In order to use the system, a user most have an account. The system should allow users to create accounts that contain their personal and contact information: `first Name`, `last Name`, `phone`, `email`, `street`, `city`, `state`, `zip code`, and `country`. As well as login credentials: `username` and `password`

### Billing
Store customers' billing information which will be use to purshase Plans, pay recurring fees, and pay deductibles during a claim.

### Claims
The claims system should work as follows:

- Client requests claims form for a given item
- System returns the form to complete
- Client completes and submits the form
- System accepts claim deductible payment

>The claim form is very simple and is the same for all Plans.

Sample form:

	   Item:________________________________________________
	   Is the item partially functional (y/n)?______________
	   Was the item damaged in an accident (y/n)?___________
	   Comments_____________________________________________
   
# Technologies

### Backend - .Net Core 2.0
The backend is developed in [.NET Core 2](https://github.com/dotnet/core) on a mac using [Visual Studio for Mac Community](https://www.visualstudio.com/vs/mac/) and [Visual Studio Code](https://code.visualstudio.com).

For persistene Entity Framework [EF Core 2.0.2](https://www.nuget.org/packages/Microsoft.EntityFrameworkCore/2.0.2) with [SQLite](https://www.nuget.org/packages/Microsoft.EntityFrameworkCore.Sqlite) as the underlying database are used.

#### Architecture
Pending...

### Mobile App - iOS
Native [iOS](https://www.apple.com/ios/ios-11/) app develop in [Xcode](https://developer.apple.com/xcode/) using the [Swift](https://swift.org) Programming Language.

[Repository](https://github.com/miguelfermin/acme-ios)

### Mobile App - Android
Native [Android](https://www.android.com) app develop in [Android Studio](https://developer.android.com/studio/index.html) using the [Kotlin](https://kotlinlang.org) Programming Language.

[Repository](https://github.com/miguelfermin/acme-android)

### Web App - React
A web app develop in [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) using the popular [React](https://reactjs.org) web-framework

[Repository](https://github.com/miguelfermin/acme-web)

# Who do I talk to?
Miguel Fermin via

[Email](mailto:mfermin@mafsoftware.com)

[LinkedIn](https://www.linkedin.com/in/miguel-fermin-94658544/)

[Twitter](https://twitter.com/mfermineet)

