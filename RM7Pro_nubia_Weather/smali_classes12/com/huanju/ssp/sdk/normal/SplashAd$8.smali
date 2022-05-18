.class Lcom/huanju/ssp/sdk/normal/SplashAd$8;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;->doAdError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

.field final synthetic val$errorCode:I

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iput-object p2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->val$errorMsg:Ljava/lang/String;

    iput p3, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->val$errorMsg:Ljava/lang/String;

    iget v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$8;->val$errorCode:I

    invoke-static {v0, v1, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2501(Lcom/huanju/ssp/sdk/normal/SplashAd;Ljava/lang/String;I)V

    .line 623
    return-void
.end method
