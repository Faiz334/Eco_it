<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Entity\Lesson;
use App\Entity\Section;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class LessonController extends AbstractController
{
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
