import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SenderModule } from './Sender/sender.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [SenderModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
