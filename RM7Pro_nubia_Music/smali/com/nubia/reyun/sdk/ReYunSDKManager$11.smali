.class Lcom/nubia/reyun/sdk/ReYunSDKManager$11;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

.field private final synthetic val$eventName:Ljava/lang/String;

.field private final synthetic val$extra:Ljava/util/Map;

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$value:Ljava/lang/String;

    iput-object p5, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$extra:Ljava/util/Map;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$12(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    .line 800
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->isUpload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->checkDisableEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$type:Ljava/lang/String;

    iget-object v3, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$value:Ljava/lang/String;

    iget-object v4, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->val$extra:Ljava/util/Map;

    const/4 v5, 0x0

    .line 807
    iget-object v6, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$11;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$10(Lcom/nubia/reyun/sdk/ReYunSDKManager;)Ljava/lang/String;

    move-result-object v6

    .line 806
    invoke-static/range {v0 .. v6}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$26(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
