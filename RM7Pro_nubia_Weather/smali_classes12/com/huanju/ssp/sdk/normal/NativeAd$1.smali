.class Lcom/huanju/ssp/sdk/normal/NativeAd$1;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/NativeAd;->onNativeAdReach(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

.field final synthetic val$adInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/NativeAd;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->val$adInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->val$adInfoList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$000(Lcom/huanju/ssp/sdk/normal/NativeAd;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "parseData":Ljava/util/List;, "Ljava/util/List<Lcom/huanju/ssp/sdk/normal/NativeAd$NativeResponse;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdReach(Ljava/util/List;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->access$100(Lcom/huanju/ssp/sdk/normal/NativeAd;)Lcom/huanju/ssp/sdk/listener/NativeAdListener;

    move-result-object v1

    const-string v2, "\u5e7f\u544a\u8fd4\u56de\u4e3a\u7a7a"

    const/4 v3, -0x7

    invoke-interface {v1, v2, v3}, Lcom/huanju/ssp/sdk/listener/NativeAdListener;->onAdError(Ljava/lang/String;I)V

    goto :goto_0
.end method
