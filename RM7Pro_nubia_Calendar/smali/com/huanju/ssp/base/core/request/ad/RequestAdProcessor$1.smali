.class Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;
.super Ljava/lang/Object;
.source "RequestAdProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdLoadFailed(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

    iput-object p2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorMsg:Ljava/lang/String;

    iput p3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorCode:I

    iput-object p4, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadFailed errorMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoadFailed errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->this$0:Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorMsg:Ljava/lang/String;

    iget v2, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$errorCode:I

    iget-object v3, p0, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/huanju/ssp/base/core/request/ad/RequestAdProcessor;->onAdError(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    return-void
.end method
