.class public Lcom/hpplay/sdk/source/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x4

.field public static final d:I = 0x8

.field public static final e:I = 0xff

.field protected static final f:[B

.field private static final g:Ljava/lang/String; = "BruteForceCoding"

.field private static h:B

.field private static i:S

.field private static j:I

.field private static k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const/16 v0, 0x65

    sput-byte v0, Lcom/hpplay/sdk/source/a/b;->h:B

    .line 8
    const/16 v0, 0x2711

    sput-short v0, Lcom/hpplay/sdk/source/a/b;->i:S

    .line 9
    const v0, 0x5f5e101

    sput v0, Lcom/hpplay/sdk/source/a/b;->j:I

    .line 10
    const-wide v0, 0xe8d4a51001L

    sput-wide v0, Lcom/hpplay/sdk/source/a/b;->k:J

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/hpplay/sdk/source/a/b;->f:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BJII)I
    .locals 5

    .prologue
    .line 29
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 30
    add-int/lit8 v1, p3, 0x1

    sub-int v2, p4, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, p3

    .line 29
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_0

    .line 32
    :cond_0
    return p3
.end method

.method public static a([BII)J
    .locals 8

    .prologue
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 39
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-wide v2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 22
    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 101
    const/16 v0, 0xf

    new-array v0, v0, [B

    .line 103
    sget-byte v1, Lcom/hpplay/sdk/source/a/b;->h:B

    int-to-long v2, v1

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1, v6}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v1

    .line 104
    sget-short v2, Lcom/hpplay/sdk/source/a/b;->i:S

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1, v4}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v1

    .line 105
    sget v2, Lcom/hpplay/sdk/source/a/b;->j:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v1, v7}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    move-result v1

    .line 106
    sget-wide v2, Lcom/hpplay/sdk/source/a/b;->k:J

    invoke-static {v0, v2, v3, v1, v8}, Lcom/hpplay/sdk/source/a/b;->a([BJII)I

    .line 107
    const-string v1, "BruteForceCoding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoded message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/hpplay/sdk/source/a/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v0, v6, v4}, Lcom/hpplay/sdk/source/a/b;->a([BII)J

    move-result-wide v2

    .line 111
    const-string v1, "BruteForceCoding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded short = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x7

    invoke-static {v0, v1, v8}, Lcom/hpplay/sdk/source/a/b;->a([BII)J

    move-result-wide v2

    .line 113
    const-string v1, "BruteForceCoding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded long = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {v0, v7, v6}, Lcom/hpplay/sdk/source/a/b;->a([BII)J

    move-result-wide v2

    .line 118
    const-string v1, "BruteForceCoding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded value (offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0, v7, v6}, Lcom/hpplay/sdk/source/a/b;->a([BII)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 120
    const-string v1, "BruteForceCoding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Same value as byte = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static a([BI)[B
    .locals 3

    .prologue
    .line 78
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-array v0, p1, [B

    .line 82
    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/hpplay/sdk/source/a/b;->f:[B

    invoke-static {p0, p1, v0}, Lcom/hpplay/sdk/source/a/b;->a([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 66
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    return-object v0
.end method

.method public static b([BII)[B
    .locals 2

    .prologue
    .line 92
    array-length v0, p0

    if-ge v0, p2, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    new-array v0, p2, [B

    .line 96
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
