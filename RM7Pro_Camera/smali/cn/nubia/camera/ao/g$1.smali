.class Lcn/nubia/camera/ao/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/g;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/camera/ao/g$1;->a:Lcn/nubia/camera/ao/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/ao/g$1;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->a(Lcn/nubia/camera/ao/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/g$1;->a:Lcn/nubia/camera/ao/g;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/ao/g;->a(Lcn/nubia/camera/ao/g;Z)Z

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcn/nubia/camera/ao/g$1;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->b(Lcn/nubia/camera/ao/g;)V

    return-void

    :catchall_0
    move-exception v1

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
