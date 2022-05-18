.class Lcn/nubia/camera/aj/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[I

.field final synthetic b:Lcn/nubia/camera/aj/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3

    .line 928
    invoke-static {}, Lcn/nubia/camera/ba/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    .line 929
    invoke-static {v0}, Lcn/nubia/camera/aj/c;->L(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-eq v0, v1, :cond_0

    .line 930
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 931
    iget-object v1, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/k/a/a$c;->l:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/x;->a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 933
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->k:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 934
    iget-object v0, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->B(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/l;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/camera/aj/l;->a([IJ)V

    .line 935
    iget-object p1, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/k/a/a$c;->k:Landroid/hardware/camera2/CaptureResult$Key;

    iget-object v1, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->B(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/l;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/aj/l;->a()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/k/x;->a(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 936
    iget-object p1, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/aj/h;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->ad()[I

    move-result-object p1

    .line 937
    iget-object v0, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    iget-object v1, p0, Lcn/nubia/camera/aj/c$8;->a:[I

    invoke-static {v0, v1, p1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;[I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iget-object v0, p0, Lcn/nubia/camera/aj/c$8;->b:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->d(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/aj/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/aj/h;->k()V

    .line 939
    iput-object p1, p0, Lcn/nubia/camera/aj/c$8;->a:[I

    :cond_0
    return-void
.end method
