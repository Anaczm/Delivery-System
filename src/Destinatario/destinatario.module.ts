import { Module } from '@nestjs/common';
import { DestinatarioController } from './destinatario.controller';
import { DestinatarioService } from './destinatario.service';
import { PrismaService } from "../prisma/prisma.service";
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
    imports: [PrismaModule],
    controllers: [DestinatarioController],
    providers: [DestinatarioService, PrismaService]
})
export class DestinatarioModule {}
