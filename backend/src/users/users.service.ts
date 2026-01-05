import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';
import { CreateUserDto } from './dto/create-user.dto';
import { UpdateUserDto } from './dto/update-use-dto';

@Injectable()
export class UsersService {
    constructor( private prismaService: PrismaService) {}

    async findAll() {
        return this.prismaService.users.findMany()
    }

    async findOne(id: number) {
        return this.prismaService.users.findUnique( {
            where: {
                id_user:  id
            }
        })
    }

    async create(createUserDto: CreateUserDto) {
        const newDate = new Date(createUserDto.registry_date)
        return this.prismaService.users.create({
            data: {
                ...createUserDto,
                registry_date: newDate
            }
        })
    }

    async update(id: number, updateUserDto: UpdateUserDto) {
        return this.prismaService.users.update({
            where: {
                id_user: id
            },
            data: {
                ...updateUserDto
            }
        })
    }

    async delete(id: number) {
        return this.prismaService.users.delete({
            where: {
                id_user: id
            }
        })
    }
}
