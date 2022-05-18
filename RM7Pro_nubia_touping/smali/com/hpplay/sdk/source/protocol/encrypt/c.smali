.class public Lcom/hpplay/sdk/source/protocol/encrypt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x100

.field static final b:Ljava/math/BigInteger;

.field static final c:Ljava/math/BigInteger;

.field static final d:Ljava/math/BigInteger;

.field static final e:Ljava/math/BigInteger;

.field static final f:Ljava/math/BigInteger;

.field static final g:Ljava/math/BigInteger;

.field static final h:[Ljava/math/BigInteger;

.field static final i:Ljava/math/BigInteger;

.field static final j:Ljava/math/BigInteger;

.field private static final k:Ljava/lang/String; = "ED25519"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "57896044618658097711785492504343953926634992332820282019728792003956564819949"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    .line 21
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "57896044618658097711785492504343953926634992332820282019728792003956564819947"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c:Ljava/math/BigInteger;

    .line 23
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7237005577332262213973186563042994240829374041602535252466099000494570602494"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->d:Ljava/math/BigInteger;

    .line 24
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7237005577332262213973186563042994240857116359379907606001950938285454250989"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->e:Ljava/math/BigInteger;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "-4513249062541557337682894930092624173785641285191125241628941591882900924598840740"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->f:Ljava/math/BigInteger;

    .line 26
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "19681161376707505956807079304988542015446066515923890162744021073123829784752"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->g:Ljava/math/BigInteger;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "15112221349535400772501151409588531511454012693041857206046113283949847762202"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "46316835694926478169428394003475163141307993866256225615783033603165251855960"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->h:[Ljava/math/BigInteger;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "57896044618658097711785492504343953926634992332820282019728792003956564819967"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->i:Ljava/math/BigInteger;

    .line 35
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)I
    .locals 2

    .prologue
    .line 183
    div-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    rem-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static a(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 133
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c:Ljava/math/BigInteger;

    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 134
    sget-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->d:Ljava/math/BigInteger;

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 135
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 136
    :cond_0
    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 137
    :cond_1
    return-object v0
.end method

.method public static a([B)[B
    .locals 7

    .prologue
    const/16 v6, 0xfe

    .line 45
    invoke-static {p0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b([B)[B

    move-result-object v2

    .line 46
    sget-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 47
    const/4 v0, 0x3

    :goto_0
    if-ge v0, v6, :cond_0

    .line 48
    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([BI)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->h:[Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B[B)[B
    .locals 8

    .prologue
    const/16 v7, 0xfe

    const/16 v6, 0x20

    .line 64
    invoke-static {p1}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b([B)[B

    move-result-object v2

    .line 65
    sget-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 66
    const/4 v0, 0x3

    :goto_0
    if-ge v0, v7, :cond_0

    .line 67
    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([BI)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2, v6, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 72
    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->h:[Ljava/math/BigInteger;

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 73
    array-length v3, p2

    add-int/lit8 v3, v3, 0x20

    array-length v4, p0

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 74
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c([B)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 77
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/math/BigInteger;)[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 175
    aget-object v1, p0, v0

    .line 176
    const/4 v2, 0x1

    aget-object v2, p0, v2

    .line 177
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b(Ljava/math/BigInteger;)[B

    move-result-object v2

    .line 178
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, v2, v3

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x80

    :cond_0
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 179
    return-object v2
.end method

.method private static a([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    .line 154
    invoke-static {v0, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 155
    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v3, v0

    move-object v0, v1

    move v1, v3

    .line 158
    :goto_0
    if-ltz v1, :cond_1

    .line 159
    invoke-static {v0, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 160
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 158
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    :cond_1
    return-object v0
.end method

.method private static a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 141
    aget-object v0, p0, v9

    .line 142
    aget-object v1, p0, v10

    .line 143
    aget-object v2, p1, v9

    .line 144
    aget-object v3, p1, v10

    .line 145
    sget-object v4, Lcom/hpplay/sdk/source/protocol/encrypt/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 146
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sget-object v7, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c:Ljava/math/BigInteger;

    sget-object v8, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v6, v7, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 147
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c:Ljava/math/BigInteger;

    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 148
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/math/BigInteger;

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aput-object v2, v1, v9

    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, v1, v10

    return-object v1
.end method

.method public static b([B[B[B)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 90
    array-length v2, p0

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    array-length v2, p2

    if-ne v2, v5, :cond_0

    .line 92
    new-array v2, v5, [B

    .line 93
    invoke-static {p0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    :try_start_0
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->e([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 98
    invoke-static {p2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->e([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 102
    new-array v4, v5, [B

    .line 103
    invoke-static {p0, v5, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    invoke-static {v4}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->d([B)Ljava/math/BigInteger;

    move-result-object v4

    .line 105
    array-length v5, p2

    add-int/lit8 v5, v5, 0x20

    array-length v6, p1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 106
    invoke-static {v2}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->c([B)Ljava/math/BigInteger;

    move-result-object v5

    .line 108
    sget-object v6, Lcom/hpplay/sdk/source/protocol/encrypt/c;->h:[Ljava/math/BigInteger;

    invoke-static {v6, v4}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 109
    invoke-static {v3, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 110
    aget-object v3, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v4, v0

    aget-object v2, v2, v0

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b([Ljava/math/BigInteger;)Z
    .locals 3

    .prologue
    .line 196
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 197
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 198
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 199
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 200
    sget-object v2, Lcom/hpplay/sdk/source/protocol/encrypt/c;->f:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 201
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/math/BigInteger;)[B
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 167
    array-length v0, v1

    new-array v2, v0, [B

    .line 168
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 169
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, v1, v3

    aput-byte v3, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-object v2
.end method

.method public static b([B)[B
    .locals 2

    .prologue
    .line 121
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 123
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "ED25519"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c([B)Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 187
    invoke-static {p0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b([B)[B

    move-result-object v2

    .line 188
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 189
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x200

    if-ge v0, v3, :cond_0

    .line 190
    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->j:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([BI)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-object v1
.end method

.method private static d([B)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 205
    array-length v0, p0

    new-array v1, v0, [B

    .line 206
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 207
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v1, Lcom/hpplay/sdk/source/protocol/encrypt/c;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static e([B)[Ljava/math/BigInteger;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    array-length v0, p0

    new-array v3, v0, [B

    move v0, v1

    .line 214
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 215
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v3, Lcom/hpplay/sdk/source/protocol/encrypt/c;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 218
    invoke-static {v4}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    const/16 v5, 0xff

    invoke-static {p0, v5}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->a([BI)I

    move-result v5

    if-eq v0, v5, :cond_3

    .line 220
    sget-object v0, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 222
    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    aput-object v0, v3, v1

    aput-object v4, v3, v2

    .line 223
    invoke-static {v3}, Lcom/hpplay/sdk/source/protocol/encrypt/c;->b([Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "decoding point that is not on curve"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_1

    .line 224
    :cond_2
    return-object v3

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method
