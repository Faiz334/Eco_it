<?php

namespace App\Controller;

use App\Entity\Formation;
use App\Entity\Section;
use App\Entity\Lesson;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class SectionController extends AbstractController
{
    #[Route('/section', name: 'app_section')]
    public function index(): Response
    {
        return $this->render('section/index.html.twig', [
            'controller_name' => 'SectionController',
        ]);
    }

    #[Route('/section/{slug}', name: 'section_show')]
    public function show(?Section $section): Response
    {   
       

        return $this->render('section/index.html.twig', [
            'section' => $section,
        ]);
    }
}
