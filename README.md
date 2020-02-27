# Evaluation des compétences CI/CD

L’objet de ce travail pratique est de mettre en oeuvre de la livraison continue (“CD”) sur le projet suivant : 
https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example.

# Outil d'IC : Travic IC

Pour mon projet, j'ai choisi d'utilisé le système d'integration continue libre le plus utilisé et ai donc choisi "Travis IC"

This database example is comprised of the following classes:

* The `PersonDAO` illustrates using the Data Access Object pattern with assisting of Hibernate.

* The `Person` illustrates mapping of Java classes to database tables with assisting of JPA annotations.

* All the JPQL statements for use in the `PersonDAO` are located in the `Person` class.

* `migrations.xml` illustrates the usage of `dropwizard-migrations` which can create your database prior to running
your application for the first time.

* The `PersonResource` and `PeopleResource` are the REST resource which use the PersonDAO to retrieve data from the database, note the injection
of the PersonDAO in their constructors.

As with all the modules the db example is wired up in the `initialize` function of the `HelloWorldApplication`.

# Running The Application

To test the example application run the following commands.

* To create the example, package the application using [Apache Maven](https://maven.apache.org/) from the root dropwizard directory.

        cd dropwizard
        ./mvnw package
        cd dropwizard-example

* To setup the h2 database run.

        java -jar target/dropwizard-example-$DW_VERSION.jar db migrate example.yml

* To run the server run.

        java -jar target/dropwizard-example-$DW_VERSION.jar server example.yml

* To hit the Hello World example (hit refresh a few times).

	http://localhost:8080/hello-world

* To post data into the application.

	curl -H "Content-Type: application/json" -X POST -d '{"fullName":"Other Person","jobTitle":"Other Title"}' http://localhost:8080/people
	
	open http://localhost:8080/people
