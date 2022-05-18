.class Lcom/nubia/reyun/sdk/ReYunPointTracker$1;
.super Ljava/util/TimerTask;
.source "ReYunPointTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunPointTracker;
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
    iput-object p1, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$1;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    .line 76
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/nubia/reyun/sdk/ReYunPointTracker$1;->this$0:Lcom/nubia/reyun/sdk/ReYunPointTracker;

    const-string v1, "batch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nubia/reyun/sdk/ReYunPointTracker;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
