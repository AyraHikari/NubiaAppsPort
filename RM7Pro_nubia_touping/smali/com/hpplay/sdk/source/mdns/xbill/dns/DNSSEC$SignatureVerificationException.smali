.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$SignatureVerificationException;
.super Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureVerificationException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 720
    const-string v0, "signature verification failed"

    invoke-direct {p0, v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 721
    return-void
.end method
