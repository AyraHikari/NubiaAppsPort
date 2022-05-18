.class Lcom/huanju/ssp/sdk/normal/NativeAd$3;
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
    .line 186
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$3;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$3;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/NativeAd$3;->this$0:Lcom/huanju/ssp/sdk/normal/NativeAd;

    iget-object v1, v1, Lcom/huanju/ssp/sdk/normal/NativeAd;->mAdSlotConfigInfo:Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;

    iget-object v1, v1, Lcom/huanju/ssp/base/core/sdk/AdSlotConfigInfo;->dspAdslotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/NativeAd;->requestAdBaidu(Ljava/lang/String;)V

    .line 190
    return-void
.end method
