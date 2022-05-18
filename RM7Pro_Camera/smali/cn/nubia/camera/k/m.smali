.class public Lcn/nubia/camera/k/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ah$b;
.implements Lcn/nubia/camera/k/s;


# instance fields
.field private a:Landroid/media/ImageWriter;

.field private b:Lcn/nubia/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    invoke-interface {p1}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/k/m;->b:Lcn/nubia/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Lcn/nubia/b/a;->a(Landroid/hardware/camera2/CaptureRequest;Lcn/nubia/b/a$a;Landroid/os/Handler;)I

    .line 90
    invoke-interface {p1}, Lcn/nubia/b/a/f;->close()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;)Z
    .locals 2

    .line 68
    iget-object p3, p0, Lcn/nubia/camera/k/m;->b:Lcn/nubia/b/a;

    .line 69
    invoke-virtual {p3}, Lcn/nubia/b/a;->e()Lcn/nubia/b/d;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/nubia/b/m;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-virtual {p4, p3, p2, v0}, Lcn/nubia/camera/k/ad;->a(Lcn/nubia/b/d;Landroid/hardware/camera2/TotalCaptureResult;[Lcn/nubia/b/m;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    .line 68
    invoke-direct {p0, p1, p2, p6}, Lcn/nubia/camera/k/m;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/CaptureRequest;Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public onConfingSuccess(Lcn/nubia/b/a;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/b/a;->f()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/k/m;->a:Landroid/media/ImageWriter;

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/k/m;->b:Lcn/nubia/b/a;

    return-void
.end method
