.class public Lcom/hpplay/sdk/source/mdns/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private id:Ljava/lang/Object;

.field private message:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->id:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->message:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 14
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->exception:Ljava/lang/Exception;

    .line 22
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Response;->id:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/Response;->message:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->id:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->message:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    .line 14
    iput-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->exception:Ljava/lang/Exception;

    .line 17
    iput-object p1, p0, Lcom/hpplay/sdk/source/mdns/Response;->id:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, Lcom/hpplay/sdk/source/mdns/Response;->exception:Ljava/lang/Exception;

    .line 19
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getID()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->message:Lcom/hpplay/sdk/source/mdns/xbill/dns/Message;

    return-object v0
.end method

.method public inError()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hpplay/sdk/source/mdns/Response;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
