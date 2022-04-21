<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Entity\Lesson;
use App\Entity\Section;
use App\Repository\FormationRepository;
use App\Repository\SectionRepository;
use App\Repository\LessonRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;

class LessonController extends AbstractController
{
    private $entityManager;
        
        public function __construct(EntityManagerInterface $entityManager)
        {
            $this->entityManager = $entityManager;
        }


    #[Route('/lesson', name: 'app_lesson')]
    public function index(): Response
    {
        return $this->render('lesson/index.html.twig', [
            'controller_name' => 'LessonController',
        ]);
    }


    #[Route('/formation/{slug}/{id}', name: 'lesson_watch')]
    public function show(?Lesson $lesson) : Response {
        
        if (!$lesson) {
            return $this->redirectToRoute('app_home');
        }


        return $this->render('lesson/index.html.twig', [
            'lesson' => $lesson,
        ]);
    }
}
