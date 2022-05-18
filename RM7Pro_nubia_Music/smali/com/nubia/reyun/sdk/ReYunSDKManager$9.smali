.class Lcom/nubia/reyun/sdk/ReYunSDKManager$9;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager;->initFirstSend(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$9;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$9;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$25(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    .line 700
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$9;->this$0:Lcom/nubia/reyun/sdk/ReYunSDKManager;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$24(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    .line 701
    return-void
.end method
