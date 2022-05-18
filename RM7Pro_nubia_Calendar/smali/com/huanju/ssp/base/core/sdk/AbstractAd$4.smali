.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd;->closeView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

.field final synthetic val$closeType:I


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iput p2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->val$closeType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeView  closeType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->val$closeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->val$closeType:I

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onCloseAd(I)V

    .line 495
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->val$closeType:I

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdClose(I)V

    .line 501
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$4;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    goto :goto_0
.end method
