import { IsNotEmpty, IsString, IsPhoneNumber, IsPostalCode, Length} from "class-validator";

export class RecipientDto {
    @IsNotEmpty()
    @IsString()
    str_name: string;

    @IsNotEmpty()
    @IsPhoneNumber('BR')
    str_phone: string;

    @IsNotEmpty()
    @IsString()
    @Length(11) 
    str_CPF: string;
    
    @IsNotEmpty()
    @IsString()
    str_state: string;

    @IsNotEmpty()
    @IsString()
    str_city: string;

    @IsNotEmpty()
    @IsString()
    str_neiborhood: string;

    @IsNotEmpty()
    @IsString()
    str_number: string;

    @IsNotEmpty()
    @IsPostalCode('BR')
    str_CEP: string;
}