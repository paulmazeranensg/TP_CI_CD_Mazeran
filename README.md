# Evaluation des compétences CI/CD

L’objet de ce travail pratique est de mettre en oeuvre de la livraison continue (“CD”) sur le projet suivant : 
https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example.

# Outil d'IC : Travic IC

Pour mon projet, j'ai choisi d'utilisé le système d'integration continue libre le plus utilisé et ai donc choisi "Travis IC". 

# Le pipeline

Comme demandé dans le sujet, le pipeline est composé des étapes : Construire, Test, et Deployer.

* Construire : cette étage effectue la ligne de commande "mvn build"

* The `Person` illustrates mapping of Java classes to database tables with assisting of JPA annotations.

* All the JPQL statements for use in the `PersonDAO` are located in the `Person` class.

* `migrations.xml` illustrates the usage of `dropwizard-migrations` which can create your database prior to running
your application for the first time.

* The `PersonResource` and `PeopleResource` are the REST resource which use the PersonDAO to retrieve data from the database, note the injection
of the PersonDAO in their constructors.

As with all the modules the db example is wired up in the `initialize` function of the `HelloWorldApplication`.

# La documentation 




        java -jar target/dropwizard-example-$DW_VERSION.jar server exampl
