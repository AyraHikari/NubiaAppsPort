.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x13b8e256a908e5aL


# instance fields
.field private alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private error:I

.field private fudge:I

.field private originalID:I

.field private other:[B

.field private signature:[B

.field private timeSigned:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/util/Date;I[BII[B)V
    .locals 9

    .prologue
    .line 27
    const/16 v4, 0xfa

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 28
    const-string v2, "alg"

    invoke-static {v2, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 29
    iput-object p6, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 30
    const-string v2, "fudge"

    move/from16 v0, p7

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->fudge:I

    .line 31
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    .line 32
    const-string v2, "originalID"

    move/from16 v0, p9

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->originalID:I

    .line 33
    const-string v2, "error"

    move/from16 v0, p10

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    .line 34
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    .line 35
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    return v0
.end method

.method public getFudge()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->fudge:I

    return v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;-><init>()V

    return-object v0
.end method

.method public getOriginalID()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->originalID:I

    return v0
.end method

.method public getOther()[B
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 58
    const-string v0, "no text format defined for TSIG"

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 40
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    int-to-long v0, v0

    .line 41
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v2

    .line 42
    const/16 v4, 0x20

    shl-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 43
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 44
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->fudge:I

    .line 45
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    .line 47
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->originalID:I

    .line 48
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    .line 49
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU16()I

    move-result v0

    .line 50
    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->fudge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 72
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    invoke-static {v1, v2, v3, v4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    if-nez v1, :cond_3

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    :goto_1
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "\n\n\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    :goto_2
    iget v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_6

    .line 91
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    array-length v1, v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    .line 92
    const-string v1, "<invalid BADTIME other data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 89
    :cond_4
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    const/16 v1, 0x28

    shl-long/2addr v2, v1

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    const/4 v4, 0x1

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    const/4 v4, 0x2

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    const/4 v4, 0x3

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    const/4 v4, 0x4

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 95
    const-string v1, "<server time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    new-instance v1, Ljava/util/Date;

    mul-long/2addr v2, v6

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 100
    :cond_6
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 6

    .prologue
    .line 139
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->alg:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 140
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 141
    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    .line 142
    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    .line 143
    invoke-virtual {p1, v2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 145
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->fudge:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 146
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->signature:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 148
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->originalID:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 149
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->error:I

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 150
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    .line 152
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/TSIGRecord;->other:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method
