import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma/prisma.service";
import { Remetente, Prisma } from "@prisma/client";

    @Injectable()
    export class RemetenteService {
        constructor(private prisma: PrismaService) {}
  

    async remetente(
        remetenteWhereUnique: Prisma.RemetenteWhereUniqueInput,
    ): Promise<Remetente | null> {
        return this.prisma.remetente.findUnique({
            where: remetenteWhereUnique,
        });
    }

    async remetentes(params: {
        skip?: number;
        take?: number;
        cursor?: Prisma.RemetenteWhereUniqueInput;
        where?: Prisma.RemetenteWhereInput;
        orderBy?: Prisma.RemetenteOrderByWithRelationInput;
    }): Promise<Remetente[]> {
        const { skip, take, cursor, where, orderBy } = params;
        return this.prisma.remetente.findMany({
            skip,
            take,
            cursor,
            where,
            orderBy,
        });
    }

    async createRemetente(data: Prisma.RemetenteCreateInput): Promise<Remetente> {
        return this.prisma.remetente.create({
            data,
        });
    }

    async updateRemetente(params: {
        where: Prisma.RemetenteWhereUniqueInput;
        data: Prisma.RemetenteUpdateInput;
    }): Promise<Remetente> {
        const { where, data } = params;
        return this.prisma.remetente.update({
            data,
            where,
        });
    }

    async deleteRemetente(where: Prisma.RemetenteWhereUniqueInput): Promise<Remetente> {
        return this.prisma.remetente.delete({
            where,
        });
    }
}