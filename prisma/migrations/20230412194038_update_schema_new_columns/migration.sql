/*
  Warnings:

  - You are about to drop the column `dt_cadastro` on the `Objeto` table. All the data in the column will be lost.
  - You are about to drop the column `dt_entrega` on the `Objeto` table. All the data in the column will be lost.
  - You are about to drop the column `str_status` on the `Objeto` table. All the data in the column will be lost.
  - Added the required column `str_codRastreio` to the `Objeto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_dimensoes` to the `Objeto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `str_tipoServico` to the `Objeto` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Objeto` DROP COLUMN `dt_cadastro`,
    DROP COLUMN `dt_entrega`,
    DROP COLUMN `str_status`,
    ADD COLUMN `str_codRastreio` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_dimensoes` VARCHAR(191) NOT NULL,
    ADD COLUMN `str_tipoServico` VARCHAR(191) NOT NULL;
