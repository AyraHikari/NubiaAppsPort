.class Lcn/nubia/camera/u/c$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/u/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/u/c$a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/u/c$a;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/nubia/camera/u/c$a$2;->a:Lcn/nubia/camera/u/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcn/nubia/camera/u/c$a$2;->a:Lcn/nubia/camera/u/c$a;

    invoke-static {p1}, Lcn/nubia/camera/u/c$a;->b(Lcn/nubia/camera/u/c$a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcn/nubia/camera/u/c$a$2;->a:Lcn/nubia/camera/u/c$a;

    invoke-static {p1}, Lcn/nubia/camera/u/c$a;->b(Lcn/nubia/camera/u/c$a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/u/c$a$2;->a:Lcn/nubia/camera/u/c$a;

    iget-object p1, p1, Lcn/nubia/camera/u/c$a;->b:Lcn/nubia/camera/u/c;

    invoke-virtual {p1}, Lcn/nubia/camera/u/c;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/u/c$a$2;->a:Lcn/nubia/camera/u/c$a;

    iget-object v0, v0, Lcn/nubia/camera/u/c$a;->a:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void
.end method
