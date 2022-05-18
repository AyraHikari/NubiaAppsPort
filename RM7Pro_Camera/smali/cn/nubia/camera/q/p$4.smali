.class Lcn/nubia/camera/q/p$4;
.super Lcn/nubia/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/p;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/p;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/nubia/camera/q/p$4;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 197
    iget-object p1, p0, Lcn/nubia/camera/q/p$4;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 198
    :try_start_0
    iget-object p2, p0, Lcn/nubia/camera/q/p$4;->a:Lcn/nubia/camera/q/p;

    invoke-static {p2, p3}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 199
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object p1, p0, Lcn/nubia/camera/q/p$4;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->g(Lcn/nubia/camera/q/p;)V

    return-void

    :catchall_0
    move-exception p2

    .line 199
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
