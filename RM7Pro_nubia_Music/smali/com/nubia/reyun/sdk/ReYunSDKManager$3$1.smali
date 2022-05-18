.class Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$3;

.field private final synthetic val$extra:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$3;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$3;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;->val$extra:Ljava/util/Map;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WhiteSheetCallback.onResult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lcom/nubia/reyun/utils/CommonUtil;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$3;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager$3;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$3;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager$3;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;->val$extra:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfile(Ljava/lang/String;Ljava/util/Map;)V

    .line 199
    return-void
.end method
