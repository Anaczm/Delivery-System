import { Module} from "@nestjs/common";
import { RecipientController } from "./recipient.controller";
import { RecipientService } from "./recipient.service";
import { PrismaService } from "src/prisma/prisma.service";
import { PrismaModule } from "src/prisma/prisma.module";

@Module({
    imports: [PrismaModule],
    controllers: [RecipientController],
    providers: [RecipientService, PrismaService]
})

export class RecipientModule {}
