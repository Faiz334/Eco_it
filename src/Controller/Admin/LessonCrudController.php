<?php

namespace App\Controller\Admin;

use App\Entity\Lesson;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use Vich\UploaderBundle\Form\Type\VichImageType;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;

class LessonCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Lesson::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('title')->setLabel('Titre'),
            TextEditorField::new('description'),
            AssociationField::new('section'),
            SlugField::new('slug')->setTargetFieldName('title'),
            TextField::new('imageFile')
                ->setFormType(VichImageType::class)
                ->onlyWhenCreating(),
            ImageField::new('file')
                ->setBasePath('/uploads/lessons/')
                ->onlyOnIndex(),
            DateTimeField::new('createdAt')
                ->hideOnForm(),
            DateTimeField::new('updatedAt')
                ->hideOnForm(),
        ];
    }
    
}
