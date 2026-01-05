import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';

@Injectable()
export class CursosService {
    constructor(private prismaService: PrismaService) {}

    async findAll() {
         return this.prismaService.users.findMany()
        //return "hola"
    }
}
