.class Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;
.super Ljava/lang/Thread;
.source "InfoRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/statistics/sdk/offline/InfoRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WriteThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/offline/InfoRouter;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/offline/InfoRouter;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->this$0:Lcom/zte/statistics/sdk/offline/InfoRouter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private statusDoing()V
    .locals 1

    .line 69
    :try_start_0
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->getInstance()Lcom/zte/statistics/sdk/offline/InfoRouter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->get()Lcom/zte/statistics/sdk/obj/StatisObj;

    move-result-object p0

    if-nez p0, :cond_0

    .line 73
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->access$000()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 75
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 81
    :cond_0
    instance-of v0, p0, Lcom/zte/statistics/sdk/obj/EventsObj;

    if-eqz v0, :cond_1

    .line 82
    check-cast p0, Lcom/zte/statistics/sdk/obj/EventsObj;

    .line 83
    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/ActionManager;->insertEventToDB(Lcom/zte/statistics/sdk/obj/EventsObj;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    sget-object p0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->READY:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->access$102(Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;)Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    const-string p0, "statusDoing Exception"

    const/4 v0, 0x0

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private statusReady()V
    .locals 2

    :try_start_0
    const-string p0, "statusReady"

    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/zte/statistics/sdk/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x3e8

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    sget-object p0, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->OK:Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    invoke-static {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter;->access$102(Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;)Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 106
    :goto_0
    sget-object v0, Lcom/zte/statistics/sdk/offline/InfoRouter$1;->$SwitchMap$com$zte$statistics$sdk$offline$InfoRouter$STATUS:[I

    invoke-static {}, Lcom/zte/statistics/sdk/offline/InfoRouter;->access$100()Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/statistics/sdk/offline/InfoRouter$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->statusReady()V

    goto :goto_0

    .line 111
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->statusDoing()V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-direct {p0}, Lcom/zte/statistics/sdk/offline/InfoRouter$WriteThread;->statusReady()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
