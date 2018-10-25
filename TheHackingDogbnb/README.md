# The Hacking DogWalker

*L'équipe :* 
- Hava ***Guerni***
- Maxime ***Martin***
- Victor ***Douay***
- Alexandre ***Lovergne***
- Corentin ***Nadaud*** 


# Les Dossiers 
 *Comment ça marche ?*

L'application a été créée à partir du Frameworks RAILS. 
A l'ouverture du dossier sur le terminal : 
- ``bundle install``   #pour installer les gems nécessaires
- ``rails console``  #pour lancer la console du projet 
- ``rails g migration CreateJoinTableDogsitterDog dogsitter dog`` pour fusionner les 2 tables dans une relation.
- ``rails db:migrate`` #créer les colonnes en effectuant les migrations 
- ``rails db:seed`` #pour lancer le fichier seeds et générer via Faker des utilisateurs et des données pour la base de données 

## L'arborescence 
Celle, typique, du Framework : 
```

    └── app
       └── assets
       └── channels
       └── controllers
       └── helpers
       └── jobs
       └── mailers
       └── models
         └── les différents modèles de la database (en .rb)
       └── views      
   └──bin
   └──config
   config.rb
   └──db
   Gemfile
   Gemfile.lock
   └──lib
   └──log
   package.json
   └──public
   rakefile
   README.md (==> VOUS ÊTES ICI ! <==)
   └──storage
   └──test
   └──tmp 
   └──vendor
```

## L'app expliquée :
L'application a quatre modèles : 
- dogsitter (name)
- dog (name)
- stroll 
- city (city_name)

Qui ont les relations suivantes 

- Dogs 1 - N Dogsitter
- Dogs N - Stroll - N Dogsitters
en utilisant has_and_belongs_to_many, has_one, :through
