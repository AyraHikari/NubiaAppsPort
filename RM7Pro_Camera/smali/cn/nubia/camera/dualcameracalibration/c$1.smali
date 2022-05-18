.class Lcn/nubia/camera/dualcameracalibration/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/dualcameracalibration/c;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/dualcameracalibration/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/dualcameracalibration/c;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$1;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$1;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->a(Lcn/nubia/camera/dualcameracalibration/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c$1;->a:Lcn/nubia/camera/dualcameracalibration/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/dualcameracalibration/c;->a(Lcn/nubia/camera/dualcameracalibration/c;Z)Z

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/dualcameracalibration/c$1;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {v0}, Lcn/nubia/camera/dualcameracalibration/c;->b(Lcn/nubia/camera/dualcameracalibration/c;)V

    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcn/nubia/camera/dualcameracalibration/c$1;->a:Lcn/nubia/camera/dualcameracalibration/c;

    invoke-static {p1}, Lcn/nubia/camera/dualcameracalibration/c;->c(Lcn/nubia/camera/dualcameracalibration/c;)Lcn/nubia/camera/dualcameracalibration/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/nubia/camera/dualcameracalibration/e;->b(Lcn/nubia/camera/k/ab$a;)V

    return-void

    :catchall_0
    move-exception v0

    .line 111
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
