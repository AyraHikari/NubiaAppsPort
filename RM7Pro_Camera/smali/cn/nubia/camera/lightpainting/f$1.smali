.class Lcn/nubia/camera/lightpainting/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/lightpainting/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/f;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/f$1;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$1;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/lightpainting/f;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 186
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$1;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/lightpainting/f;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$1;->a:Lcn/nubia/camera/lightpainting/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/lightpainting/f;->a(Lcn/nubia/camera/lightpainting/f;Z)Z

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/f$1;->a:Lcn/nubia/camera/lightpainting/f;

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/f;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method
