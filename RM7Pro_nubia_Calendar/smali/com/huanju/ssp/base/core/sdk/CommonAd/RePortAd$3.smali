.class Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;
.super Ljava/lang/Object;
.source "RePortAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->getDownloadUrl(Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

.field final synthetic val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;->val$listener:Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd$3;->this$0:Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;->access$100(Lcom/huanju/ssp/base/core/sdk/CommonAd/RePortAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->dl_url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/request/ad/listener/IGetDownLoadUrlListener;->onReceive(Ljava/lang/String;)V

    .line 440
    return-void
.end method
