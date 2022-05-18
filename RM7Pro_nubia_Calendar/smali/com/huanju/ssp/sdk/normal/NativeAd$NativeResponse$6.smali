.class Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;->setKsVideoPlayListener(Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

.field final synthetic val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->this$1:Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPlayComplete()V
    .locals 1

    .prologue
    .line 1347
    const-string v0, "+++setKsVideoPlayListener onVideoPlayComplete"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayComplete()V

    .line 1351
    :cond_0
    return-void
.end method

.method public onVideoPlayError(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++setKsVideoPlayListener onVideoPlayError i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",i1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayError(II)V

    .line 1359
    :cond_0
    return-void
.end method

.method public onVideoPlayStart()V
    .locals 1

    .prologue
    .line 1339
    const-string v0, "+++setKsVideoPlayListener onVideoPlayStart"

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse$6;->val$videoPlayListener:Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayStart()V

    .line 1343
    :cond_0
    return-void
.end method
