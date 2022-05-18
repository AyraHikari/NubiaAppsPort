.class Lcom/nubia/reyun/sdk/ReYunSDKManager$4$1;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$4;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$4;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 305
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WhiteSheetCallback.onResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method
