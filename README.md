# MongoDb Realm Simple Projects with Chat Messaging.

### Built using .NET Maui with using MongoDb realm as the backend. It allows a user with a created account to create projects, assign tasks and complete activities against tasks.

### You can also send messages ot registered users using the messaging tab

### This was built as a proof of concept and to better understand MongoDb Realm.

The following was used in the development of this Sample

- .NET8 and Maui using VSCode
- MongoDb Realm, this requires an account to allow an application to be created against which the mobile device will run and sync. https://www.mongodb.com
- Devexpress Maui Controls https://www.devexpress.com/maui/ free copoy available
- MAUI Community Toolkit
- MVVM Community Toolkit

## As best a possible I have structured the project but it does need a few changes which if time permits I will do later. I did test the project with 2 Android emulators on a Windows 11.

## Running the Solution

### You will need to create an account to use Realm which is free for testing. At which point you will need to create an application to get an APP ID. Thgis is done under Application Services.
### I turned on Development mode which makes it easier to work while the schem is crearted and updated as it makes it easier. Flexible Sync is also enabled.
### You enter the APP ID under Services\MongoDbRealm\RealmCoreService.cs and line 14 add in your APP ID.
### Once the App is creatred in Realm you will also need to setup Authentication and enable  Email/Password authentication. I set it 'Automaticially comfirm users'. I also create a function to reset the password with is expained in the Realm help files.
### I also created an app function to add data to a SystemUser Collection which is used in realm application.

``` javascript

exports = function({user}) {
   const db = context.services.get("mongodb-atlas").db("eProjectsOnRealm");
   const userCollection = db.collection("SystemUser");
   const partition = `user=${user.id}`;
   const defaultLocation = context.values.get("defaultLocation");
   const now = new Date();

   const userDoc = {
      _id: user.id,
      userName: user.data.email,
      lastSeenAt: now,
      presence:"Off-Line"
   };
   return userCollection.insertOne(userDoc)
   .then(result => {
      console.log(`Added User document with _id: ${result.insertedId}`);
   }, error => {
      console.log(`Failed to insert User document: ${error}`);
   });
};

```

