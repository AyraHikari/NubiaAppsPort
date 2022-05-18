.class abstract Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x347fcbd9f839945L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;-><init>()V

    .line 11
    return-void
.end method

.method protected constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleNameBase;-><init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;IIJLcom/hpplay/sdk/source/mdns/xbill/dns/Name;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method rrToWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/xbill/dns/SingleCompressedNameBase;->singleName:Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;

    invoke-virtual {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/mdns/xbill/dns/Name;->toWire(Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSOutput;Lcom/hpplay/sdk/source/mdns/xbill/dns/Compression;Z)V

    .line 19
    return-void
.end method
