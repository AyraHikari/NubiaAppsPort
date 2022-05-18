.class Lcom/hpplay/sdk/source/process/LelinkSdkService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/api/IConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/process/LelinkSdkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/process/LelinkSdkService;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/process/LelinkSdkService;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/d;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v1, "LelinkSdkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$5;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->e(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/d;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/d;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    const-string v1, "LelinkSdkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
