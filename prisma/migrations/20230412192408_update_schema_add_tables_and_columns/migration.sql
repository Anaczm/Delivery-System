/*
  Warnings:

  - You are about to drop the column `CEP` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `CPF` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `bairro` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `cidade` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `estado` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `numero` on the `Destinatario` table. All the data in the column will be lost.
  - You are about to drop the column `CEP` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `CPF` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `bairro` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `cidade` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `estado` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `nome` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the column `numero` on the `Remetente` table. All the data in the column will be lost.
  - You are about to drop the `Produto` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[str_CPF]` on the table `Destinatario` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[str_CPF]` on the table `Remetente` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `str_CEP` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_CPF` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_bairro` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_cidade` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_estado` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_nome` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_numero` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_telefone` to the `Destinatario` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_CEP` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_CPF` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_bairro` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_cidade` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_estado` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_nome` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_numero` to the `Remetente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_telefone` to the `Remetente` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Produto` DROP FOREIGN KEY `Produto_idDestinatario_fkey`;

-- DropForeignKey
ALTER TABLE `Produto` DROP FOREIGN KEY `Produto_idRemetente_fkey`;

-- DropIndex
DROP INDEX `Destinatario_CPF_key` ON `Destinatario`;

-- DropIndex
DROP INDEX `Remetente_CPF_key` ON `Remetente`;

-- AlterTable
ALTER TABLE `Destinatario` DROP COLUMN `CEP`,
    DROP COLUMN `CPF`,
    DROP COLUMN `bairro`,
    DROP COLUMN `cidade`,
    DROP COLUMN `estado`,
    DROP COLUMN `nome`,
    DROP COLUMN `numero`,
    ADD COLUMN `str_CEP` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_CPF` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_bairro` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_cidade` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_estado` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_nome` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_numero` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_telefone` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Remetente` DROP COLUMN `CEP`,
    DROP COLUMN `CPF`,
    DROP COLUMN `bairro`,
    DROP COLUMN `cidade`,
    DROP COLUMN `estado`,
    DROP COLUMN `nome`,
    DROP COLUMN `numero`,
    ADD COLUMN `str_CEP` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_CPF` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_bairro` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_cidade` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_estado` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_nome` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_numero` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_telefone` VARCHAR(191) NOT NULL;

-- DropTable
DROP TABLE `Produto`;

-- CreateTable
CREATE TABLE `Objeto` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_peso` VARCHAR(191) NOT NULL,
    `str_status` VARCHAR(191) NOT NULL,
    `dt_cadastro` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `dt_entrega` DATETIME(3) NOT NULL,
    `id_remetente` INTEGER NOT NULL,
    `id_destinatario` INTEGER NOT NULL,
    `id_objLog` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ObjetoLog` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_status` VARCHAR(191) NOT NULL,
    `dt_registro` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `str_descricao` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Destinatario_str_CPF_key` ON `Destinatario`(`str_CPF`);

-- CreateIndex
CREATE UNIQUE INDEX `Remetente_str_CPF_key` ON `Remetente`(`str_CPF`);

-- AddForeignKey
ALTER TABLE `Objeto` ADD CONSTRAINT `Objeto_id_remetente_fkey` FOREIGN KEY (`id_remetente`) REFERENCES `Remetente`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Objeto` ADD CONSTRAINT `Objeto_id_destinatario_fkey` FOREIGN KEY (`id_destinatario`) REFERENCES `Destinatario`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Objeto` ADD CONSTRAINT `Objeto_id_objLog_fkey` FOREIGN KEY (`id_objLog`) REFERENCES `ObjetoLog`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
