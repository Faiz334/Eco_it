<?php

namespace App\Controller;

use App\Entity\Formation;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class FormationController extends AbstractController
{
    #[Route('/formation/{slug}', name: 'formation_show')]
    public function show(?Formation $formation): Response
    {   
        if (!$formation) {
            return $this->redirectToRoute('app_home');
        }

        return $this->render('formation/show.html.twig', [
            'formation' => $formation,
        ]);
    }
}
