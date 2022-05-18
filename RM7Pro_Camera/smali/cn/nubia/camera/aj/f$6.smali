.class Lcn/nubia/camera/aj/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->m(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->h(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/g/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcn/nubia/camera/g/e;->a(JZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 450
    iget-object p1, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->p(Lcn/nubia/camera/aj/f;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aP()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 451
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->e(Lcn/nubia/camera/aj/f;)V

    .line 452
    iget-object p1, p0, Lcn/nubia/camera/aj/f$6;->a:Lcn/nubia/camera/aj/f;

    invoke-static {p1}, Lcn/nubia/camera/aj/f;->f(Lcn/nubia/camera/aj/f;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
