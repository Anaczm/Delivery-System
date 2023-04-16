import { Injectable } from "@nestjs/common";
import { PrismaService } from "../prisma.service";
import { Destinatario, Prisma } from "@prisma/client";

    @Injectable()
    export class DestinatarioService {
        constructor(private prisma: PrismaService) {}

    async destinatario(
        destinatarioWhereUnique: Prisma.DestinatarioWhereUniqueInput,
    ): Promise<Destinatario | null> {
        return this.prisma.destinatario.findUnique({
            where: destinatarioWhereUnique,
        });
    }

    async destinatarios(params: {
        skip?: number,
        take?: number,
        cursor?: Prisma.DestinatarioWhereUniqueInput;
        where?: Prisma.DestinatarioWhereInput;
        orderBy?: Prisma.DestinatarioOrderByWithRelationInput;
    }): Promise<Destinatario[]> {
        const { skip, take, cursor, where, orderBy } = params;
        return this.prisma.remetente.findMany({
            skip,
            take,
            cursor,
            where,
            orderBy,
        });
    }

    async createDestinatario(data: Prisma.DestinatarioCreateInput): Promise<Destinatario> {
       return this.prisma.destinatario.create({
            data,
       }); 
    }

    async updateDestinatario(params: {
        where: Prisma.DestinatarioWhereUniqueInput;
        data: Prisma.DestinatarioUpdateInput;
    }): Promise<Destinatario> {
        const { where, data } = params;
        return this.prisma.destinatario.update({
            data,
            where,
        });
    }

    async deleteDestinatario(where: Prisma.DestinatarioWhereUniqueInput): Promise<Destinatario> {
        return this.prisma.destinatario.delete({
            where,
        });
    }

}