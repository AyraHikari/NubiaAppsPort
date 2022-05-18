.class Lcn/nubia/camera/aimoon/h$1;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aimoon/h;->a(Lcn/nubia/camera/g/h;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/u;

.field final synthetic b:Lcn/nubia/camera/g/h;

.field final synthetic c:Lcn/nubia/camera/aimoon/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aimoon/h;Lcn/nubia/camera/k/u;Lcn/nubia/camera/g/h;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/nubia/camera/aimoon/h$1;->c:Lcn/nubia/camera/aimoon/h;

    iput-object p2, p0, Lcn/nubia/camera/aimoon/h$1;->a:Lcn/nubia/camera/k/u;

    iput-object p3, p0, Lcn/nubia/camera/aimoon/h$1;->b:Lcn/nubia/camera/g/h;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 198
    invoke-super/range {p0 .. p6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 199
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$1;->a:Lcn/nubia/camera/k/u;

    if-eqz p1, :cond_0

    .line 200
    invoke-interface {p1, p3, p4}, Lcn/nubia/camera/k/u;->a(J)V

    .line 202
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$1;->b:Lcn/nubia/camera/g/h;

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p1}, Lcn/nubia/camera/g/h;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 190
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 191
    iget-object p1, p0, Lcn/nubia/camera/aimoon/h$1;->a:Lcn/nubia/camera/k/u;

    if-eqz p1, :cond_0

    .line 192
    invoke-interface {p1, p3}, Lcn/nubia/camera/k/u;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    :cond_0
    return-void
.end method
