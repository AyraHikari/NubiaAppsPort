.class Lcom/hpplay/sdk/source/service/LinkServiceController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/service/LinkServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/service/LinkServiceController;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/service/LinkServiceController;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$2;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$2;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$2;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;)Lcom/hpplay/sdk/source/api/IConnectListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/IConnectListener;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V

    .line 75
    :cond_0
    return-void
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$2;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0, p3}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;I)V

    .line 80
    return-void
.end method
