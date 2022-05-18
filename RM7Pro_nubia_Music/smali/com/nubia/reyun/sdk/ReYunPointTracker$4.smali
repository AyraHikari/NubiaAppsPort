.class Lcom/nubia/reyun/sdk/ReYunPointTracker$4;
.super Ljava/lang/Object;
.source "ReYunPointTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/reyun/sdk/ReYunPointTracker;-><init>(Lcom/nubia/reyun/sdk/ReYunSDKManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;


# direct methods
.method constructor <init>(Lcom/nubia/reyun/sdk/ReYunPointTracker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$7(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-static {v1}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->access$1(Lcom/nubia/reyun/sdk/ReYunPointTracker;)Lcom/nubia/reyun/sdk/ReYunSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nubia/reyun/sdk/ReYunSDKManager;->getRecordTrackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 51
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$4;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    invoke-virtual {v0}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->clearDataStatus()V

    .line 52
    return-void
.end method
