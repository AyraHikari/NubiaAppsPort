.class Lcn/nubia/camera/bb/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/o;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/o;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcn/nubia/camera/bb/o$3;->a:Lcn/nubia/camera/bb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcn/nubia/camera/bb/o$3;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v0}, Lcn/nubia/camera/bb/o;->c(Lcn/nubia/camera/bb/o;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/bb/o$3;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->d(Lcn/nubia/camera/bb/o;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcn/nubia/camera/bb/o$3;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v1, p0, Lcn/nubia/camera/bb/o$3;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 269
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
