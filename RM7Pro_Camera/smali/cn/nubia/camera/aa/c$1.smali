.class Lcn/nubia/camera/aa/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcn/nubia/camera/aa/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/c;)V
    .locals 2

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcn/nubia/camera/aa/c$1;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    invoke-static {v1}, Lcn/nubia/camera/aa/c;->a(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/v/d;

    move-result-object v1

    if-nez v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    invoke-static {v1}, Lcn/nubia/camera/aa/c;->a(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    invoke-static {v2}, Lcn/nubia/camera/aa/c;->a(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/v/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/d;->e()J

    move-result-wide v2

    .line 69
    iget-wide v4, p0, Lcn/nubia/camera/aa/c$1;->a:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 70
    monitor-exit v0

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 73
    monitor-exit v0

    return-void

    .line 75
    :cond_2
    iput-wide v2, p0, Lcn/nubia/camera/aa/c$1;->a:J

    .line 76
    iget-object v2, p0, Lcn/nubia/camera/aa/c$1;->b:Lcn/nubia/camera/aa/c;

    invoke-static {v2}, Lcn/nubia/camera/aa/c;->b(Lcn/nubia/camera/aa/c;)Lcn/nubia/camera/aa/c$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/camera/aa/c$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 77
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 78
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
