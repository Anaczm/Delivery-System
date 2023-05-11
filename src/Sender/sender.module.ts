import { Module } from '@nestjs/common';
import { SenderController } from './sender.controller';
import { SenderService } from './sender.service';
import { PrismaService } from "../prisma/prisma.service";
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
    imports: [PrismaModule],
    controllers: [SenderController],
    providers: [SenderService, PrismaService]
})
export class SenderModule {}
