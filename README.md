# Evaluation des compétences CI/CD

L’objet de ce travail pratique est de mettre en oeuvre de la livraison continue (“CD”) sur le projet suivant : 
https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example.

# Outil d'IC : Travic IC

Pour mon projet, j'ai choisi d'utilisé le système d'integration continue libre le plus utilisé et ai donc choisi "Travis IC". 

# Le pipeline

Comme demandé dans le sujet, le pipeline est composé des étapes : Construire, Test, et Deployer.

* Construire : cette étage effectue la ligne de commande "mvn package" et génère une documentation de type maven site. Cette documentation est poussée sur la branche master. La stratégie utilisée pour le maven site est expliquée plus plus bas.

* Test : des tests d'integrations sont executés en parallèles sur deux versions je java : jdk8 et jdk13.

* Deployer : cette étape effectue ligne de commande "mvn deploy".


![40% center](pipelone.png)



# La documentation 




        java -jar target/dropwizard-example-$DW_VERSION.jar server exampl
