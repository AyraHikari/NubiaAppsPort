.class Lcom/hpplay/sdk/source/process/LelinkSdkService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/browse/api/IParceResultListener;


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
    .line 428
    iput-object p1, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$3;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$3;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->c(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/LelinkSdkService$3;->a:Lcom/hpplay/sdk/source/process/LelinkSdkService;

    invoke-static {v0}, Lcom/hpplay/sdk/source/process/LelinkSdkService;->c(Lcom/hpplay/sdk/source/process/LelinkSdkService;)Lcom/hpplay/sdk/source/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/k;->onParceResult(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    const-string v1, "LelinkSdkService"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
