import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { SenderDto } from "./dto";

@Injectable()
    export class SenderService {
        constructor(private prisma: PrismaService) {}
        
        async register(dto: SenderDto) {

            const sender = await this.prisma.sender.create({
                data: {
                    str_name: dto.str_name,
                    str_phone: dto.str_phone,
                    str_CPF: dto.str_CPF,
                    str_state: dto.str_state,
                    str_city: dto.str_city,
                    str_neiborhood: dto.str_neiborhood,
                    str_number: dto.str_number,
                    str_CEP: dto.str_CEP,
                },
                select: {
                    id: true,
                    id_object: true,
                },
            });

            return sender;
        }
    }