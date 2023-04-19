import { Module } from '@nestjs/common';
import { RemetenteController } from './remetente.controller';
import { RemetenteService } from './remetente.service';
import { PrismaService } from "../prisma/prisma.service";
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
    imports: [PrismaModule],
    controllers: [RemetenteController],
    providers: [RemetenteService, PrismaService]
})
export class RemetenteModule {}
