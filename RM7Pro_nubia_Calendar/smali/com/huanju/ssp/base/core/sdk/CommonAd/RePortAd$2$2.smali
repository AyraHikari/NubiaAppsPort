.class Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;
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
    .line 396
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;->this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;->this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2$2;->this$1:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$2;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;->onReceive(Ljava/lang/String;)V

    .line 400
    return-void
.end method
