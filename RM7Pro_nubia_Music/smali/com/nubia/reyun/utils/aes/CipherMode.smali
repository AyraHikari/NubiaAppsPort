.class public final enum Lcom/nubia/reyun/utils/aes/CipherMode;
.super Ljava/lang/Enum;
.source "CipherMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/reyun/utils/aes/CipherMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CBC:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum CFB:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum CTR:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum ECB:Lcom/nubia/reyun/utils/aes/CipherMode;

.field private static final synthetic ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum NCFB:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum NOFB:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum OFB:Lcom/nubia/reyun/utils/aes/CipherMode;

.field public static final enum STREAM:Lcom/nubia/reyun/utils/aes/CipherMode;


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
    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "CBC"

    invoke-direct {v0, v1, v3}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->CBC:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "CFB"

    invoke-direct {v0, v1, v4}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->CFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "CTR"

    invoke-direct {v0, v1, v5}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->CTR:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "ECB"

    invoke-direct {v0, v1, v6}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->ECB:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "NCFB"

    invoke-direct {v0, v1, v7}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->NCFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "NOFB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->NOFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "OFB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->OFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    const-string v1, "STREAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->STREAM:Lcom/nubia/reyun/utils/aes/CipherMode;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nubia/reyun/utils/aes/CipherMode;

    sget-object v1, Lcom/nubia/reyun/utils/aes/CipherMode;->CBC:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/reyun/utils/aes/CipherMode;->CFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/reyun/utils/aes/CipherMode;->CTR:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nubia/reyun/utils/aes/CipherMode;->ECB:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nubia/reyun/utils/aes/CipherMode;->NCFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nubia/reyun/utils/aes/CipherMode;->NOFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nubia/reyun/utils/aes/CipherMode;->OFB:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nubia/reyun/utils/aes/CipherMode;->STREAM:Lcom/nubia/reyun/utils/aes/CipherMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CipherMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/reyun/utils/aes/CipherMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/utils/aes/CipherMode;

    return-object v0
.end method

.method public static values()[Lcom/nubia/reyun/utils/aes/CipherMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nubia/reyun/utils/aes/CipherMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/CipherMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/nubia/reyun/utils/aes/CipherMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
