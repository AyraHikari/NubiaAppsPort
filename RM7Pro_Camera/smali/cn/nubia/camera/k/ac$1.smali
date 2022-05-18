.class Lcn/nubia/camera/k/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ac;->a(Lcn/nubia/b/k;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/b/a/f;

.field final synthetic b:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic c:Lcn/nubia/camera/k/o;

.field final synthetic d:Lcn/nubia/b/k;

.field final synthetic e:Lcn/nubia/camera/k/ac;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ac;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;Lcn/nubia/b/k;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcn/nubia/camera/k/ac$1;->e:Lcn/nubia/camera/k/ac;

    iput-object p2, p0, Lcn/nubia/camera/k/ac$1;->a:Lcn/nubia/b/a/f;

    iput-object p3, p0, Lcn/nubia/camera/k/ac$1;->b:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p4, p0, Lcn/nubia/camera/k/ac$1;->c:Lcn/nubia/camera/k/o;

    iput-object p5, p0, Lcn/nubia/camera/k/ac$1;->d:Lcn/nubia/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 153
    iget-object v0, p0, Lcn/nubia/camera/k/ac$1;->e:Lcn/nubia/camera/k/ac;

    invoke-static {v0}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/k/ac$1;->e:Lcn/nubia/camera/k/ac;

    invoke-static {v0}, Lcn/nubia/camera/k/ac;->b(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/s;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/ac$1;->a:Lcn/nubia/b/a/f;

    iget-object v3, p0, Lcn/nubia/camera/k/ac$1;->b:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v0, p0, Lcn/nubia/camera/k/ac$1;->c:Lcn/nubia/camera/k/o;

    instance-of v4, v0, Lcn/nubia/camera/k/d;

    if-eqz v4, :cond_0

    check-cast v0, Lcn/nubia/camera/k/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget-object v0, p0, Lcn/nubia/camera/k/ac$1;->e:Lcn/nubia/camera/k/ac;

    .line 156
    invoke-static {v0}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/camera/k/ac$1;->d:Lcn/nubia/b/k;

    iget-object v0, p0, Lcn/nubia/camera/k/ac$1;->e:Lcn/nubia/camera/k/ac;

    invoke-static {v0}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/camera/k/ac;)Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->v()Lcom/a/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Handler;

    .line 154
    invoke-interface/range {v1 .. v7}, Lcn/nubia/camera/k/s;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/d;Lcn/nubia/camera/k/ad;Lcn/nubia/b/m;Landroid/os/Handler;)Z

    return-void
.end method
