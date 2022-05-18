.class Lcn/nubia/camera/k/h$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/h;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcn/nubia/camera/k/h$2;->a:Lcn/nubia/camera/k/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 424
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/h$2;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->d(Lcn/nubia/camera/k/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CameraOpener"

    const-string v0, "receive MSG_DELAY_CLOSE_CAMERA"

    .line 427
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p1, p0, Lcn/nubia/camera/k/h$2;->a:Lcn/nubia/camera/k/h;

    invoke-static {p1}, Lcn/nubia/camera/k/h;->e(Lcn/nubia/camera/k/h;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/h$2;->a:Lcn/nubia/camera/k/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;Z)Z

    .line 430
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    iget-object p1, p0, Lcn/nubia/camera/k/h$2;->a:Lcn/nubia/camera/k/h;

    invoke-virtual {p1}, Lcn/nubia/camera/k/h;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 430
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
