import { Body, Controller, Post } from '@nestjs/common';
import { SenderService } from './sender.service';
import { SenderDto } from './dto';

@Controller()
export class SenderController {
    constructor (private senderService: SenderService) {}

    @Post('register-sender')
    register(@Body() dto: SenderDto) {
        return this.senderService.register(dto);
    }
} 

