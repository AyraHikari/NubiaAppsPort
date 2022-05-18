.class Lcom/hpplay/sdk/source/mdns/xbill/dns/EmptyRecord;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x31fc595b4c4aef8eL


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method getObject()Lcom/hpplay/sdk/source/mdns/xbill/dns/Record;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/hpplay/sdk/source/mdns/xbill/dns/EmptyRecord;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/EmptyRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lcom/hpplay/sdk/source/mdns/xbill/dns/Tokenizer;Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method rrFromWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSInput;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
