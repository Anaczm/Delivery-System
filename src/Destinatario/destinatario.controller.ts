
import { Controller, Post, Body } from '@nestjs/common';
import { DestinatarioService } from 'src/Destinatario/destinatario.service';
import { Destinatario as DestinatarioModel } from '@prisma/client';

@Controller()
    export class DestinatarioController {
        constructor(
            private readonly destinatarioService: DestinatarioService,
        ) {}

        @Post('destinatario')
        async cadastrarDestinatario(
            @Body() dadosDestinatario: { str_nome: string, str_telefone: string, str_CPF: string, str_estado: string,
                                      str_cidade: string, str_bairro: string, str_numero: string, str_CEP: string}
        ): Promise<DestinatarioModel> {
            return this.destinatarioService.createDestinatario(dadosDestinatario);
        }
    }
