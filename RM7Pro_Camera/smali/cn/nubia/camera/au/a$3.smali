.class Lcn/nubia/camera/au/a$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/au/a;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 718
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 719
    iget-object v0, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->r(Lcn/nubia/camera/au/a;)V

    .line 720
    iget-object v0, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->s(Lcn/nubia/camera/au/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 722
    iget-object v1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/g;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/au/g;->a:Lcn/nubia/camera/au/g;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->t(Lcn/nubia/camera/au/a;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v1}, Lcn/nubia/camera/au/a;->D()Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    iget-object v1, p0, Lcn/nubia/camera/au/a$3;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->u(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 725
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
