.class Lcom/huanju/ssp/sdk/normal/NativeAd$4;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeAd requestAd requestTTFeedAd type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget v0, v0, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$700(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$4;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$800(Lcom/huanju/ssp/sdk/normal/NativeAd;)V

    goto :goto_0
.end method
