.class Lcn/nubia/camera/o/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/c;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 398
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-virtual {p1}, Lcn/nubia/camera/o/c;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ElectronicFnoFragment"

    const-string v0, "Abnormally exit, just return..."

    .line 399
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 403
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->e(Lcn/nubia/camera/o/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 404
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->f(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/g;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 405
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->f(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/o/g;->d()V

    .line 407
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/o/c;->b(Lcn/nubia/camera/o/c;Z)Z

    .line 410
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->f(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/g;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 411
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-static {p1}, Lcn/nubia/camera/o/c;->f(Lcn/nubia/camera/o/c;)Lcn/nubia/camera/o/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/o/g;->k()V

    .line 414
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/o/c$3;->a:Lcn/nubia/camera/o/c;

    invoke-virtual {p1}, Lcn/nubia/camera/o/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->C()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->h()V

    return-void
.end method
