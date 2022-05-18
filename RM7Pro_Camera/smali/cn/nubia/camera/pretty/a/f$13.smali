.class Lcn/nubia/camera/pretty/a/f$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/pretty/a/f;->b(Lcn/nubia/camera/pretty/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/a/b;

.field final synthetic b:Lcn/nubia/camera/pretty/a/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/a/f;Lcn/nubia/camera/pretty/a/b;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    iput-object p2, p0, Lcn/nubia/camera/pretty/a/f$13;->a:Lcn/nubia/camera/pretty/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 7

    const-string v0, "PrettyBokehShutterButtonClickListener"

    const-string v1, "onCompleteMetadata"

    .line 296
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 299
    :try_start_0
    sget-object v1, Lcn/nubia/camera/k/a/a$c;->c:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 300
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v2, v1}, Lcn/nubia/camera/pretty/a/f;->a(Lcn/nubia/camera/pretty/a/f;[B)Lcn/nubia/camera/pretty/a/f$a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 304
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v2}, Lcn/nubia/camera/pretty/a/f;->d(Lcn/nubia/camera/pretty/a/f;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 305
    :try_start_1
    iget-object v3, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v3}, Lcn/nubia/camera/pretty/a/f;->e(Lcn/nubia/camera/pretty/a/f;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    monitor-exit v2

    return-void

    :cond_0
    if-eqz v1, :cond_1

    .line 308
    iget-object v3, v1, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    if-eqz v3, :cond_1

    .line 309
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {v0}, Lcn/nubia/camera/pretty/a/f;->f(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/a/e;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    const-string p1, "PrettyBokehShutterButtonClickListener"

    const-string v0, "setDepthData"

    .line 310
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->c(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/pretty/a/g;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->d()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->b()Landroid/util/Size;

    move-result-object p1

    .line 313
    iget-object v0, p0, Lcn/nubia/camera/pretty/a/f$13;->a:Lcn/nubia/camera/pretty/a/b;

    iget-object v3, v1, Lcn/nubia/camera/pretty/a/f$a;->e:Lcn/nubia/camera/pretty/a/d;

    iget v4, v1, Lcn/nubia/camera/pretty/a/f$a;->b:I

    iget v5, v1, Lcn/nubia/camera/pretty/a/f$a;->c:I

    int-to-float v5, v5

    .line 314
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iget v1, v1, Lcn/nubia/camera/pretty/a/f$a;->d:I

    int-to-float v1, v1

    .line 315
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float/2addr v1, v6

    float-to-int p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v6

    .line 313
    invoke-virtual {v0, v3, v4, v5, p1}, Lcn/nubia/camera/pretty/a/b;->a(Lcn/nubia/camera/pretty/a/d;IFF)V

    goto :goto_1

    :cond_1
    const-string p1, "PrettyBokehShutterButtonClickListener"

    const-string v1, "setDepthData null"

    .line 317
    invoke-static {p1, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$13;->b:Lcn/nubia/camera/pretty/a/f;

    invoke-static {p1}, Lcn/nubia/camera/pretty/a/f;->f(Lcn/nubia/camera/pretty/a/f;)Lcn/nubia/camera/pretty/a/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/pretty/a/e;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 320
    iget-object p1, p0, Lcn/nubia/camera/pretty/a/f$13;->a:Lcn/nubia/camera/pretty/a/b;

    const/4 v1, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1, v3, v3}, Lcn/nubia/camera/pretty/a/b;->a(Lcn/nubia/camera/pretty/a/d;IFF)V

    .line 322
    :goto_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
