import { Injectable, OnModuleInit } from "@nestjs/common";
import { PrismaPg } from '@prisma/adapter-pg'
import { PrismaClient } from "../backend/generated/prisma/client" // "generated/prisma/client";

@Injectable()
export class PrismaService extends PrismaClient{    
    constructor() {
        const adapter = new PrismaPg({ connectionString: process.env.DATABASE_URL })
        const prisma = new PrismaClient({ adapter })
        return prisma;
    }
    prismaClient() {
    }
}
