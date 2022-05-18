.class public abstract Lcn/nubia/camera/panorama/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/util/Size;

.field protected b:Landroid/util/Size;

.field protected c:Landroid/util/Size;

.field protected d:Lcn/nubia/camera/panorama/i;

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Landroid/content/Context;

.field protected i:Lcn/nubia/k/a/a;

.field protected j:Lcn/nubia/l/a/b;

.field protected k:F

.field protected l:F

.field protected m:Lcn/nubia/e/a;

.field protected n:I

.field protected o:Lcn/nubia/camera/ad/a;

.field private p:Z

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcn/nubia/camera/panorama/h;->e:I

    iput v0, p0, Lcn/nubia/camera/panorama/h;->f:I

    iput v0, p0, Lcn/nubia/camera/panorama/h;->g:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcn/nubia/camera/panorama/h;->p:Z

    .line 103
    new-instance v0, Lcn/nubia/camera/panorama/h$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/panorama/h$1;-><init>(Lcn/nubia/camera/panorama/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/nubia/camera/panorama/h;->a:Landroid/util/Size;

    .line 50
    iput-object p3, p0, Lcn/nubia/camera/panorama/h;->c:Landroid/util/Size;

    .line 51
    iput-object p2, p0, Lcn/nubia/camera/panorama/h;->b:Landroid/util/Size;

    return-void
.end method

.method public a(Lcn/nubia/camera/ad/a;Landroid/content/Context;Lcn/nubia/k/a/a;FF)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/nubia/camera/panorama/h;->o:Lcn/nubia/camera/ad/a;

    .line 56
    iput-object p2, p0, Lcn/nubia/camera/panorama/h;->h:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcn/nubia/camera/panorama/h;->i:Lcn/nubia/k/a/a;

    .line 58
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/panorama/h;->j:Lcn/nubia/l/a/b;

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701db

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/camera/panorama/h;->n:I

    .line 60
    iput p4, p0, Lcn/nubia/camera/panorama/h;->k:F

    .line 61
    iput p5, p0, Lcn/nubia/camera/panorama/h;->l:F

    .line 62
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/panorama/h;->m:Lcn/nubia/e/a;

    return-void
.end method

.method public a(Lcn/nubia/camera/panorama/f;)V
    .locals 0

    return-void
.end method

.method public a(Lcn/nubia/camera/panorama/i;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcn/nubia/camera/panorama/h;->d:Lcn/nubia/camera/panorama/i;

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 134
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcn/nubia/camera/panorama/h;->p:Z

    return-void
.end method

.method public abstract a([B)V
.end method

.method public abstract b()V
.end method

.method public b(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/camera/panorama/h;->e:I

    return-void
.end method

.method protected c(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected e()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected f()Landroid/os/Handler;
    .locals 1

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/panorama/h;->q:Landroid/os/Handler;

    return-object v0
.end method
