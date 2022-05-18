.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x56cc86868403f582L


# instance fields
.field private options:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .prologue
    .line 38
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 39
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .prologue
    .line 34
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 35
    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;)V
    .locals 6

    .prologue
    .line 23
    sget-object v1, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->root:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    const/16 v2, 0x29

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 24
    const-string v0, "payloadSize"

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 25
    const-string v0, "xrcode"

    invoke-static {v0, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 26
    const-string v0, "version"

    invoke-static {v0, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->checkU8(Ljava/lang/String;I)I

    .line 27
    const-string v0, "flags"

    invoke-static {v0, p4}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->checkU16(Ljava/lang/String;I)I

    .line 28
    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    int-to-long v2, p4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    .line 29
    if-eqz p5, :cond_0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    check-cast p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    iget-wide v2, p1, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtendedRcode()I
    .locals 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;-><init>()V

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_0

    .line 100
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptions(I)Ljava/util/List;
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_1

    .line 107
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 120
    :cond_0
    return-object v1

    .line 108
    :cond_1
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    .line 114
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->getCode()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 115
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v1, v3, :cond_3

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->dclass:I

    return v0
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->ttl:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 53
    const-string v0, "no text format defined for OPT"

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    .line 46
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 47
    invoke-static {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->fromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_0
    const-string v1, " ; payload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, ", xrcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getExtendedRcode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, ", version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, ", flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;

    .line 93
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EDNSOption;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;)V

    goto :goto_0
.end method
