-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('PENDING', 'PAYED', 'CANCELLED');

-- CreateTable
CREATE TABLE "orders" (
    "id" SERIAL NOT NULL,
    "price" INTEGER NOT NULL,
    "client_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "status" "OrderStatus" NOT NULL,

    CONSTRAINT "orders_pkey" PRIMARY KEY ("id")
);
