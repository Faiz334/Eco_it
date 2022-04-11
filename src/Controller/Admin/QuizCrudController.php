<?php

namespace App\Controller\Admin;

use App\Entity\Quiz;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;

class QuizCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Quiz::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('title')->setLabel('Titre'),
            TextEditorField::new('description'),
            AssociationField::new('section'),
            DateTimeField::new('createdAt')
            ->hideOnForm(),
            DateTimeField::new('updatedAt')
            ->hideOnForm(),
        ];
    }
    
}
