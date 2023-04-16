import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma.service";
import { ObjetoLog, Prisma } from "@prisma/client";

    @Injectable()
    export class ObjetoLogService {
        constructor(private prisma: PrismaService) {}


    async ObjetoLog(
        objetoLogWhereUnique: Prisma.ObjetoLogWhereUniqueInput,
    ): Promise<ObjetoLog | null> {
        return this.prisma.objetoLog.findUnique({
            where: objetoLogWhereUnique,
        });
    }

    async ObjetosLog(params: {
        skip?: number,
        take?: number,
        cursor?: Prisma.ObjetoLogWhereUniqueInput;
        where?: Prisma.ObjetoLogWhereInput;
        orderBy?: Prisma.ObjetoLogOrderByWithRelationInput;
    }): Promise<ObjetoLog[]> {
        const { skip, take, cursor, where, orderBy } = params;
        return this.prisma.objetoLog.findMany({
            skip,
            take,
            cursor,
            where,
            orderBy
        });
    }

    async createObjetoLog(data: Prisma.ObjetoLogCreateInput): Promise<ObjetoLog> {
        return this.prisma.objetoLog.create({
            data,
        })
    }   

    async updateObjeto(params: {
        where: Prisma.ObjetoLogWhereUniqueInput;
        data: Prisma.ObjetoLogUpdateInput;
    }): Promise<ObjetoLog> {
        const { where, data } = params;
        return this.prisma.objetoLog.update({
            data,
            where,
        });
    }

    async deleteObjetoLog(where: Prisma.ObjetoLogWhereUniqueInput): Promise<ObjetoLog> {
        return this.prisma.objetoLog.delete({
            where,
        });
    }
}