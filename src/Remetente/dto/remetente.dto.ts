import { IsNotEmpty, IsString, IsPhoneNumber, IsPostalCode, Length} from "class-validator";

export class RemetenteDto {
    @IsNotEmpty()
    @IsString()
    str_nome: string;

    @IsNotEmpty()
    @IsPhoneNumber('BR')
    str_telefone: string;

    @IsNotEmpty()
    @IsString()
    @Length(11) 
    str_CPF: string;
    
    @IsNotEmpty()
    @IsString()
    str_estado: string;

    @IsNotEmpty()
    @IsString()
    str_cidade: string;

    @IsNotEmpty()
    @IsString()
    str_bairro: string;

    @IsNotEmpty()
    @IsString()
    str_numero: string;

    @IsNotEmpty()
    @IsPostalCode('BR')
    str_CEP: string;
}