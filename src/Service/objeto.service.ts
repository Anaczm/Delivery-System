import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma.service";
import { Objeto, Prisma } from "@prisma/client";

    @Injectable()
    export class ObjetoService {
        constructor(private prisma: PrismaService) {}
        
        
    async objeto(
        objetoWhereUnique: Prisma.ObjetoWhereUniqueInput,
    ): Promise<Objeto | null> {
        return this.prisma.objeto.findUnique({
            where: objetoWhereUnique,
        });
    }

    async objetos(params: {
        skip?: number,
        take?: number,
        cursor?: Prisma.ObjetoWhereUniqueInput;
        where?: Prisma.ObjetoWhereInput;
        orderBy?: Prisma.ObjetoOrderByWithRelationInput;
    }): Promise<Objeto[]> {
        const { skip, take, cursor, where, orderBy } = params;
        return this.prisma.objeto.findMany({
            skip,
            take, 
            cursor,
            where,
            orderBy,
        });
    }

    async createObjeto(data: Prisma.ObjetoCreateInput): Promise<Objeto> {
        return this.prisma.objeto.create({
            data,
        });
    }

    async updateObjeto(params: {
        where: Prisma.ObjetoWhereUniqueInput;
        data: Prisma.ObjetoUpdateInput;
    }): Promise<Objeto> {
        const { where, data } = params;
        return this.prisma.objeto.update({
            data,
            where,
        });
    }

    async deleteObjeto(where: Prisma.ObjetoWhereUniqueInput): Promise<Objeto> {
        return this.prisma.objeto.delete({
            where,
        });
    }
}