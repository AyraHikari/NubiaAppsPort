.class Lcom/hpplay/sdk/source/process/LelinkSdkService$4;
.super Lcom/hpplay/sdk/source/api/IRelevantInfoListener;
.source "SourceFile"


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
    .line 441
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Lcom/hpplay/sdk/source/api/IRelevantInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReverseInfoResult(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/m;->onReverseInfoResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string v1, "LelinkSdkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSendRelevantInfoResult(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$4;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->d(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/m;->onSendRelevantInfoResult(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    const-string v1, "LelinkSdkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
