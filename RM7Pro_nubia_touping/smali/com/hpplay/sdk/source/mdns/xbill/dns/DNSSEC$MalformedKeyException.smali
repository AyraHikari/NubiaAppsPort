.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$MalformedKeyException;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedKeyException"
.end annotation


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;)V
    .locals 2

    .prologue
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/mdns/xbill/dns/KEYBase;->rdataToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 727
    return-void
.end method
