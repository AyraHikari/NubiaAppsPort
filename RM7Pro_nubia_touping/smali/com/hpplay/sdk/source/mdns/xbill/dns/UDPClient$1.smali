.class final Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->access$000()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/hpplay/sdk/source/mdns/xbill/dns/UDPClient;->access$102(Z)Z

    .line 153
    return-void
.end method
