.class public Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC$IncompatibleKeyException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncompatibleKeyException"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 714
    const-string v0, "incompatible keys"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 715
    return-void
.end method
