import { Controller, Post, Body} from '@nestjs/common';
import { ObjetoService } from './objeto.service';

@Controller()
export class ObjetoController {
    constructor(
        private readonly objetoService: ObjetoService,
    ) {}


    }
