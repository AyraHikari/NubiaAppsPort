.class Lcn/nubia/camera/ao/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/af$a;


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

    .line 132
    iput-object p1, p0, Lcn/nubia/camera/ao/e$3;->a:Lcn/nubia/camera/ao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcn/nubia/camera/ao/e$3;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->a(Lcn/nubia/camera/ao/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/ao/e$3;->a:Lcn/nubia/camera/ao/e;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/ao/e;->b(Lcn/nubia/camera/ao/e;Z)Z

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/ao/e$3;->a:Lcn/nubia/camera/ao/e;

    invoke-virtual {v1}, Lcn/nubia/camera/ao/e;->e()V

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
