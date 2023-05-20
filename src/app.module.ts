import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { SenderModule } from './Sender/sender.module';
import { RecipientModule } from './Recipient/recipient.module';
import { PrismaModule } from './prisma/prisma.module';


@Module({
  imports: [SenderModule, RecipientModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
