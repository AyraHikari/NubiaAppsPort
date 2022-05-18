.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->submitCheckViewTask(Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field checktime:I

.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

.field final synthetic val$findView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Landroid/view/View;Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V
    .locals 1
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->val$findView:Landroid/view/View;

    iput-object p3, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    const/4 v0, 0x0

    iput v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->checktime:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1461
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$2000(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1462
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->val$findView:Landroid/view/View;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2600(Lcom/huanju/ssp/sdk/normal/NativeAd;Landroid/view/View;F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1463
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$2700(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 1464
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-static {v1, v4}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->access$2002(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Z)Z

    .line 1487
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->checktime:I

    if-gt v1, v4, :cond_2

    .line 1468
    iget v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->checktime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->checktime:I

    .line 1469
    const-wide/16 v2, 0x1f4

    invoke-static {p0, v2, v3}, Lcom/huanju/ssp/base/utils/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1471
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u6ca1\u6709\u5c55\u73b0\u6210\u529f,aduid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    invoke-virtual {v2}, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->getAdUUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->val$adInfo:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->imperrors:Ljava/lang/String;

    iput-object v2, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mErrImpUrl:Ljava/lang/String;

    .line 1473
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$9;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    const/4 v2, -0x5

    invoke-virtual {v1, v0, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->onAdError(Ljava/lang/String;I)V

    goto :goto_0
.end method
