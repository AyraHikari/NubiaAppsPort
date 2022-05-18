.class Lcn/nubia/camera/ao/h$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ao/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcn/nubia/camera/ao/h$8;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 827
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/ao/h$8;->a:Lcn/nubia/camera/ao/h;

    .line 828
    invoke-static {v0}, Lcn/nubia/camera/ao/h;->r(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_0

    .line 829
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 830
    iget-object v0, p0, Lcn/nubia/camera/ao/h$8;->a:Lcn/nubia/camera/ao/h;

    invoke-static {v0}, Lcn/nubia/camera/ao/h;->d(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/m;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ao/m;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/k/x;->a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
