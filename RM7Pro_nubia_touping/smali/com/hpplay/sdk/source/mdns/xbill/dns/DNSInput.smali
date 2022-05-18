.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private array:[B

.field private end:I

.field private pos:I

.field private saved_end:I

.field private saved_pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 13
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 14
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_pos:I

    .line 15
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_end:I

    .line 16
    return-void
.end method

.method private require(I)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public clearActive()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 45
    return-void
.end method

.method public current()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 65
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 66
    return-void
.end method

.method public readByteArray([BII)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 114
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 116
    return-void
.end method

.method public readByteArray()[B
    .locals 5

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    .line 129
    new-array v1, v0, [B

    .line 130
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 132
    return-object v1
.end method

.method public readByteArray(I)[B
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 121
    new-array v0, p1, [B

    .line 122
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 124
    return-object v0
.end method

.method public readCountedString()[B
    .locals 3

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 138
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 139
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readU16()I
    .locals 4

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 96
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 97
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 98
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public readU32()J
    .locals 6

    .prologue
    .line 103
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 104
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 105
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 106
    iget-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 107
    iget-object v3, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v4, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 108
    int-to-long v4, v0

    const/16 v0, 0x18

    shl-long/2addr v4, v0

    shl-int/lit8 v0, v1, 0x10

    int-to-long v0, v0

    add-long/2addr v0, v4

    shl-int/lit8 v2, v2, 0x8

    int-to-long v4, v2

    add-long/2addr v0, v4

    int-to-long v2, v3

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public readU8()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->require(I)V

    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public remaining()I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 76
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_pos:I

    if-gez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_pos:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    .line 80
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_end:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 81
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_pos:I

    .line 82
    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_end:I

    .line 83
    return-void
.end method

.method public restoreActive(I)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iput p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 56
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_pos:I

    .line 72
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->saved_end:I

    .line 73
    return-void
.end method

.method public saveActive()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    return v0
.end method

.method public setActive(I)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->array:[B

    array-length v0, v0

    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->end:I

    .line 39
    return-void
.end method
