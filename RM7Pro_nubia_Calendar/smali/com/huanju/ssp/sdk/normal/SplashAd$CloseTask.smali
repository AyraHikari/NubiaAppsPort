.class Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;
.super Ljava/lang/Object;
.source "SplashAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseTask"
.end annotation


# instance fields
.field private closeType:I

.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method private constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Lcom/huanju/ssp/sdk/normal/SplashAd$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "x1"    # Lcom/huanju/ssp/sdk/normal/SplashAd$1;

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;-><init>(Lcom/huanju/ssp/sdk/normal/SplashAd;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;I)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;
    .param p1, "x1"    # I

    .prologue
    .line 983
    invoke-direct {p0, p1}, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->setCloseType(I)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private setCloseType(I)Ljava/lang/Runnable;
    .locals 0
    .param p1, "closeType"    # I

    .prologue
    .line 988
    iput p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->closeType:I

    .line 989
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloseTask isAutoStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2900(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2900(Lcom/huanju/ssp/sdk/normal/SplashAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3002(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 997
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3102(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 998
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3202(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 999
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    iget v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->closeType:I

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3301(Lcom/huanju/ssp/sdk/normal/SplashAd;I)V

    .line 1000
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v0}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/sdk/normal/SplashAd$DownCountTask;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$CloseTask;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$2902(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1003
    return-void
.end method
