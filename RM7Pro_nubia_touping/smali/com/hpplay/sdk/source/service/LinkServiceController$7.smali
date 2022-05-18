.class Lcom/hpplay/sdk/source/service/LinkServiceController$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/process/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/service/LinkServiceController;->b(I)V
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
    .line 259
    iput-object p1, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$7;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLelinkServiceInfoCallback(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 2

    .prologue
    .line 262
    const-string v0, "LinkServiceController"

    const-string v1, "===onLelinkServiceInfoCallback===="

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$7;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->e(Lcom/hpplay/sdk/source/service/LinkServiceController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$7;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-static {v0, p1}, Lcom/hpplay/sdk/source/service/LinkServiceController;->a(Lcom/hpplay/sdk/source/service/LinkServiceController;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 265
    iget-object v0, p0, Lcom/hpplay/sdk/source/service/LinkServiceController$7;->a:Lcom/hpplay/sdk/source/service/LinkServiceController;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/service/LinkServiceController;->c()V

    .line 266
    return-void
.end method
