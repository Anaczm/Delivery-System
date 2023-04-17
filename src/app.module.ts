import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { RemetenteModule } from './Remetente/remetente.module';
import { DestinatarioModule } from './Destinatario/destinatario.module';
import { ObjetoModule } from './Objeto/objeto.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [RemetenteModule, DestinatarioModule, ObjetoModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
