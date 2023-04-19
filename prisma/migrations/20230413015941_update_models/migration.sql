/*
  Warnings:

  - You are about to alter the column `str_CEP` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Char(8)`.
  - You are about to alter the column `str_CPF` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Char(11)`.
  - You are about to alter the column `str_bairro` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.
  - You are about to alter the column `str_cidade` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(30)`.
  - You are about to alter the column `str_estado` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.
  - You are about to alter the column `str_nome` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(70)`.
  - You are about to alter the column `str_numero` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(6)`.
  - You are about to alter the column `str_telefone` on the `Destinatario` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.
  - You are about to alter the column `str_peso` on the `Objeto` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `str_codRastreio` on the `Objeto` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.
  - You are about to alter the column `str_dimensoes` on the `Objeto` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(10)`.
  - You are about to alter the column `str_tipoServico` on the `Objeto` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.
  - You are about to alter the column `str_status` on the `ObjetoLog` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(50)`.
  - You are about to alter the column `str_CEP` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Char(8)`.
  - You are about to alter the column `str_CPF` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Char(11)`.
  - You are about to alter the column `str_bairro` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(40)`.
  - You are about to alter the column `str_cidade` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(30)`.
  - You are about to alter the column `str_estado` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.
  - You are about to alter the column `str_nome` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(70)`.
  - You are about to alter the column `str_numero` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(6)`.
  - You are about to alter the column `str_telefone` on the `Remetente` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `VarChar(20)`.

*/
-- AlterTable
ALTER TABLE `Destinatario` MODIFY `str_CEP` CHAR(8) NOT NULL,
    MODIFY `str_CPF` CHAR(11) NOT NULL,
    MODIFY `str_bairro` VARCHAR(40) NOT NULL,
    MODIFY `str_cidade` VARCHAR(30) NOT NULL,
    MODIFY `str_estado` VARCHAR(20) NOT NULL,
    MODIFY `str_nome` VARCHAR(70) NOT NULL,
    MODIFY `str_numero` VARCHAR(6) NOT NULL,
    MODIFY `str_telefone` VARCHAR(20) NOT NULL;

-- AlterTable
ALTER TABLE `Objeto` MODIFY `str_peso` VARCHAR(10) NOT NULL,
    MODIFY `str_codRastreio` VARCHAR(20) NOT NULL,
    MODIFY `str_dimensoes` VARCHAR(10) NOT NULL,
    MODIFY `str_tipoServico` VARCHAR(20) NOT NULL;

-- AlterTable
ALTER TABLE `ObjetoLog` MODIFY `str_status` VARCHAR(50) NOT NULL,
    MODIFY `str_descricao` TEXT NOT NULL;

-- AlterTable
ALTER TABLE `Remetente` MODIFY `str_CEP` CHAR(8) NOT NULL,
    MODIFY `str_CPF` CHAR(11) NOT NULL,
    MODIFY `str_bairro` VARCHAR(40) NOT NULL,
    MODIFY `str_cidade` VARCHAR(30) NOT NULL,
    MODIFY `str_estado` VARCHAR(20) NOT NULL,
    MODIFY `str_nome` VARCHAR(70) NOT NULL,
    MODIFY `str_numero` VARCHAR(6) NOT NULL,
    MODIFY `str_telefone` VARCHAR(20) NOT NULL;
