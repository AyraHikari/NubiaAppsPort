.class Lcom/nubia/reyun/sdk/ReYunSDKManager$3;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfileSend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private final synthetic val$extra:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->val$extra:Ljava/util/Map;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager$3;)Lcom/nubia/reyun/sdk/ReYunSDKManager;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 185
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 186
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storePolicy(Landroid/content/Context;)V

    .line 187
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/analytic/util/AppUtil;->getSendBy(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$7(Lcom/nubia/reyun/sdk/ReYunSDKManager;Z)V

    .line 188
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$8(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$9(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v4, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;

    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$3;->val$extra:Ljava/util/Map;

    invoke-direct {v4, p0, v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager$3$1;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$3;Ljava/util/Map;)V

    .line 188
    invoke-static/range {v0 .. v5}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V

    .line 201
    return-void

    :cond_0
    move v0, v5

    .line 187
    goto :goto_0
.end method
