.class public Lcom/hpplay/sdk/source/mdns/MessageInfos;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ids:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;",
            ">;"
        }
    .end annotation
.end field

.field message:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIds()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->ids:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getListener()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->listener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getMessage()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->message:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public setIds(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->ids:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method

.method public setListener(Lcom/hpplay/sdk/source/mdns/xbill/dns/ResolverListener;)V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->listener:Ljava/lang/ref/WeakReference;

    .line 32
    return-void
.end method

.method public setMessage(Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/MessageInfos;->message:Ljava/lang/ref/WeakReference;

    .line 24
    return-void
.end method
