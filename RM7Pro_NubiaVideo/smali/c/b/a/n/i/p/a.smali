.class public final Lc/b/a/n/i/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc/b/a/n/i/n/h;Lc/b/a/n/i/m/c;Lc/b/a/n/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
