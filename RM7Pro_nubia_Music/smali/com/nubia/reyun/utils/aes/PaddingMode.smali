.class public final enum Lcom/nubia/reyun/utils/aes/PaddingMode;
.super Ljava/lang/Enum;
.source "PaddingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nubia/reyun/utils/aes/PaddingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/PaddingMode;

.field public static final enum ISO10126Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

.field public static final enum NoPadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

.field public static final enum PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

.field public static final enum SpacePadding:Lcom/nubia/reyun/utils/aes/PaddingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    const-string v1, "NoPadding"

    invoke-direct {v0, v1, v2}, Lcom/nubia/reyun/utils/aes/PaddingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->NoPadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    const-string v1, "SpacePadding"

    invoke-direct {v0, v1, v3}, Lcom/nubia/reyun/utils/aes/PaddingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->SpacePadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    const-string v1, "PKCS5Padding"

    invoke-direct {v0, v1, v4}, Lcom/nubia/reyun/utils/aes/PaddingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    new-instance v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    const-string v1, "ISO10126Padding"

    invoke-direct {v0, v1, v5}, Lcom/nubia/reyun/utils/aes/PaddingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->ISO10126Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nubia/reyun/utils/aes/PaddingMode;

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->NoPadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->SpacePadding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->PKCS5Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nubia/reyun/utils/aes/PaddingMode;->ISO10126Padding:Lcom/nubia/reyun/utils/aes/PaddingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/PaddingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nubia/reyun/utils/aes/PaddingMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nubia/reyun/utils/aes/PaddingMode;

    return-object v0
.end method

.method public static values()[Lcom/nubia/reyun/utils/aes/PaddingMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nubia/reyun/utils/aes/PaddingMode;->ENUM$VALUES:[Lcom/nubia/reyun/utils/aes/PaddingMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/nubia/reyun/utils/aes/PaddingMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
