# Eco_it



## Description
Dépôt du projet Médiathèque.

Les documents annexes sont disponibles dans le dossier ANNEXES :
- Charte graphique
- Manuel d'utilisation
- Documentation technique

## Récupération du projet

Utiliser GIT Clone pour récupérer le dépôt

```bash
git clone https://github.com/Faiz334/Eco_it.git
```

## Installation

```bash
# Déplacement dans le dossier
cd eco_it
# Installation des dépendances
composer install
# Création de la base de données
php bin/console doctrine:database:create
# Création des tables (migrations)
php bin/console doctrine:migrations:migrate
# Insertions des jeux de données (fixtures)
php bin/console doctrine:fixtures:load --no-interaction
```


## Utilisation

```bash
symfony server:start
```
- Si vous utilisez **Composer**, il faut installer le **Web Server Bundle** :
```bash
composer require symfony/web-server-bundle --dev
php bin/console server:start
```



compte :
admin = admin@admin.fr
mdp=admin33

instructeur = instructeur@instructeur.fr
mdp=instructeur33


