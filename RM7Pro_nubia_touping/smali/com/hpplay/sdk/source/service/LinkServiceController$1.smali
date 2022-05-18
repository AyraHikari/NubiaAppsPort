.class Lcom/hpplay/sdk/source/service/LinkServiceController$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/LinkServiceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/LinkServiceController;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/LinkServiceController;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->b(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v1

    const v2, 0x33c2a

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, v3}, Lcom/hpplay/sdk/source/api/IConnectListener;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 46
    invoke-static {}, Lcom/hpplay/sdk/source/process/e;->a()Lcom/hpplay/sdk/source/process/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/e;->b()V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c(Lcom/hpplay/sdk/source/service/LinkServiceController;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c(Lcom/hpplay/sdk/source/service/LinkServiceController;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$1;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->b()V

    .line 56
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
