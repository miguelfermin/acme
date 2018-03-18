# acme
Acme Corp is a fictional company that has been selling insurance products for over 30 years. However, Acme hasn't kept up with technology and still sells its products over the phone, in person, by mail, etc. 

Acme sells Auto, Home, Appliances, Retirement, Health, and Consumer Electronics insurance products (Plan). But the initial plan is to digitize only its Appliances and Consumer Electronics products.

This repository is going to track Acme's ambitions to transform itself into a digital power house.

### Applications
Acme wants to reach as many customers as possible, thus it plans to provide Mobile and Web apps to connect to its (*soon to be developed*) Backend system.

This digital power house consists of the following applications:

* [Backend App](https://github.com/miguelfermin/acme) (.NET Core)
* [iOS App](https://github.com/miguelfermin/acme-ios) (Swift)
* [Android App](https://github.com/miguelfermin/acme-android) (Kotlin)
* [Web App](https://github.com/miguelfermin/acme-web) (React)

System Requirements and the Backend Application are hosted on this repository. Client applications are hosted on their own repositories.

>Development is tracked in [Trello](https://trello.com) (*I personally prefer [Asana](https://asana.com/) but you can't have public boards for non-team members*). Below are the progress boards:
>
> - [acme Trello Board](https://trello.com/b/myv4c7t9/acme)
> - [acme-ios Trello Board](https://trello.com/b/myv4c7t9/acme-ios)
> - [acme-android Trello Board](https://trello.com/b/myv4c7t9/acme-android)
> - [acme-web Trello Board](https://trello.com/b/myv4c7t9/acme-web)

>Besides development work, which is tracked on Trello, I needed a way to share my thought process as I develop these applications. I chose [postach.io](https://postach.io/site) because it's free, easy to use, and it syncs with my [Evernote](https://evernote.com/) account.
>
>I'll be posting my thought process as I work on this projects at my [postach site](http://miguelfermin.postach.io/post/published).

## System Requirements
### Products

Acme's current Appliances Plan only covers the following items:

| Item         | Purshase Date | Purshase Price|
|--------------|---------------|---------------|
| Stove        | 1 year        | $900.00       |
| Refrigerator | 1 year        | $1,100.00     |
| Dishwasher   | 1 year        | $600.00       |
| Washer       | 1 year        | $500.00       |
| Dryer        | 1 year        | $400.00       |
| Microwave    | 1 year        | $300.00       |
| Blender      | 1 year        | $100.00       |
| Toaster      | 1 year        | $100.00       |

Acme's current Electronics Plan only covers the following items:

| Item         | Purshase Date | Purshase Price|
|--------------|---------------|---------------|
| TV           | 1 year        | $600.00       |
| Radio        | 1 year        | $340.00       |
| Computer     | 1 year        | $800.00       |
| Camera       | 1 year        | $230.00       |
| Smartphone   | 1 year        | $700.00       |
| Tablet       | 1 year        | $650.00       |
| Printer      | 1 year        | $300.00       |
| Thermostat   | 1 year        | $250.00       |

> The reason these products were initially selected is their simple **price** structure

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
In order to use the system, a user most have account. The system should allow users to create accounts that contain their personal and contact information: `first Name`, `last Name`, `phone`, `email`, `street`, `city`, `state`, `zip code`, and `country`.

Also, login credentials: `username` and `password`

### Billing
Store customers' billing information which will be use to purshase Plans, pay recurring fees, and pay deductibles during a claim.

Also provide detailed payments and billing history.

### Claims
Pending....

# Technologies

### Backend - .Net Core 2.0
The backend is developed in [.NET Core 2](https://github.com/dotnet/core) on a mac using [Visual Studio for Mac Community](https://www.visualstudio.com/vs/mac/) and [Visual Studio Code](https://code.visualstudio.com).

For persistene Entity Framework [EF Core 2.0.2](https://www.nuget.org/packages/Microsoft.EntityFrameworkCore/2.0.2) with [SQLite](https://www.nuget.org/packages/Microsoft.EntityFrameworkCore.Sqlite) as the underlying database are used.

#### Architecture
Pending...

### Client App - iOS
Native [iOS](https://www.apple.com/ios/ios-11/) app develop in [Xcode](https://developer.apple.com/xcode/) using the [Swift](https://swift.org) Programming Language.

#### Design
Pending...

#### Architecture
Pending...

### Client App - Android
Native [Android](https://www.android.com) app develop in [Android Studio](https://developer.android.com/studio/index.html) using the [Kotlin](https://kotlinlang.org) Programming Language.

#### Design
Pending...

#### Architecture
Pending...

### Administrative App - React
A web app develop in [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) using the popular [React](https://reactjs.org) web-framework

#### Design
Pending...

#### Architecture
Pending...

# Who do I talk to?
Miguel Fermin via

[Email](mailto:mfermin@mafsoftware.com)

[LinkedIn](https://www.linkedin.com/in/miguel-fermin-94658544/)

[Twitter](https://twitter.com/mfermineet)



