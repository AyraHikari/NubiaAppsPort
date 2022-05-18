.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0xe916d0ebd70fa7bL


# instance fields
.field private admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private expire:J

.field private host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

.field private minimum:J

.field private refresh:J

.field private retry:J

.field private serial:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;JJJJJ)V
    .locals 9

    .prologue
    .line 23
    const/4 v4, 0x6

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJ)V

    .line 24
    const-string v2, "host"

    invoke-static {v2, p5}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 25
    const-string v2, "admin"

    invoke-static {v2, p6}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkName(Ljava/lang/String;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v2

    iput-object v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 26
    const-string v2, "serial"

    move-wide/from16 v0, p7

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    .line 27
    const-string v2, "refresh"

    move-wide/from16 v0, p9

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    .line 28
    const-string v2, "retry"

    move-wide/from16 v0, p11

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    .line 29
    const-string v2, "expire"

    move-wide/from16 v0, p13

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    .line 30
    const-string v2, "minimum"

    move-wide/from16 v0, p15

    invoke-static {v2, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->checkU32(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    .line 31
    return-void
.end method


# virtual methods
.method public getHost()Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    return-object v0
.end method

.method public getMinimum()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    return-wide v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;-><init>()V

    return-object v0
.end method

.method public getSerial()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    return-wide v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 47
    invoke-virtual {p1, p2}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getName(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 48
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    .line 49
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    .line 50
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    .line 51
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    .line 52
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->getTTLLike()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    .line 53
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 36
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-direct {v0, p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    .line 37
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    .line 38
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    .line 39
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    .line 40
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    .line 41
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    .line 42
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    iget-object v1, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 60
    const-string v1, "multiline"

    invoke-static {v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, " (\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "\t; serial\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 65
    const-string v1, "\t; refresh\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 67
    const-string v1, "\t; retry\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "\t; expire\n\t\t\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, " )\t; minimum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 75
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 77
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 79
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 81
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-wide v2, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->host:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 101
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->admin:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 102
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->serial:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 103
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->refresh:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 104
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->retry:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 105
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->expire:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 106
    iget-wide v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SOARecord;->minimum:J

    invoke-virtual {p1, v0, v1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeU32(J)V

    .line 107
    return-void
.end method
