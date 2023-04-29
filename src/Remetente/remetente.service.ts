import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";
import { RemetenteDto } from "./dto";

@Injectable()
    export class RemetenteService {
        constructor(private prisma: PrismaService) {}
        
        async cadastro(dto: RemetenteDto) {

            const remetente = await this.prisma.remetente.create({
                data: {
                    str_nome: dto.str_nome,
                    str_telefone: dto.str_telefone,
                    str_CPF: dto.str_CPF,
                    str_estado: dto.str_estado,
                    str_cidade: dto.str_cidade,
                    str_bairro: dto.str_bairro,
                    str_numero: dto.str_numero,
                    str_CEP: dto.str_CEP,
                },
                select: {
                    id: true,
                    id_objeto: true,
                },
            });

            return remetente;
        }
    }