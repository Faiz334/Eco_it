<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Entity\Quiz;
use App\Entity\Section;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class QuizController extends AbstractController
{
    #[Route('/quiz', name: 'app_quiz')]
    public function index(): Response
    {
        return $this->render('quiz/index.html.twig', [
            'controller_name' => 'QuizController',
        ]);
    }
    #[Route('/formation/{formation.slug}/section/{section.slug}/quiz{slug}', name: 'quiz_show')]
    public function show(?Quiz $quiz): Response
    {   
        if (!$quiz) {
            return $this->redirectToRoute('app_home');
        }

        return $this->render('quiz/index.html.twig', [
            'quiz' => $quiz,
        ]);
    }
}
