# Evaluation des compétences CI/CD

  L’objet de ce travail pratique est de mettre en oeuvre de la livraison continue (“CD”) sur le projet suivant : 
https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example.

## Outil d'IC : Travic IC

  Pour mon projet, j'ai choisi d'utiliser le système d'integration continue libre le plus utilisé et ai donc opté pour "Travis CI". 

## Le pipeline

  Comme demandé dans le sujet, le pipeline est composé des étapes : "Construire", "Test", et "Deployer".

* Construire : cette étape effectue la ligne de commande "mvn package" et génère une documentation de type maven site. Cette documentation est alors poussée sur la branche master. La stratégie utilisée pour le maven site est expliquée  dans le paragraphe : "Générer la documentation maven site".

* Test : lors de cette étape, des tests d'integrations sont executés en parallèle sur deux versions de java : jdk8 et jdk13.

* Deployer : cette étape effectue la ligne de commande "mvn deploy".


![40% center](pipelone.png)


Le pipeline est accessible via le lien suivant : https://travis-ci.org/paulmazeranensg/TP_CI_CD_Mazeran.


## Générer la documentation maven site

  Afin de générer le maven site, j'utilise la commande "mvn site". J'ai tenté de pousser les documents générés par la commande sur la branche master en utilisant le code suivant : https://gist.github.com/willprice/e07efd73fb7f13f917ea.

Le seule problème étant : le projet étant public, github supprime le token que je créé car son ecriture en clair entraine des failles de sécurité.


## Générer une clée Trevic IC pour le projet github

  Afin que Travis IC ai les droits sur le projet github, il faut ajouter dans le fichier travis.yml une clée de sécurité.

Il suffit pour cela d'effectuer dans le repertoire .git local les commande suivantes :

    $ gem install travis
    $ travis encrypt SOMEVAR="secretvalue" --add

Puis de pousser les modifications sur github.
        
