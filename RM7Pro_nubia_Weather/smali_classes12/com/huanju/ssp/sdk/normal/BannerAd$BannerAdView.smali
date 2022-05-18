.class public final Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BannerAdView"
.end annotation


# instance fields
.field private SCAL_HEIGHT:D

.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/BannerAd;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/BannerAd;
    .param p2, "cx"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;-><init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Landroid/content/Context;)V

    .line 167
    const-wide v0, 0x3fc47ae147ae147bL    # 0.16

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->SCAL_HEIGHT:D

    .line 171
    return-void
.end method

.method static synthetic access$400(Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;Ljava/lang/Double;)V
    .locals 0
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;
    .param p1, "x1"    # Ljava/lang/Double;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->setScale(Ljava/lang/Double;)V

    return-void
.end method

.method private setScale(Ljava/lang/Double;)V
    .locals 2
    .param p1, "d"    # Ljava/lang/Double;

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->SCAL_HEIGHT:D

    .line 216
    return-void
.end method


# virtual methods
.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0x8

    .line 187
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$600(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->getSmartSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v3}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->getSmartSize(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->drawCloseView(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 190
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->getSmartSize(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->getSmartSize(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->drawAdMark(Landroid/graphics/Canvas;II)V

    .line 191
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->drawLogo(Landroid/graphics/Canvas;F)V

    .line 192
    return-void
.end method

.method public getViewSize()[I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->screenSizes:[I

    aget v1, v1, v3

    aput v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->screenSizes:[I

    aget v2, v2, v3

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->SCAL_HEIGHT:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->onAttachedToWindow()V

    .line 198
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$700(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->loadAndShowAd()V

    .line 201
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$800(Lcom/huanju/ssp/sdk/normal/BannerAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$500(Lcom/huanju/ssp/sdk/normal/BannerAd;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    invoke-super {p0}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;->onDetachedFromWindow()V

    .line 211
    :cond_0
    return-void
.end method

.method public recycleBannerView()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->access$500(Lcom/huanju/ssp/sdk/normal/BannerAd;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->this$0:Lcom/huanju/ssp/sdk/normal/BannerAd;

    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/normal/BannerAd;->removeadSlotId()V

    .line 181
    invoke-virtual {p0}, Lcom/huanju/ssp/sdk/normal/BannerAd$BannerAdView;->recycleView()V

    .line 182
    return-void
.end method
