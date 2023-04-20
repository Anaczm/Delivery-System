import { IsNotEmpty, IsString, IsPhoneNumber, IsPostalCode, Validate} from "class-validator";
import { cpf }from "cpf-cnpj-validator"

export class RemetenteDto {
    @IsNotEmpty()
    @IsString()
    str_nome: string;

    @IsNotEmpty()
    @IsPhoneNumber('BR')
    str_telefone: string;

    @IsNotEmpty()
    @IsString()
    @Validate((valor) => cpf.isValid(valor), {
        message: 'CPF inválido',
    })
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