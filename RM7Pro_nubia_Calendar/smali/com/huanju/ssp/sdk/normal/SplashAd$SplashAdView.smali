.class public final Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;
.super Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;
.source "SplashAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/normal/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SplashAdView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/sdk/normal/SplashAd;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/huanju/ssp/sdk/normal/SplashAd;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/huanju/ssp/sdk/normal/AbsNormalAd$AbsAdView;-><init>(Lcom/huanju/ssp/sdk/normal/AbsNormalAd;Landroid/content/Context;)V

    .line 1060
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huanju/ssp/base/utils/Utils;->getScreenSize(Z)[I

    move-result-object v0

    iput-object v0, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->screenSizes:[I

    .line 1061
    return-void
.end method


# virtual methods
.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v4, 0x41400000    # 12.0f

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawView caculateAdTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3900(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",showAdTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4100(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1073
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v4}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->drawAdMark(Landroid/graphics/Canvas;II)V

    .line 1074
    const-string v0, "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u9762\u6216\u7b2c\u4e09\u65b9\u5e94\u7528 >"

    .line 1075
    .local v0, "clickText":Ljava/lang/String;
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4200(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4300(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-object v1, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_template:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1076
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4400(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v1

    iget-object v0, v1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_template:Ljava/lang/String;

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawView click_template:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4500(Lcom/huanju/ssp/sdk/normal/SplashAd;)Lcom/huanju/ssp/base/core/request/ad/bean/Ad;

    move-result-object v2

    iget-object v2, v2, Lcom/huanju/ssp/base/core/request/ad/bean/Ad;->click_template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1079
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawView clickText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1080
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->drawClickView(Landroid/graphics/Canvas;ILjava/lang/String;I)V

    .line 1081
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p0, p1, v1}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->drawLogo(Landroid/graphics/Canvas;F)V

    .line 1082
    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4602(Lcom/huanju/ssp/sdk/normal/SplashAd;Z)Z

    .line 1085
    invoke-static {v4}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v3

    const-string v4, "\u8df3\u8fc7"

    invoke-static {v5}, Lcom/huanju/ssp/base/utils/Utils;->dp2px(F)I

    move-result v5

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$3900(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->this$0:Lcom/huanju/ssp/sdk/normal/SplashAd;

    invoke-static {v1}, Lcom/huanju/ssp/sdk/normal/SplashAd;->access$4100(Lcom/huanju/ssp/sdk/normal/SplashAd;)J

    move-result-wide v8

    div-long/2addr v6, v8

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->drawProgressView(Landroid/graphics/Canvas;ILjava/lang/String;IJ)V

    .line 1087
    return-void
.end method

.method public getViewSize()[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1065
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->screenSizes:[I

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/huanju/ssp/sdk/normal/SplashAd$SplashAdView;->screenSizes:[I

    aget v1, v1, v3

    aput v1, v0, v3

    return-object v0
.end method
