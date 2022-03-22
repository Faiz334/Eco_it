<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220321210317 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE user (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles LONGTEXT NOT NULL COMMENT \'(DC2Type:json)\', password VARCHAR(255) NOT NULL, nom VARCHAR(255) NOT NULL, prenom VARCHAR(255) NOT NULL, username VARCHAR(60) NOT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE lesson ADD CONSTRAINT FK_F87474F3D823E37A FOREIGN KEY (section_id) REFERENCES section (id)');
        $this->addSql('ALTER TABLE section ADD formation_id INT DEFAULT NULL, ADD quizs_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE section ADD CONSTRAINT FK_2D737AEF5200282E FOREIGN KEY (formation_id) REFERENCES formation (id)');
        $this->addSql('ALTER TABLE section ADD CONSTRAINT FK_2D737AEFC79B0447 FOREIGN KEY (quizs_id) REFERENCES quiz (id)');
        $this->addSql('CREATE INDEX IDX_2D737AEF5200282E ON section (formation_id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_2D737AEFC79B0447 ON section (quizs_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('DROP TABLE user');
        $this->addSql('ALTER TABLE lesson DROP FOREIGN KEY FK_F87474F3D823E37A');
        $this->addSql('ALTER TABLE section DROP FOREIGN KEY FK_2D737AEF5200282E');
        $this->addSql('ALTER TABLE section DROP FOREIGN KEY FK_2D737AEFC79B0447');
        $this->addSql('DROP INDEX IDX_2D737AEF5200282E ON section');
        $this->addSql('DROP INDEX UNIQ_2D737AEFC79B0447 ON section');
        $this->addSql('ALTER TABLE section DROP formation_id, DROP quizs_id');
    }
}
