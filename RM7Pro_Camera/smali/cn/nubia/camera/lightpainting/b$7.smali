.class Lcn/nubia/camera/lightpainting/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    const-string p1, "LightPaitingFragment"

    const-string v0, "onFrameAvailable"

    .line 400
    invoke-static {p1, v0}, Lcn/nubia/camera/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {v0}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Capture has been stopped abnormally.."

    .line 402
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 405
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 406
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->f(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/lightpainting/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/lightpainting/a;->a(Z)V

    .line 408
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v2}, Lcn/nubia/camera/lightpainting/b;->k(Lcn/nubia/camera/lightpainting/b;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;J)J

    .line 409
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->l(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    .line 410
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/lightpainting/b;->b(Lcn/nubia/camera/lightpainting/b;J)J

    .line 411
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$7;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->m(Lcn/nubia/camera/lightpainting/b;)I

    return-void
.end method
