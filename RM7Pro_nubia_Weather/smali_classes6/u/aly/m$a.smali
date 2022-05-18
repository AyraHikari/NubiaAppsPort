.class Lu/aly/m$a;
.super Landroid/os/Handler;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lu/aly/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu/aly/m;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lu/aly/m$a;->a:Ljava/lang/ref/WeakReference;

    .line 79
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/m$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const/16 v0, 0x30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->b(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    invoke-static {}, Lu/aly/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->c(Lu/aly/m;)V

    goto :goto_0

    .line 90
    :pswitch_1
    const/16 v0, 0x31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->c(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    invoke-static {}, Lu/aly/m;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->d(Lu/aly/m;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
