import { IsDateString, IsEmail, IsNotEmpty, IsString } from "class-validator"

export class CreateUserDto {
    @IsString()
    @IsNotEmpty()
    name: string

    @IsString()
    @IsNotEmpty()
    last_name: string

    @IsString()
    @IsNotEmpty()
    document: string

    @IsDateString()
    registry_date: Date

    @IsEmail()
    email: string

    @IsString()
    password: string
}