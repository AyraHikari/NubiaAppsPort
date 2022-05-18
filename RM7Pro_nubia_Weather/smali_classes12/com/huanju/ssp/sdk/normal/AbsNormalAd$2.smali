.class Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;
.super Ljava/lang/Object;
.source "AbsNormalAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->onAdError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->val$errorMsg:Ljava/lang/String;

    iput p3, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->this$0:Lcom/huanju/ssp/sdk/normal/AbsNormalAd;

    iget-object v0, v0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd;->mAdListener:Lcom/huanju/ssp/sdk/listener/AdListener;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->val$errorMsg:Ljava/lang/String;

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$2;->val$errorCode:I

    invoke-interface {v0, v1, v2}, Lcom/huanju/ssp/sdk/listener/AdListener;->onAdError(Ljava/lang/String;I)V

    .line 189
    :cond_0
    return-void
.end method
