.class abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x33e19f5df1ec9a91L


# instance fields
.field protected alg:I

.field protected covered:I

.field protected expire:Ljava/util/Date;

.field protected footprint:I

.field protected labels:I

.field protected origttl:J

.field protected signature:[B

.field protected signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field protected timeSigned:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJIIJLjava/util/Date;Ljava/util/Date;ILcom/hpplay/sdk/source/mdns/xbill/dns/Name;[B)V
    .locals 4

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 21
    invoke-static {p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->check(I)V

    .line 22
    invoke-static {p8, p9}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TTL;->check(J)V

    .line 23
    iput p6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    .line 24
    const-string v1, "alg"

    invoke-static {v1, p7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->checkU8(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    .line 25
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->labels()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    .line 26
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->isWild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    .line 28
    :cond_0
    iput-wide p8, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    .line 29
    iput-object p10, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    .line 30
    iput-object p11, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    .line 31
    const-string v1, "footprint"

    move/from16 v0, p12

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->checkU16(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    .line 32
    const-string v1, "signer"

    move-object/from16 v0, p13

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v1

    iput-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 33
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    .line 34
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    return v0
.end method

.method public getExpire()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    return-object v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    return v0
.end method

.method public getLabels()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    return v0
.end method

.method public getOrigTTL()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    return-wide v0
.end method

.method public getSigner()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method public getTypeCovered()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    return v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    .line 53
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    if-gez v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$Algorithm;->value(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    .line 57
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    if-gez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    .line 61
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    .line 62
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    .line 63
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/FormattedTime;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    .line 64
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    .line 65
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 66
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getBase64()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    .line 67
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 38
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    .line 39
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    .line 40
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    .line 41
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    .line 44
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    .line 45
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 46
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    .line 47
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 137
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->covered:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 138
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->alg:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 139
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->labels:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU8(I)V

    .line 140
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->origttl:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 141
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->expire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 142
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 143
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->footprint:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 144
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signer:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 145
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 146
    return-void
.end method

.method setSignature([B)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SIGBase;->signature:[B

    .line 134
    return-void
.end method
