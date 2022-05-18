.class Lcn/nubia/camera/k/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/af;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/af;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->b(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/af$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->b(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/k/af$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/k/af$a;->onStopped()V

    .line 54
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;Lcn/nubia/camera/k/af$a;)Lcn/nubia/camera/k/af$a;

    .line 56
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/k/af;->a(Lcn/nubia/camera/k/af;Z)Z

    .line 57
    iget-object p1, p0, Lcn/nubia/camera/k/af$1;->a:Lcn/nubia/camera/k/af;

    invoke-static {p1}, Lcn/nubia/camera/k/af;->c(Lcn/nubia/camera/k/af;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method
