.class Lcom/nubia/reyun/sdk/ReYunSDKManager$8$1;
.super Ljava/lang/Object;
.source "ReYunSDKManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$8;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunSDKManager$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$8;

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunSDKManager$8$1;->this$1:Lcom/nubia/reyun/sdk/ReYunSDKManager$8;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager$8;->access$0(Lcom/nubia/reyun/sdk/ReYunSDKManager$8;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v0

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->access$24(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V

    .line 678
    return-void
.end method
