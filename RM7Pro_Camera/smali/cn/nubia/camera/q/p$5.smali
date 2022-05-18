.class Lcn/nubia/camera/q/p$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/p;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 279
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 280
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->h(Lcn/nubia/camera/q/p;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    monitor-exit p1

    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Z)Z

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0, v1}, Lcn/nubia/camera/q/p;->b(Lcn/nubia/camera/q/p;Z)Z

    .line 288
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->i(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->z()Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->n()V

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->j(Lcn/nubia/camera/q/p;)Landroid/media/ImageWriter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->j(Lcn/nubia/camera/q/p;)Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 291
    iget-object v0, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;

    .line 293
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object p1, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->k(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 295
    iget-object p1, p0, Lcn/nubia/camera/q/p$5;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->k(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/q/p$b;->b()V

    :cond_3
    const-string p1, "WaterMarkSetting"

    const-string v0, "delay captureCompleted"

    .line 297
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 293
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
