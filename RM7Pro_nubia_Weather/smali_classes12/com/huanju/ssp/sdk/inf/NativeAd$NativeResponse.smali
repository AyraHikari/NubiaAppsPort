.class public interface abstract Lcom/huanju/ssp/sdk/inf/NativeAd$NativeResponse;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeResponse"
.end annotation


# static fields
.field public static final BIG_IMAG:I = 0x3

.field public static final IMAGS:I = 0x1

.field public static final SMALL_IMAG:I = 0x2


# virtual methods
.method public abstract bdAdShow()V
.end method

.method public abstract bindKsDownloadListener(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
.end method

.method public varargs abstract bindingImgUrl([I)V
.end method

.method public abstract bindingSource(I)V
.end method

.method public abstract bindingSub_title(I)V
.end method

.method public abstract bindingTitle(I)V
.end method

.method public abstract closeClick(Landroid/view/View;ILjava/lang/String;)V
.end method

.method public abstract downloadClick(Landroid/view/View;IIII)V
.end method

.method public abstract getAdLogoUrl()Ljava/lang/String;
.end method

.method public abstract getAdNativeSource()Ljava/lang/String;
.end method

.method public abstract getAdSource()Ljava/lang/String;
.end method

.method public abstract getAdView()Landroid/view/View;
.end method

.method public abstract getBDResponse()Lcom/baidu/mobad/feeds/NativeResponse;
.end method

.method public abstract getBaiduLogoUrl()Ljava/lang/String;
.end method

.method public abstract getBrandName()Ljava/lang/String;
.end method

.method public abstract getDesc()Ljava/lang/String;
.end method

.method public abstract getDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/TTAdDislike;
.end method

.method public abstract getDownloadAppName()Ljava/lang/String;
.end method

.method public abstract getDownloadStatusController()Lcom/bytedance/sdk/openadsdk/DownloadStatusController;
.end method

.method public abstract getExpressAdView()Landroid/view/View;
.end method

.method public abstract getFilterWords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getH()I
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/TTImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getInteractionType()I
.end method

.method public abstract getKsNattivedAd()Lcom/kwad/sdk/api/KsNativeAd;
.end method

.method public abstract getMultiPicUrls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getSoftSrc()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getSspVideoImgUrl()Ljava/lang/String;
.end method

.method public abstract getSspVideoSrc()Ljava/lang/String;
.end method

.method public abstract getSspVideoSubTitle()Ljava/lang/String;
.end method

.method public abstract getSspVideoTitle()Ljava/lang/String;
.end method

.method public abstract getSspVideoUrl()Ljava/lang/String;
.end method

.method public abstract getSspVideoUrlMd5()Ljava/lang/String;
.end method

.method public abstract getSubTitle()Ljava/lang/String;
.end method

.method public abstract getTTFeedAd()Lcom/bytedance/sdk/openadsdk/TTFeedAd;
.end method

.method public abstract getTTIcon()Lcom/bytedance/sdk/openadsdk/TTImage;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getW()I
.end method

.method public abstract handleClick(Landroid/view/View;IIII)V
.end method

.method public abstract isDownloadApp()Z
.end method

.method public abstract loadImage(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract recordImpression(Landroid/view/View;)V
.end method

.method public abstract recycleImage(Landroid/view/View;)V
.end method

.method public abstract regKsViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/kwad/sdk/api/KsNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract renderExpress()V
.end method

.method public abstract scrollIdle(Landroid/support/v7/widget/RecyclerView;)V
.end method

.method public abstract scrollIdle(Landroid/widget/ListView;)V
.end method

.method public abstract setActivityForDownloadApp(Landroid/app/Activity;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
.end method

.method public abstract setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
.end method

.method public abstract setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
.end method

.method public abstract setImagsBindDataProxy(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy",
            "<[",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setKsVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
.end method

.method public abstract setTTDownListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
.end method

.method public abstract setTitlBindDataProxy(Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huanju/ssp/sdk/inf/NativeAd$BindDataProxy",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
.end method
