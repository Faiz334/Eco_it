<?php

namespace App\EventSubscriber;

use DateTime;
use App\Entity\User;
use App\Entity\Formation;
use App\Entity\Section;
use App\Entity\Lesson;
use App\Entity\Quiz;
use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityPersistedEvent;
use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityUpdatedEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class EasyAdminSubscriber implements EventSubscriberInterface
{

    public static function getSubscribedEvents(): array
    {
        return [
            BeforeEntityPersistedEvent::class => ['setEntityCreatedAt'],
            BeforeEntityUpdatedEvent::class => ['setEntityUpdatedAt'],
        ];
    }

    public function setEntityCreatedAt(BeforeEntityPersistedEvent $event): void
    {
        $entity = $event->getEntityInstance();

        if ($entity instanceof User){
            return;
        }

        $now = new DateTime('now');
        $entity->setCreatedAt($now);
    }

    public function setEntityUpdatedAt(BeforeEntityUpdatedEvent $event): void
    {
        $entity = $event->getEntityInstance();

        if ($entity instanceof User){
            return;
        }

        $now = new DateTime('now');
        $entity->setUpdatedAt($now);
    }
}