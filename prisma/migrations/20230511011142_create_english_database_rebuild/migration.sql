-- CreateTable
CREATE TABLE `Senders` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_name` VARCHAR(70) NOT NULL,
    `str_phone` VARCHAR(20) NOT NULL,
    `str_CPF` CHAR(11) NOT NULL,
    `str_state` VARCHAR(20) NOT NULL,
    `str_city` VARCHAR(30) NOT NULL,
    `str_neiborhood` VARCHAR(40) NOT NULL,
    `str_number` VARCHAR(6) NOT NULL,
    `str_CEP` CHAR(9) NOT NULL,

    UNIQUE INDEX `Senders_str_CPF_key`(`str_CPF`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Recipients` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_name` VARCHAR(70) NOT NULL,
    `str_phone` VARCHAR(20) NOT NULL,
    `str_CPF` CHAR(11) NOT NULL,
    `str_state` VARCHAR(20) NOT NULL,
    `str_city` VARCHAR(30) NOT NULL,
    `str_neiborhood` VARCHAR(40) NOT NULL,
    `str_number` VARCHAR(6) NOT NULL,
    `str_CEP` CHAR(9) NOT NULL,

    UNIQUE INDEX `Recipients_str_CPF_key`(`str_CPF`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Objects` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_weight` VARCHAR(10) NOT NULL,
    `str_dimensions` VARCHAR(10) NOT NULL,
    `str_serviceType` VARCHAR(20) NOT NULL,
    `str_TrackingCod` VARCHAR(20) NOT NULL,
    `id_sender` INTEGER NOT NULL,
    `id_recipient` INTEGER NOT NULL,
    `id_logObj` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `LogObjects` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `str_status` VARCHAR(50) NOT NULL,
    `dt_register` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `str_descripition` TEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Objects` ADD CONSTRAINT `Objects_id_sender_fkey` FOREIGN KEY (`id_sender`) REFERENCES `Senders`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Objects` ADD CONSTRAINT `Objects_id_recipient_fkey` FOREIGN KEY (`id_recipient`) REFERENCES `Recipients`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Objects` ADD CONSTRAINT `Objects_id_logObj_fkey` FOREIGN KEY (`id_logObj`) REFERENCES `LogObjects`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
