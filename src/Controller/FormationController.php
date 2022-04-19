<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Entity\User;
use App\Entity\Lesson;
use App\Entity\Section;
use App\Repository\FormationRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;

class FormationController extends AbstractController
    {
        private $entityManager;
        
        public function __construct(EntityManagerInterface $entityManager)
        {
            $this->entityManager = $entityManager;
        }


           //**  #[Route('/formation/{slug}', name: 'formation_show')]
            //public function show(?Formation $formation): Response
           // {   
           //     if (!$formation) {
           //         return $this->redirectToRoute('app_home');
           //     }
        
           //     return $this->render('formation/show.html.twig', [
           //         'formation' => $formation,
            //    ]);
            //}
        
            #[Route('/formation', name: 'formation_show1')]
            public function index(FormationRepository $formationRepo,): Response
            {   
                return $this->render('formations/index.html.twig', [
                    'formations' => $formationRepo->findAll()
                ]);
            }
        
            #[Route('/formation/{slug}', name: 'formation_show')]
            public function show($slug): Response
            {
                $user = $this->getUser();
                if (!$user) {
                    return $this->redirectToRoute('app_login');
                }

                $formation = $this->entityManager->getRepository(Formation::class)->findOneBySlug($slug);
            

                $id_formation = $formation->getId();
                $sections = $this->entityManager->getRepository(Section::class)->findBy(['formation' => $id_formation]);

            
                $lessons = $this->entityManager->getRepository(Lesson::class)->findAll();

            
                if (!$formation) {
                    return $this->redirectToRoute('app_formation');
                }
            
                return $this->render('formation/show.html.twig', [
                    'formation' => $formation,
                    'sections' => $sections,
                    'lessons' => $lessons,
                ]);
            }

            
    }
