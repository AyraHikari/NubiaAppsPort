.class Lcom/nubia/reyun/sdk/ReYunSDKManager$4;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Lcom/nubia/reyun/sdk/ReYunSDK$EventSwitch;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->readPolicy(Landroid/content/Context;)V

    .line 285
    const/16 v1, 0x3e

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->hasPolicy(I)Z

    move-result v1

    .line 289
    if-nez v1, :cond_0

    .line 290
    invoke-static {}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->clearPolicy()V

    .line 292
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addPolicy(I)V

    .line 293
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->storePolicy(Landroid/content/Context;)V

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$11(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->addSwitch(I)V

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v2}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/analytic/util/AppUtil;->getSendBy(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v1, v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$7(Lcom/nubia/reyun/sdk/ReYunSDKManager;Z)V

    .line 299
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$12(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    .line 300
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$6(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$8(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    .line 301
    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v3}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$9(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/nubia/reyun/sdk/ReYunSDKManager$4$1;

    invoke-direct {v4, p0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$4$1;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$4;)V

    .line 313
    iget-object v5, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$4;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v5}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$13(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Z

    move-result v5

    .line 300
    invoke-static/range {v0 .. v5}, Lcn/nubia/analytic/sdk/NubiaAnalytic;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/trafficcontrol/interfaces/WhiteSheetCallback;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_1
    return-void

    .line 298
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
