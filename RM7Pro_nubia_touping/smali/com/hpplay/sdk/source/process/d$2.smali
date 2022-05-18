.class Lcom/hpplay/sdk/source/process/d$2;
.super Lcom/hpplay/sdk/source/d$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/hpplay/sdk/source/process/d;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/d;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/d$2;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$2;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->b(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$2;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->b(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/IConnectListener;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V

    .line 218
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$2;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->b(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/d$2;->c:Lcom/hpplay/sdk/source/process/d;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/d;->b(Lcom/hpplay/sdk/source/process/d;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 225
    :cond_0
    return-void
.end method
