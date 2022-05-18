.class Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AliveHandler"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AliveHandler"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;

    .line 99
    if-eqz v0, :cond_0

    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    const-string v1, "AliveHandler"

    const-string v2, "handleMessage MSG_START"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v0}, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;->a(Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;)Lcom/hpplay/sdk/source/browse/handler/a;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->c:Z

    if-nez v1, :cond_2

    .line 107
    const-string v1, "AliveHandler"

    const-string v2, "handleMessage start Thread"

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/handler/a;->start()V

    .line 110
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->c:Z

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter;)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->b:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/browse/adapter/BaseBrowseAdapter$AliveHandler;->c:Z

    return v0
.end method
