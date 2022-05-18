.class Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;
.super Ljava/lang/Object;
.source "SearchAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checktime:I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

.field time:J

.field final synthetic val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$findView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 2
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->val$findView:Landroid/view/View;

    iput-object p3, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->time:J

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->checktime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x5

    .line 273
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->checktime:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->access$600(Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    :cond_0
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->checktime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->checktime:I

    .line 275
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->val$findView:Landroid/view/View;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$700(Lcom/huanju/ssp/sdk/normal/SearchAd;Landroid/view/View;F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SearchAd;->access$800(Lcom/huanju/ssp/sdk/normal/SearchAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u6ca1\u6709\u5c55\u73b0\u6210\u529f,aduid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getAdUUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    iput-object v2, v1, Lcom/huanju/ssp/sdk/normal/SearchAd;->mErrImpUrl:Ljava/lang/String;

    .line 281
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-virtual {v1, v0, v6}, Lcom/huanju/ssp/sdk/normal/SearchAd;->onAdError(Ljava/lang/String;I)V

    goto :goto_0

    .line 285
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, 0x1f4

    invoke-static {p0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 290
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u5c55\u73b0\u5931\u8d25,aduid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    invoke-virtual {v2}, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->getAdUUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .restart local v0    # "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse$1;->this$1:Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/SearchAd$SearcheResponse;->this$0:Lcom/huanju/ssp/sdk/normal/SearchAd;

    invoke-virtual {v1, v0, v6}, Lcom/huanju/ssp/sdk/normal/SearchAd;->onAdError(Ljava/lang/String;I)V

    goto :goto_0
.end method
