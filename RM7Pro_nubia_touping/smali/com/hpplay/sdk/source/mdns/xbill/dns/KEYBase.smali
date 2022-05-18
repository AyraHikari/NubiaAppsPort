.class abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x302581b9bcadf64eL


# instance fields
.field protected alg:I

.field protected flags:I

.field protected footprint:I

.field protected key:[B

.field protected proto:I

.field protected publicKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJIII[B)V
    .locals 2

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 24
    const-string v0, "flags"

    invoke-static {v0, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->flags:I

    .line 25
    const-string v0, "proto"

    invoke-static {v0, p7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->proto:I

    .line 26
    const-string v0, "alg"

    invoke-static {v0, p8}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    .line 27
    iput-object p9, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    .line 28
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->flags:I

    return v0
.end method

.method public getFootprint()I
    .locals 6

    .prologue
    const v5, 0xffff

    const/4 v0, 0x0

    .line 76
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    if-ltz v1, :cond_0

    .line 77
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    .line 101
    :goto_0
    return v0

    .line 79
    :cond_0
    new-instance v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;

    invoke-direct {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;-><init>()V

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 81
    invoke-virtual {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->toByteArray()[B

    move-result-object v2

    .line 82
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 83
    array-length v0, v2

    add-int/lit8 v0, v0, -0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 84
    array-length v1, v2

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 85
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    .line 100
    :goto_1
    and-int/2addr v0, v5

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    .line 101
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->footprint:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 88
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 89
    aget-byte v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    .line 90
    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    .line 91
    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 88
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 94
    :cond_2
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 95
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 96
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    .line 98
    :cond_3
    shr-int/lit8 v0, v1, 0x10

    and-int/2addr v0, v5

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->proto:I

    return v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 110
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;->toPublicKey(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->publicKey:Ljava/security/PublicKey;

    goto :goto_0
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->flags:I

    .line 33
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->proto:I

    .line 34
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    .line 35
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    .line 37
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 42
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->proto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 46
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const-string v1, " (\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, " ; key_tag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->getFootprint()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->flags:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 116
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->proto:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 117
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->alg:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 118
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->key:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 120
    :cond_0
    return-void
.end method
