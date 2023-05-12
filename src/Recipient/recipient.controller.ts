import { Body, Controller, Post } from '@nestjs/common';
import { RecipientService } from './recipient.service';
import { RecipientDto } from './dto';

@Controller()
export class RecipientController {
    constructor (private recipientService: RecipientService) {}

    @Post('register')
    register(@Body() dto: RecipientDto) {
        return this.recipientService.register(dto);
    }
}