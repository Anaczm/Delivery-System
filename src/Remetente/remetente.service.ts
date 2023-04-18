import { Injectable } from "@nestjs/common";
import { PrismaService } from "src/prisma/prisma.service";

@Injectable({})
    export class RemetenteService {
        constructor(private prisma: PrismaService) {}
        cadastro() {
            return { msg: 'Remetente cadastrado! Just a request, not a database messege :|'}
        }
    }