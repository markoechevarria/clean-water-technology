import { IsString, IsInt, IsDateString, MinLength, IsNotEmpty, IsNumber, IsNumberString } from 'class-validator';

export class CreateCourseDto {
    @IsString()
    @IsNotEmpty()
    name: string

    @IsString()
    @IsNotEmpty()
    description?: string

    @IsDateString()
    creation_date?: string

    @IsNumberString()
    num_modules?: number
    code?: string
}