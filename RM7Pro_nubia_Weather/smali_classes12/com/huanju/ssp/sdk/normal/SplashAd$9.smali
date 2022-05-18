.class Lcom/huanju/ssp/sdk/normal/SplashAd$9;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->removeAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

.field final synthetic val$adView:Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$9;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$9;->val$adView:Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$9;->val$adView:Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->setVisibility(I)V

    .line 809
    return-void
.end method
