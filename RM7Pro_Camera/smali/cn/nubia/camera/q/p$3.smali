.class Lcn/nubia/camera/q/p$3;
.super Lcn/nubia/b/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/p;->d()V
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

    .line 165
    iput-object p1, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-direct {p0}, Lcn/nubia/b/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/b/a;)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-static {v0}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-static {v1}, Lcn/nubia/camera/q/p;->d(Lcn/nubia/camera/q/p;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    monitor-exit v0

    return-void

    .line 177
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-static {v1, p1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Lcn/nubia/b/a;)Lcn/nubia/b/a;

    .line 178
    iget-object p1, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->e(Lcn/nubia/camera/q/p;)Lcn/nubia/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/b/a;->f()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/nubia/camera/q/p;->a(Lcn/nubia/camera/q/p;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;

    .line 179
    iget-object p1, p0, Lcn/nubia/camera/q/p$3;->a:Lcn/nubia/camera/q/p;

    invoke-static {p1}, Lcn/nubia/camera/q/p;->f(Lcn/nubia/camera/q/p;)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcn/nubia/b/a;)V
    .locals 0

    return-void
.end method
