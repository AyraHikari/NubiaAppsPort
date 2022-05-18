.class Lcom/huanju/ssp/sdk/normal/AbsNormalAd$1;
.super Ljava/lang/Object;
.source "AbsNormalAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$1;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    invoke-interface {v0}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdReady()V

    .line 128
    return-void
.end method
