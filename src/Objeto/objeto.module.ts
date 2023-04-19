import { Module } from '@nestjs/common';
import { ObjetoController } from './objeto.controller';
import { ObjetoService } from './objeto.service';
import { PrismaService } from "../prisma/prisma.service";
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
    imports: [PrismaModule],
    controllers: [ObjetoController],
    providers: [ObjetoService, PrismaService]
})
export class ObjetoModule {}
