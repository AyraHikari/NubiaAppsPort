.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3a3299cda79a9f63L


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;->data:[B

    return-object v0
.end method

.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "invalid unknown RR encoding"

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;->exception(Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;->data:[B

    .line 20
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;->data:[B

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;->unknownToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/UNKRecord;->data:[B

    invoke-virtual {p1, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;->writeByteArray([B)V

    .line 37
    return-void
.end method
