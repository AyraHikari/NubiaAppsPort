.class public abstract Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;
.super Landroid/widget/FrameLayout;
.source "AbstractAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/sdk/AbstractAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractAdView"
.end annotation


# instance fields
.field private clkArea:Landroid/graphics/RectF;

.field private closeArea:Landroid/graphics/RectF;

.field public innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

.field public mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected screenSizes:[I

.field final synthetic this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;


# direct methods
.method protected constructor <init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 514
    iput-object p1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    .line 515
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 508
    invoke-static {v3}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Z)[I

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->screenSizes:[I

    .line 786
    new-instance v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$3;

    invoke-direct {v1, p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$3;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 516
    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v0

    .line 521
    .local v0, "viewSize":[I
    iget-object v1, p1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-interface {v1, p2, v2, v3}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->getAdInnerView(Landroid/content/Context;II)Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    move-result-object v1

    iput-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    .line 522
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    new-instance v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;

    invoke-direct {v2, p0, p1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$1;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;Lcom/huanju/ssp/base/core/sdk/AbstractAd;)V

    invoke-interface {v1, v2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->setOnDrawListener(Lcom/huanju/ssp/base/core/frame/listeners/AdInnerViewOnDrawListener;)V

    .line 529
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    return-void
.end method

.method static synthetic access$100(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->showCloseBtn()V

    return-void
.end method

.method static synthetic access$400(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->closeArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->clkArea:Landroid/graphics/RectF;

    return-object v0
.end method

.method private showCloseBtn()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 847
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawAdMark(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # I
    .param p3, "margin"    # I

    .prologue
    const/4 v8, 0x1

    .line 608
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    if-eq v0, v8, :cond_0

    .line 614
    const-string v2, ""

    .line 615
    .local v2, "content":Ljava/lang/String;
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 616
    const-string v2, "\u5e7f\u544a"

    .line 620
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    const/4 v1, 0x0

    .line 625
    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v5

    const/16 v6, 0x33

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 624
    invoke-interface/range {v0 .. v8}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZZ)Landroid/graphics/RectF;

    goto :goto_0

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_identify:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 618
    const-string v2, "\u63a8\u5e7f"

    goto :goto_1
.end method

.method protected drawClickView(Landroid/graphics/Canvas;ILjava/lang/String;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # I
    .param p3, "closeText"    # Ljava/lang/String;
    .param p4, "margin"    # I

    .prologue
    const/16 v3, 0x1e

    .line 588
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_region_restrict:I

    if-nez v0, :cond_1

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->clkArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_brand_pormotion:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 596
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "\u00d7"

    .line 597
    :goto_1
    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getSmartSize(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p4

    .line 596
    invoke-interface/range {v0 .. v6}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawAdClick(Landroid/graphics/Canvas;Ljava/lang/String;IIIZ)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->clkArea:Landroid/graphics/RectF;

    goto :goto_0

    :cond_2
    move-object v2, p3

    goto :goto_1

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "\u00d7"

    .line 600
    :goto_2
    invoke-virtual {p0, v3}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getSmartSize(I)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p4

    .line 599
    invoke-interface/range {v0 .. v6}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawAdClick(Landroid/graphics/Canvas;Ljava/lang/String;IIIZ)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->clkArea:Landroid/graphics/RectF;

    goto :goto_0

    :cond_4
    move-object v2, p3

    goto :goto_2
.end method

.method protected drawCloseView(Landroid/graphics/Canvas;ILjava/lang/String;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # I
    .param p3, "closeText"    # Ljava/lang/String;
    .param p4, "margin"    # I

    .prologue
    .line 573
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    if-nez v0, :cond_1

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->closeArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "\u00d7"

    :goto_1
    const/16 v1, 0xe

    .line 581
    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getSmartSize(I)I

    move-result v5

    const/16 v6, 0x35

    const/4 v7, 0x1

    move-object v1, p1

    move v3, p2

    move v4, p4

    .line 580
    invoke-interface/range {v0 .. v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZ)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->closeArea:Landroid/graphics/RectF;

    goto :goto_0

    :cond_2
    move-object v2, p3

    goto :goto_1
.end method

.method protected drawLogo(Landroid/graphics/Canvas;F)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scaleSize"    # F

    .prologue
    .line 639
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v0, p1, p2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawAdLogo(Landroid/graphics/Canvas;F)V

    .line 640
    return-void
.end method

.method protected drawProgressView(Landroid/graphics/Canvas;ILjava/lang/String;IJ)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # I
    .param p3, "closeText"    # Ljava/lang/String;
    .param p4, "margin"    # I
    .param p5, "progress"    # J

    .prologue
    .line 558
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    if-nez v0, :cond_1

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->closeArea:Landroid/graphics/RectF;

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "\u00d7"

    :goto_1
    const/4 v1, 0x2

    .line 566
    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getSmartSize(I)I

    move-result v5

    const/16 v6, 0x35

    long-to-int v7, p5

    move-object v1, p1

    move v3, p2

    move v4, p4

    .line 565
    invoke-interface/range {v0 .. v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawAdProccess(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->closeArea:Landroid/graphics/RectF;

    goto :goto_0

    :cond_2
    move-object v2, p3

    goto :goto_1
.end method

.method protected drawText(Landroid/graphics/Canvas;ILjava/lang/String;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "size"    # I
    .param p3, "closeText"    # Ljava/lang/String;
    .param p4, "margin"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getSmartSize(I)I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIIZ)Landroid/graphics/RectF;

    .line 633
    return-void
.end method

.method protected abstract drawView(Landroid/graphics/Canvas;)V
.end method

.method public getErrImpTime()[J
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->getErrImpTiem()[J

    move-result-object v0

    return-object v0
.end method

.method protected getSmartSize(I)I
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->screenSizes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4084000000000000L    # 640.0

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public abstract getViewSize()[I
.end method

.method public isAttachToWindow()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v0, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->mAttach:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->mAttach:Z

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onAttachedToWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 770
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 771
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 852
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    sget-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->closeView(I)V

    goto :goto_0

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->ad_type:I

    sget-object v1, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->SPLASH:Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/common/ConstantPool$AdType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_region_restrict:I

    if-nez v0, :cond_0

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-static {v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->access$000(Lcom/huanju/ssp/base/core/sdk/AbstractAd;)Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->isViewCovered(Landroid/view/View;F)Z

    move-result v0

    if-nez v0, :cond_4

    .line 867
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->reportTracker(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;I)V

    .line 870
    :cond_4
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v0, v0, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->interaction_type:I

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->onClickAd(I)V

    .line 872
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdController:Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    invoke-interface {v0, v1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdControl;->clickAd(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)V

    goto :goto_0
.end method

.method protected abstract onClickAd(I)V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 778
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbstractAd.this.hashCode    :    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->mAttach:Z

    .line 781
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->closeView(I)V

    .line 784
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 650
    const/4 v4, 0x0

    .line 651
    .local v4, "width":I
    const/4 v0, 0x0

    .line 652
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getViewSize()[I

    move-result-object v3

    .line 657
    .local v3, "viewSize":[I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 658
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 659
    .local v2, "specSize":I
    if-ne v1, v7, :cond_2

    .line 660
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int v4, v5, v2

    .line 669
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 670
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 671
    if-ne v1, v7, :cond_3

    .line 672
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int v0, v5, v2

    .line 677
    :cond_1
    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->setMeasuredDimension(II)V

    .line 678
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 679
    return-void

    .line 661
    :cond_2
    if-eqz v3, :cond_0

    .line 662
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v3, v6

    add-int v4, v5, v6

    .line 663
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 673
    :cond_3
    if-eqz v3, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v3, v6

    add-int v0, v5, v6

    .line 675
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1
.end method

.method protected recycleView()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v0}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->recycleView()V

    .line 879
    :cond_0
    return-void
.end method

.method renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    .locals 3
    .param p1, "ad"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->mPrepareListen:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {v1, v2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->setPrepareListen(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 755
    iget-object v1, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v1, p1}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->renderAdView(Lcom/huanju/ssp/base/core/request/ad/bean/Ad;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 759
    :goto_0
    return v1

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, " \u6e32\u67d3\u5e7f\u544a\u5931\u8d25  Exception \u5982\u4e0b\uff1a"

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 759
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCloseBtnVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 894
    iget-object v0, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v0, v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iput-boolean p1, v0, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isCloseBtnVisible:Z

    .line 895
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 644
    invoke-super {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;

    invoke-direct {v0, p0}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView$2;-><init>(Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;)V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 745
    return-void
.end method

.method public showAdView()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 811
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v2, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v2, v2, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v2}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->showView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 812
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAdView mAdInfo.isDismiss:    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v4, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isDismiss:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",mAdInfo.isReady:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAdInfo:Lcom/huanju/ssp/base/core/sdk/AdInfo;

    iget-boolean v4, v4, Lcom/huanju/ssp/base/core/sdk/AdInfo;->isReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",innerView.showView():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->innerView:Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;

    invoke-interface {v4}, Lcom/huanju/ssp/base/core/frame/interfaces/IAdInnerView;->showView()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    move v2, v3

    .line 837
    :goto_0
    return v2

    .line 820
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getDisplayAnim()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "VISIBLE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mResId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",is_brand_pormotion:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v4, v4, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v4, v4, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_brand_pormotion:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->is_brand_pormotion:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    if-eq v2, v5, :cond_2

    .line 824
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mContextWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 825
    .local v1, "img":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 827
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    .end local v1    # "img":Landroid/widget/ImageView;
    :cond_2
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    iget-object v2, v2, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->mAd:Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    iget v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->creative_type:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    .line 830
    iget-object v2, p0, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->this$0:Lcom/huanju/ssp/base/core/sdk/AbstractAd;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd;->onAdViewShow()V

    .line 832
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/sdk/AbstractAd$AbstractAdView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 837
    goto/16 :goto_0
.end method
