.class public Lcom/mpatric/mp3agic/e;
.super Ljava/lang/Object;
.source "EncodedText.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[B

.field private static final c:[[B

.field private static final d:[[B


# instance fields
.field private e:[B

.field private f:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    .line 25
    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v4

    .line 26
    const-string v1, "UTF-16LE"

    aput-object v1, v0, v3

    .line 27
    const-string v1, "UTF-16BE"

    aput-object v1, v0, v2

    .line 28
    const-string v1, "UTF-8"

    aput-object v1, v0, v5

    .line 24
    sput-object v0, Lcom/mpatric/mp3agic/e;->a:[Ljava/lang/String;

    .line 31
    new-array v0, v6, [B

    aput-byte v2, v0, v3

    aput-byte v3, v0, v2

    aput-byte v5, v0, v5

    sput-object v0, Lcom/mpatric/mp3agic/e;->b:[B

    .line 33
    new-array v0, v6, [[B

    .line 34
    new-array v1, v4, [B

    aput-object v1, v0, v4

    .line 35
    new-array v1, v2, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    .line 36
    new-array v1, v2, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v2

    .line 37
    new-array v1, v4, [B

    aput-object v1, v0, v5

    .line 33
    sput-object v0, Lcom/mpatric/mp3agic/e;->c:[[B

    .line 40
    new-array v0, v6, [[B

    .line 41
    new-array v1, v3, [B

    aput-object v1, v0, v4

    .line 42
    new-array v1, v2, [B

    aput-object v1, v0, v3

    .line 43
    new-array v1, v2, [B

    aput-object v1, v0, v2

    .line 44
    new-array v1, v3, [B

    aput-object v1, v0, v5

    .line 40
    sput-object v0, Lcom/mpatric/mp3agic/e;->d:[[B

    .line 45
    return-void

    .line 35
    :array_0
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    .line 36
    nop

    :array_1
    .array-data 1
        -0x2t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(B[B)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    invoke-static {p2}, Lcom/mpatric/mp3agic/e;->a([B)B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 54
    iput-byte v1, p0, Lcom/mpatric/mp3agic/e;->f:B

    .line 59
    :goto_0
    iput-object p2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    .line 60
    invoke-direct {p0}, Lcom/mpatric/mp3agic/e;->a()V

    .line 61
    return-void

    .line 57
    :cond_0
    iput-byte p1, p0, Lcom/mpatric/mp3agic/e;->f:B

    goto :goto_0
.end method

.method private static a([B)B
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 91
    array-length v3, p0

    if-lt v3, v1, :cond_0

    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_0

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    array-length v3, p0

    if-lt v3, v1, :cond_1

    aget-byte v3, p0, v2

    if-ne v3, v4, :cond_1

    aget-byte v3, p0, v0

    if-ne v3, v5, :cond_1

    move v0, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    array-length v3, p0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    aget-byte v3, p0, v2

    const/16 v4, -0x11

    if-ne v3, v4, :cond_2

    aget-byte v0, p0, v0

    const/16 v3, -0x45

    if-ne v0, v3, :cond_2

    aget-byte v0, p0, v1

    const/16 v1, -0x41

    if-ne v0, v1, :cond_2

    .line 96
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 98
    goto :goto_0
.end method

.method private a(B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/e;->e:[B

    invoke-static {v0}, Lcom/mpatric/mp3agic/e;->b([B)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "GBK"

    .line 107
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/mpatric/mp3agic/e;->a:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid text encoding "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static a([BLjava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 272
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 138
    .line 139
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v2, v2

    if-lt v2, v0, :cond_4

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v3

    if-eq v2, v5, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v1

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_4

    .line 145
    :cond_1
    :goto_0
    sget-object v2, Lcom/mpatric/mp3agic/e;->d:[[B

    iget-byte v4, p0, Lcom/mpatric/mp3agic/e;->f:B

    aget-object v4, v2, v4

    .line 146
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    array-length v5, v4

    if-lt v2, v5, :cond_7

    move v2, v1

    .line 148
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_5

    move v2, v3

    .line 154
    :goto_2
    if-eqz v2, :cond_7

    array-length v2, v4

    .line 156
    :goto_3
    add-int v3, v0, v2

    if-lez v3, :cond_3

    .line 157
    iget-object v3, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    sub-int v2, v3, v2

    .line 158
    new-array v3, v2, [B

    .line 159
    if-lez v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v4, v3

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_2
    iput-object v3, p0, Lcom/mpatric/mp3agic/e;->e:[B

    .line 164
    :cond_3
    return-void

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v2, v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_8

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v1

    const/16 v4, -0x11

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v2, v2, v3

    const/16 v4, -0x45

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    aget-byte v0, v2, v0

    const/16 v2, -0x41

    if-ne v0, v2, :cond_8

    .line 142
    const/4 v0, 0x3

    goto :goto_0

    .line 149
    :cond_5
    iget-object v5, p0, Lcom/mpatric/mp3agic/e;->e:[B

    iget-object v6, p0, Lcom/mpatric/mp3agic/e;->e:[B

    array-length v6, v6

    array-length v7, v4

    sub-int/2addr v6, v7

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    aget-byte v6, v4, v2

    if-eq v5, v6, :cond_6

    move v2, v1

    .line 151
    goto :goto_2

    .line 148
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-static {p0, p1}, Lcom/mpatric/mp3agic/e;->a([BLjava/lang/String;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 265
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b([B)Z
    .locals 6

    .prologue
    const/16 v5, 0xfe

    const/4 v1, 0x0

    .line 115
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 119
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_2

    .line 134
    const/4 v1, 0x1

    goto :goto_0

    .line 120
    :cond_2
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 121
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_3

    .line 122
    add-int/lit8 v0, v0, 0x1

    .line 123
    goto :goto_1

    .line 125
    :cond_3
    add-int/lit8 v3, v0, 0x1

    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 127
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 128
    const/16 v4, 0x81

    if-lt v2, v4, :cond_0

    if-gt v2, v5, :cond_0

    const/16 v2, 0x40

    if-lt v3, v2, :cond_4

    const/16 v2, 0x7e

    if-le v3, v2, :cond_5

    :cond_4
    const/16 v2, 0x80

    if-lt v3, v2, :cond_0

    if-gt v3, v5, :cond_0

    .line 129
    :cond_5
    add-int/lit8 v0, v0, 0x2

    .line 130
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    if-ne p0, p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 250
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 252
    goto :goto_0

    .line 253
    :cond_3
    check-cast p1, Lcom/mpatric/mp3agic/e;

    .line 254
    iget-byte v2, p0, Lcom/mpatric/mp3agic/e;->f:B

    iget-byte v3, p1, Lcom/mpatric/mp3agic/e;->f:B

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 255
    goto :goto_0

    .line 256
    :cond_4
    iget-object v2, p0, Lcom/mpatric/mp3agic/e;->e:[B

    iget-object v3, p1, Lcom/mpatric/mp3agic/e;->e:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 257
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 238
    .line 240
    iget-byte v0, p0, Lcom/mpatric/mp3agic/e;->f:B

    add-int/lit8 v0, v0, 0x1f

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mpatric/mp3agic/e;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/mpatric/mp3agic/e;->e:[B

    iget-byte v1, p0, Lcom/mpatric/mp3agic/e;->f:B

    invoke-direct {p0, v1}, Lcom/mpatric/mp3agic/e;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mpatric/mp3agic/e;->b([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const/4 v0, 0x0

    goto :goto_0
.end method
