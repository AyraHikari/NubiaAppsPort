.class Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;
.super Ljava/lang/Object;
.source "AbstractAd.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 689
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v3, :cond_1

    .line 742
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 692
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 694
    :pswitch_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    .line 695
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    goto :goto_0

    .line 700
    :pswitch_2
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    .line 701
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    .line 702
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$400(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$400(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$400(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u70b9\u51fb\u4e86\u5173\u95ed\u6309\u94ae,canClose:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v3, v3, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v1, v1, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    if-eqz v1, :cond_2

    .line 705
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v1, v6}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->closeView(I)V

    .line 706
    new-instance v0, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->campaign_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->adSlotId:Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v0, v1, v3, v6, v4}, Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 708
    .local v0, "parameter":Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;
    new-instance v1, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;

    new-instance v3, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;

    invoke-direct {v3}, Lcom/huanju/ssp/base/core/report/error/ErrorInfo;-><init>()V

    new-instance v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2$1;

    invoke-direct {v4, p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2$1;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;)V

    invoke-direct {v1, v0, v3, v4}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;-><init>(Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;Lcom/huanju/ssp/base/core/report/error/ErrorInfo;Lcom/huanju/ssp/base/core/frame/listeners/AdCloseListener;)V

    .line 718
    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/request/ad/CloseAdSendProcessor;->process()V

    .end local v0    # "parameter":Lcom/huanju/ssp/base/core/request/ad/bean/AdCloseParameter;
    :cond_2
    move v1, v2

    .line 720
    goto/16 :goto_0

    .line 721
    :cond_3
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$500(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$500(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->down_y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    invoke-static {v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->access$500(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v5, v5, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v5, v5, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->up_y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 722
    const-string v3, "\u70b9\u51fb\u4e86\u8df3\u8f6c\u533a\u57df"

    invoke-static {v3}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isFastDoubleClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 726
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v3, :cond_0

    .line 729
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v4}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$000(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v5}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 730
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v3, v4, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 732
    :cond_4
    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iput-boolean v2, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mIsSspClick:Z

    .line 733
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v3, v3, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->onClickAd(I)V

    .line 735
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;->this$1:Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v3, v3, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v2, v3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto/16 :goto_0

    .line 692
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
