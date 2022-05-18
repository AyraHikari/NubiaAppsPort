.class Lcn/nubia/camera/bb/v$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/zoom/arc/VideoZoomView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/v;->i(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/v;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/v;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "VideoFragment"

    const-string v1, "onStartZoom"

    .line 1302
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->N()Lcn/nubia/camera/zoom/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/zoom/c;->c()F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;F)F

    .line 1304
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->J(Lcn/nubia/camera/bb/v;)V

    .line 1305
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->H(Lcn/nubia/camera/bb/v;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 1310
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0, p1}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/bb/v;F)F

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "VideoFragment"

    const-string v1, "onStopZoom"

    .line 1315
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-virtual {v0}, Lcn/nubia/camera/bb/v;->M()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v1}, Lcn/nubia/camera/bb/v;->A(Lcn/nubia/camera/bb/v;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(F)V

    .line 1319
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->a(Lcn/nubia/camera/bb/v;F)F

    .line 1320
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/bb/v;->b(Lcn/nubia/camera/bb/v;F)F

    .line 1321
    iget-object v0, p0, Lcn/nubia/camera/bb/v$3;->a:Lcn/nubia/camera/bb/v;

    invoke-static {v0}, Lcn/nubia/camera/bb/v;->H(Lcn/nubia/camera/bb/v;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
