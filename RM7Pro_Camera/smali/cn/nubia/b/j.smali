.class public Lcn/nubia/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 25
    new-instance p0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method
