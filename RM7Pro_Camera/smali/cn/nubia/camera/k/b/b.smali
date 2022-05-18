.class public Lcn/nubia/camera/k/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/k/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/a/a/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/d<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/k/b/b;->b:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcn/nubia/camera/k/b/b;->a:Lcom/a/a/a/d;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcn/nubia/camera/k/b/b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/b/a;)Lcn/nubia/camera/k/b/c;
    .locals 4

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/k/b/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/k/b/b;->c:Z

    if-eqz v1, :cond_0

    .line 72
    new-instance p1, Lcn/nubia/camera/k/b/c;

    invoke-direct {p1}, Lcn/nubia/camera/k/b/c;-><init>()V

    monitor-exit v0

    return-object p1

    .line 74
    :cond_0
    new-instance v1, Lcn/nubia/camera/k/b/c;

    invoke-direct {v1}, Lcn/nubia/camera/k/b/c;-><init>()V

    .line 75
    iget-object v2, p0, Lcn/nubia/camera/k/b/b;->a:Lcom/a/a/a/d;

    invoke-interface {v2}, Lcom/a/a/a/d;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcn/nubia/camera/k/b/b$a;

    invoke-direct {v3, p0, p1, v1}, Lcn/nubia/camera/k/b/b$a;-><init>(Lcn/nubia/camera/k/b/b;Lcn/nubia/camera/k/b/a;Lcn/nubia/camera/k/b/c;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
