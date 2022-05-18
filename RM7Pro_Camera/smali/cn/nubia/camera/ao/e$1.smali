.class Lcn/nubia/camera/ao/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/e;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/nubia/camera/ao/e$1;->a:Lcn/nubia/camera/ao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/ao/e$1;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/e$1;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v1, p1}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/ao/e$1;->a:Lcn/nubia/camera/ao/e;

    invoke-static {p1}, Lcn/nubia/camera/ao/e;->b(Lcn/nubia/camera/ao/e;)V

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
