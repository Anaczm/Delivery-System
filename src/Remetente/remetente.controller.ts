import { Body, Controller, Post }   from '@nestjs/common';
import { RemetenteService } from './remetente.service';
import { RemetenteDto } from './dto';

@Controller()
export class RemetenteController {
    constructor( private remetenteService: RemetenteService) {}

    @Post('cadastro')
    cadastro(@Body() dto: RemetenteDto) {
        return this.remetenteService.cadastro(dto);
    }
} 

