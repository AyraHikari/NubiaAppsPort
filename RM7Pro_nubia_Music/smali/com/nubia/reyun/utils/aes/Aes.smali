.class public Lcom/nubia/reyun/utils/aes/Aes;
.super Lcom/nubia/reyun/utils/aes/CryptoProvider;
.source "Aes.java"


# direct methods
.method public constructor <init>(Lcom/nubia/reyun/utils/aes/PaddingMode;)V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/nubia/reyun/utils/aes/CryptoProvider;-><init>(ILcom/nubia/reyun/utils/aes/PaddingMode;)V

    .line 39
    return-void
.end method


# virtual methods
.method public cbc_decrypt([B[B[B)[B
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->AES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nubia/reyun/utils/aes/Aes;->cbc_decrypt(Lcom/nubia/reyun/utils/aes/CryptoMode;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public cbc_encrypt([B[B[B)[B
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nubia/reyun/utils/aes/CryptoMode;->AES:Lcom/nubia/reyun/utils/aes/CryptoMode;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/nubia/reyun/utils/aes/Aes;->cbc_encrypt(Lcom/nubia/reyun/utils/aes/CryptoMode;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method
