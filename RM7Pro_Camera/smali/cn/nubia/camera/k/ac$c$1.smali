.class Lcn/nubia/camera/k/ac$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ac$c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ac$c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ac$c;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v0}, Lcn/nubia/camera/k/ac$c;->c(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/camera/k/ac$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v1}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v2}, Lcn/nubia/camera/k/ac$c;->b(Lcn/nubia/camera/k/ac$c;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/camera/k/ac$b;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    iget-object v0, v0, Lcn/nubia/camera/k/ac$c;->a:Lcn/nubia/camera/k/ac;

    iget-object v1, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v1}, Lcn/nubia/camera/k/ac$c;->d(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/k;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v2}, Lcn/nubia/camera/k/ac$c;->a(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/b/a/f;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v3}, Lcn/nubia/camera/k/ac$c;->b(Lcn/nubia/camera/k/ac$c;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/k/ac$c$1;->a:Lcn/nubia/camera/k/ac$c;

    invoke-static {v4}, Lcn/nubia/camera/k/ac$c;->e(Lcn/nubia/camera/k/ac$c;)Lcn/nubia/camera/k/o;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/camera/k/ac;->a(Lcn/nubia/b/k;Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)Z

    return-void
.end method
