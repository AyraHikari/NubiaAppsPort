.class public Lcom/hpplay/sdk/source/protocol/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/h;->a:Ljava/security/SecureRandom;

    .line 410
    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p2, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p2, p5, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p4, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p5, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 266
    invoke-virtual {p2, p4, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 267
    invoke-virtual {p7, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 140
    const/16 v0, 0x100

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 142
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 144
    :goto_0
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_0
    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p2, p3}, Lcom/hpplay/sdk/source/protocol/b/h;->d(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/protocol/b/h;->d(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;[B[B)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 99
    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/h;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/protocol/b/h;->a(ILjava/security/SecureRandom;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/security/SecureRandom;)[B
    .locals 1

    .prologue
    .line 74
    new-array v0, p1, [B

    .line 76
    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 78
    return-object v0
.end method

.method protected a(Ljava/math/BigInteger;I)[B
    .locals 5

    .prologue
    .line 396
    invoke-static {p1}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 398
    array-length v0, v1

    if-ge v0, p2, :cond_0

    .line 400
    new-array v0, p2, [B

    .line 401
    const/4 v2, 0x0

    array-length v3, v1

    sub-int v3, p2, v3

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p2, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p2, p3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p5, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 315
    invoke-static {p2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 316
    invoke-static {p3}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 317
    invoke-static {p4}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 319
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 343
    invoke-static {p2}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 344
    invoke-static {p3}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 345
    invoke-static {p4}, Lcom/hpplay/sdk/source/protocol/b/a;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 347
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/security/MessageDigest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 372
    invoke-virtual {p0, p3, v0}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 374
    invoke-virtual {p0, p4, v0}, Lcom/hpplay/sdk/source/protocol/b/h;->a(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 376
    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 377
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 379
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/b/a;->a([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
