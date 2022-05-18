.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private array:[B

.field private pos:I

.field private saved_pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->saved_pos:I

    .line 14
    return-void
.end method

.method private check(JI)V
    .locals 5

    .prologue
    .line 25
    const-wide/16 v0, 0x1

    .line 26
    shl-long/2addr v0, p3

    .line 27
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    return-void
.end method

.method private need(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    array-length v0, v0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 37
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 38
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/2addr v0, p1

    .line 39
    :cond_1
    new-array v0, v0, [B

    .line 40
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    goto :goto_0
.end method


# virtual methods
.method public current()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    if-le p1, v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    .line 49
    return-void
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->saved_pos:I

    if-gez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->saved_pos:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->saved_pos:I

    .line 63
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->saved_pos:I

    .line 55
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    new-array v0, v0, [B

    .line 123
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-object v0
.end method

.method public writeByteArray([B)V
    .locals 2

    .prologue
    .line 107
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([BII)V

    .line 108
    return-void
.end method

.method public writeByteArray([BII)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->need(I)V

    .line 102
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    .line 104
    return-void
.end method

.method public writeCountedString([B)V
    .locals 3

    .prologue
    .line 111
    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid counted string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->need(I)V

    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    array-length v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([BII)V

    .line 117
    return-void
.end method

.method public writeU16(I)V
    .locals 3

    .prologue
    .line 74
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->check(JI)V

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->need(I)V

    .line 76
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    return-void
.end method

.method public writeU16At(II)V
    .locals 3

    .prologue
    .line 81
    int-to-long v0, p1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->check(JI)V

    .line 82
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v0, v0, -0x2

    if-le p2, v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot write past end of data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    add-int/lit8 v1, p2, 0x1

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, p2

    .line 86
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 87
    return-void
.end method

.method public writeU32(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0xff

    .line 92
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->check(JI)V

    .line 93
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->need(I)V

    .line 94
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    const/16 v2, 0x8

    ushr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    return-void
.end method

.method public writeU8(I)V
    .locals 3

    .prologue
    .line 68
    int-to-long v0, p1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->check(JI)V

    .line 69
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->need(I)V

    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    return-void
.end method
