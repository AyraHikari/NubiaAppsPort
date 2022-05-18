.class Lcn/nubia/camera/ar/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ar/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ar/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ar/e;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-virtual {p1, p0}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 80
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$a;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/ar/e$a;->a()V

    .line 82
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/ar/e$a;)Lcn/nubia/camera/ar/e$a;

    .line 84
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1}, Lcn/nubia/camera/ar/e;->b(Lcn/nubia/camera/ar/e;)Lcn/nubia/camera/ar/e$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/camera/ar/e$b;->a()V

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-static {p1, v0}, Lcn/nubia/camera/ar/e;->a(Lcn/nubia/camera/ar/e;Lcn/nubia/camera/ar/e$b;)Lcn/nubia/camera/ar/e$b;

    .line 88
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ar/e$2;->a:Lcn/nubia/camera/ar/e;

    invoke-virtual {p1}, Lcn/nubia/camera/ar/e;->l()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method
