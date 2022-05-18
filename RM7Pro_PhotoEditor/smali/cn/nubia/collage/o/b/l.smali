.class public Lcn/nubia/collage/o/b/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/o/b/l$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/nubia/collage/o/b/l;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V
    .locals 2

    sget-object v0, Lcn/nubia/collage/o/b/l;->b:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const-string v0, "PhotoEditor"

    const-string v1, "mFuture.cancel(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcn/nubia/collage/o/b/l;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/nubia/collage/o/b/l$a;

    invoke-direct {v1, p1, p0, p2}, Lcn/nubia/collage/o/b/l$a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/collage/o/b/l$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    sput-object p0, Lcn/nubia/collage/o/b/l;->b:Ljava/util/concurrent/Future;

    return-void
.end method
