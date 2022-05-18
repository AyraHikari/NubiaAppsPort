.class Lcn/nubia/camera/b/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/l;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/b/l$1;->a:Lcn/nubia/camera/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/b/l$1;->a:Lcn/nubia/camera/b/l;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/b/l$1;->a:Lcn/nubia/camera/b/l;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l;Z)Z

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/b/l$1;->a:Lcn/nubia/camera/b/l;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

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
