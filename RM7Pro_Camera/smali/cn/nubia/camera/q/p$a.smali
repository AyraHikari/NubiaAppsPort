.class Lcn/nubia/camera/q/p$a;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/p;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/p;Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    .line 307
    iput-object p2, p0, Lcn/nubia/camera/q/p$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 312
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 313
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 314
    :try_start_0
    iget-object p2, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p2}, Lcn/nubia/camera/q/p;->h(Lcn/nubia/camera/q/p;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 315
    monitor-exit p1

    return-void

    .line 317
    :cond_0
    iget-object p2, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Z)Z

    .line 318
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->l(Lcn/nubia/camera/q/p;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->k(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->k(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/q/p$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/q/p$b;->b()V

    .line 323
    :cond_1
    invoke-static {}, Lcn/nubia/m/c;->a()Lcn/nubia/m/c;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/camera/q/p$a;->b:Ljava/lang/String;

    iget-object p3, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p3}, Lcn/nubia/camera/q/p;->i(Lcn/nubia/camera/q/p;)Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 325
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->m(Lcn/nubia/camera/q/p;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->n(Lcn/nubia/camera/q/p;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p1, p0, Lcn/nubia/camera/q/p$a;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->g(Lcn/nubia/camera/q/p;)V

    :cond_2
    const-string p1, "WaterMarkSetting"

    const-string p2, "captureCompleted"

    .line 328
    invoke-static {p1, p2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p2

    .line 318
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
