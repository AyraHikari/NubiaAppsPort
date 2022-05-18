.class Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$1;
.super Ljava/lang/Object;
.source "RePortAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->onReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$1;->this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$1;->this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;->onReceive(Ljava/lang/String;)V

    .line 379
    return-void
.end method
