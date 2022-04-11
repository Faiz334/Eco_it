<?php

namespace App\DataFixtures;

use App\Entity\User;
use Faker\Factory;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;


class AppFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        $faker = Factory::create('fr_FR');
        
        $user = new User();

        $user->setEmail('admin@admin.fr');
        $user->setPrenom('Zinedine');
        $user->setNom('Zidane');
        $user->setUsername('Zizou');
        $user->setRoles(['ROLE_ADMIN']);

        $password = $this->hasher->hashPassword($user, 'admin33');
        $user->setPassword($password);

         $manager->persist($user);


        
         $user = new User();

        $user->setEmail('instructeur@instructeur.fr');
        $user->setPrenom('Karim');
        $user->setNom('Benzema');
        $user->setUsername('KB9');
        $user->setRoles(['ROLE_INSTRUCTEUR']);

        $password = $this->hasher->hashPassword($user, 'instructeur33');
        $user->setPassword($password);

         $manager->persist($user);

        
         $user = new User();

        $user->setEmail('apprenant@apprenant.fr');
        $user->setPrenom('Kylian');
        $user->setNom('Mbappe');
        $user->setUsername('Mbappe7');
        $user->setRoles(['ROLE_APPRENANT']);

        $password = $this->hasher->hashPassword($user, 'apprenant33');
        $user->setPassword($password);

         $manager->persist($user);

        $manager->flush();
    }
}
