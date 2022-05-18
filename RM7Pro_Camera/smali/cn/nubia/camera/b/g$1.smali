.class Lcn/nubia/camera/b/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/b/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/b/g;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/camera/b/g$1;->a:Lcn/nubia/camera/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/b/g$1;->a:Lcn/nubia/camera/b/g;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/b/g$1;->a:Lcn/nubia/camera/b/g;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/b/g;->a(Lcn/nubia/camera/b/g;Z)Z

    .line 103
    iget-object v1, p0, Lcn/nubia/camera/b/g$1;->a:Lcn/nubia/camera/b/g;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
