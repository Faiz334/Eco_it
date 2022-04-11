<?php

namespace App\Controller\Admin;

use App\Entity\Formation;
use App\Entity\Section;
use App\Entity\Lesson;
use App\Entity\Quiz;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    public function __construct(
        private AdminUrlGenerator $AdminUrlGenerator
    )
    {
    }

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        

        $url = $this->AdminUrlGenerator->setController(FormationCrudController::class)
            ->generateUrl();
        
        return $this->redirect($url);
        // Option 1. You can make your dashboard redirect to some common page of your backend
        //
        // $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        // return $this->redirect($adminUrlGenerator->setController(FormationCrudController::class)->generateUrl());

        // Option 2. You can make your dashboard redirect to different pages depending on the user
        //
        // if ('jane' === $this->getUser()->getUsername()) {
        //     return $this->redirect('...');
        // }

        // Option 3. You can render some custom template to display a proper dashboard with widgets, etc.
        // (tip: it's easier if your template extends from @EasyAdmin/page/content.html.twig)
        //
        // return $this->render('some/path/my-dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Eco It');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Aller sur le site', 'fa fa-undo', 'app_home');

        yield MenuItem::subMenu('Formations', 'fas fa-graduation-cap',)->setSubItems([
            MenuItem::linkToCrud('Toutes les formations','fas fa-graduation-cap', Formation::class),
            MenuItem::linkToCrud('Ajouter','fas fa-plus', Formation::class)->setAction(Crud::PAGE_NEW)
        ]);

        yield MenuItem::subMenu('Section', 'fas fa-archive',)->setSubItems([
            MenuItem::linkToCrud('Toutes les sections','fas fa-archive', Section::class),
            MenuItem::linkToCrud('Ajouter','fas fa-plus', Section::class)->setAction(Crud::PAGE_NEW)
        ]);

    
        yield MenuItem::subMenu('Leçon', 'fas fa-book',) ->setSubItems([
            MenuItem::linkToCrud('Toutes les leçons','fas fa-book', Lesson::class),
            MenuItem::linkToCrud('Ajouter','fas fa-plus', Lesson::class)->setAction(Crud::PAGE_NEW)
        ]);


        yield MenuItem::subMenu('Quiz', 'fas fa-question',)->setSubItems([
            MenuItem::linkToCrud('Tout les Quiz','fas fa-question', Quiz::class),
            MenuItem::linkToCrud('Ajouter','fas fa-plus', Quiz::class)->setAction(Crud::PAGE_NEW)
        ]);
    }
}
