.class public Lcom/mpatric/mp3agic/c;
.super Ljava/lang/Object;
.source "BufferTools.java"


# direct methods
.method public static a(BBBB)I
    .locals 2

    .prologue
    .line 105
    and-int/lit16 v0, p3, 0xff

    .line 106
    const/4 v1, -0x8

    invoke-static {p2, v1}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    const/16 v1, -0x10

    invoke-static {p1, v1}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    const/16 v1, -0x18

    invoke-static {p0, v1}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    return v0
.end method

.method public static a([B)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 189
    move v1, v0

    .line 190
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-lt v0, v2, :cond_1

    .line 195
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p0, v0

    if-ne v0, v4, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 196
    :cond_0
    return v1

    .line 191
    :cond_1
    aget-byte v2, p0, v0

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit8 v2, v2, -0x20

    const/16 v3, -0x20

    if-eq v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    if-nez v2, :cond_3

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 190
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 59
    :goto_0
    if-gez v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 68
    :goto_1
    return-object p0

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 61
    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    :cond_2
    if-gez v0, :cond_3

    const-string p0, ""

    goto :goto_1

    .line 68
    :cond_3
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-static {p0, p1, p2, v0}, Lcom/mpatric/mp3agic/c;->a([BIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 13
    :goto_0
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    const-string v0, ""

    .line 23
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(BI)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(BBBB)I
    .locals 3

    .prologue
    .line 122
    and-int/lit8 v0, p3, 0x7f

    int-to-byte v0, v0

    .line 123
    and-int/lit8 v1, p2, 0x7f

    int-to-byte v1, v1

    const/4 v2, -0x7

    invoke-static {v1, v2}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    and-int/lit8 v1, p1, 0x7f

    int-to-byte v1, v1

    const/16 v2, -0xe

    invoke-static {v1, v2}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    and-int/lit8 v1, p0, 0x7f

    int-to-byte v1, v1

    const/16 v2, -0x15

    invoke-static {v1, v2}, Lcom/mpatric/mp3agic/c;->b(BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    return v0
.end method

.method public static b(BI)I
    .locals 2

    .prologue
    .line 95
    and-int/lit16 v0, p0, 0xff

    .line 96
    if-gez p1, :cond_1

    .line 97
    neg-int v1, p1

    shl-int/2addr v0, v1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    if-lez p1, :cond_0

    .line 99
    shr-int/2addr v0, p1

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-static {p0}, Lcom/mpatric/mp3agic/c;->a([B)I

    move-result v1

    .line 204
    if-nez v1, :cond_0

    .line 215
    :goto_0
    return-object p0

    .line 205
    :cond_0
    array-length v2, p0

    sub-int v1, v2, v1

    new-array v2, v1, [B

    move v1, v0

    .line 207
    :goto_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_1

    .line 214
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p0, v1

    aput-byte v1, v2, v0

    move-object p0, v2

    .line 215
    goto :goto_0

    .line 208
    :cond_1
    aget-byte v3, p0, v1

    aput-byte v3, v2, v0

    .line 209
    aget-byte v3, p0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, -0x20

    const/16 v4, -0x20

    if-eq v3, v4, :cond_2

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    if-nez v3, :cond_3

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 212
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b([BII)[B
    .locals 2

    .prologue
    .line 143
    new-array v0, p2, [B

    .line 144
    if-lez p2, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_0
    return-object v0
.end method
