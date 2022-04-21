# Eco_it


Utiliser GIT Clone pour récupérer le dépôt

git clone https://github.com/Faiz334/Eco_it.git

Installation

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

Utilisation

symfony server:start

    Si vous utilisez Composer, il faut installer le Web Server Bundle :

composer require symfony/web-server-bundle --dev
php bin/console server:start
