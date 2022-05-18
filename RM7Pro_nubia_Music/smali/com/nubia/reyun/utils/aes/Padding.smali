.class public Lcom/nubia/reyun/utils/aes/Padding;
.super Ljava/lang/Object;
.source "Padding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static padLeft(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static padRight(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%1$-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pkcs5Padding(I[B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 11
    array-length v2, p1

    .line 12
    div-int/lit8 v1, p0, 0x8

    .line 13
    rem-int v3, v2, v1

    sub-int v3, v1, v3

    .line 15
    add-int v1, v2, v3

    new-array v4, v1, [B

    move v1, v0

    .line 17
    :goto_0
    if-lt v1, v2, :cond_0

    .line 21
    and-int/lit16 v1, v3, 0xff

    int-to-byte v1, v1

    .line 22
    :goto_1
    if-lt v0, v3, :cond_1

    .line 26
    return-object v4

    .line 18
    :cond_0
    aget-byte v5, p1, v1

    aput-byte v5, v4, v1

    .line 17
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    add-int v5, v0, v2

    aput-byte v1, v4, v5

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static spacePadding(I[B)[B
    .locals 3

    .prologue
    .line 42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 44
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 45
    :goto_0
    array-length v2, p1

    rem-int/2addr v2, p0

    if-nez v2, :cond_0

    .line 48
    return-object p1

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/nubia/reyun/utils/aes/Padding;->padRight(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0
.end method

.method public static zeroPadding(I[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    .line 31
    array-length v0, p1

    .line 32
    rem-int v1, v0, p0

    if-eqz v1, :cond_0

    .line 33
    rem-int v1, v0, p0

    sub-int v1, p0, v1

    add-int/2addr v0, v1

    .line 36
    :cond_0
    new-array v0, v0, [B

    .line 37
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-object p1
.end method
