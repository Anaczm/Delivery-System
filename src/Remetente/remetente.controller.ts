import { Controller, Post }   from '@nestjs/common';
import { RemetenteService } from './remetente.service';
import { Remetente as RemetenteModel } from '@prisma/client';

@Controller()
export class RemetenteController {
    constructor( private remetenteService: RemetenteService) {}

    @Post('cadastro')
    cadastro() {
        return 'Remetente cadastrado'
    }
}  

