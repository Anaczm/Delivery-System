import { ForbiddenException, Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { RecipientDto } from "./dto";
import { PrismaClientKnownRequestError } from "@prisma/client/runtime/library";

@Injectable()
    export class RecipientService {
        constructor(private prisma: PrismaService) {}
        
        async register(dto: RecipientDto) {

            try {
                const recipient = await this.prisma.recipient.create({
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
    
                return recipient;
            } catch (error) {
                if (error instanceof PrismaClientKnownRequestError) {
                    if (error.code === 'P2002') {
                        throw new ForbiddenException(
                            'Credenciais únicas duplicadas',
                        );
                    }
                }
                throw error;
            }
        }
    }