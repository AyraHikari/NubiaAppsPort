.class public final enum Lcom/nubia/reyun/utils/aes/CryptoMode;
.super Ljava/lang/Enum;
.source "CryptoMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/reyun/utils/aes/CryptoMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AES:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum ARCFOUR:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum Blowfish:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum DES:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum DESede:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field private static final synthetic ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum RC2:Lcom/nubia/reyun/utils/aes/CryptoMode;

.field public static final enum RSA:Lcom/nubia/reyun/utils/aes/CryptoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "AES"

    invoke-direct {v0, v1, v3}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->AES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "DES"

    invoke-direct {v0, v1, v4}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->DES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "DESede"

    invoke-direct {v0, v1, v5}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->DESede:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "RC2"

    invoke-direct {v0, v1, v6}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->RC2:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "ARCFOUR"

    invoke-direct {v0, v1, v7}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->ARCFOUR:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "Blowfish"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->Blowfish:Lcom/nubia/reyun/utils/aes/CryptoMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    const-string v1, "RSA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CryptoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->RSA:Lcom/nubia/reyun/utils/aes/CryptoMode;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nubia/reyun/utils/aes/CryptoMode;

    sget-object v1, Lcom/nubia/reyun/utils/aes/CryptoMode;->AES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/reyun/utils/aes/CryptoMode;->DES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/reyun/utils/aes/CryptoMode;->DESede:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/reyun/utils/aes/CryptoMode;->RC2:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/reyun/utils/aes/CryptoMode;->ARCFOUR:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/reyun/utils/aes/CryptoMode;->Blowfish:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nubia/reyun/utils/aes/CryptoMode;->RSA:Lcom/nubia/reyun/utils/aes/CryptoMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CryptoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/reyun/utils/aes/CryptoMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/utils/aes/CryptoMode;

    return-object v0
.end method

.method public static values()[Lcom/nubia/reyun/utils/aes/CryptoMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CryptoMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/nubia/reyun/utils/aes/CryptoMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
