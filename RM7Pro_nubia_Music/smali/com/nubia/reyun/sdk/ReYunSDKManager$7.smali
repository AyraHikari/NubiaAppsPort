.class Lcom/nubia/reyun/sdk/ReYunSDKManager$7;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->trackProfile(Ljava/lang/String;Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iput-object p2, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;->val$extra:Ljava/util/Map;

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$7;->val$extra:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$19(Lcom/nubia/reyun/sdk/ReYunSDKManager;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
