.class Lcn/nubia/camera/k/ah$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/q;

.field final synthetic b:Lcn/nubia/camera/k/u;

.field final synthetic c:[Lcn/nubia/b/m;

.field final synthetic d:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    iput-object p2, p0, Lcn/nubia/camera/k/ah$12;->a:Lcn/nubia/camera/k/q;

    iput-object p3, p0, Lcn/nubia/camera/k/ah$12;->b:Lcn/nubia/camera/k/u;

    iput-object p4, p0, Lcn/nubia/camera/k/ah$12;->c:[Lcn/nubia/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "StreamController"

    const-string v1, "timeout capture"

    .line 715
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    invoke-static {v1}, Lcn/nubia/camera/k/ah;->c(Lcn/nubia/camera/k/ah;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    iget-object v1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Z)Z

    .line 719
    iget-object v1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    monitor-exit v0

    return-void

    .line 722
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    iget-object v2, p0, Lcn/nubia/camera/k/ah$12;->a:Lcn/nubia/camera/k/q;

    iget-object v3, p0, Lcn/nubia/camera/k/ah$12;->b:Lcn/nubia/camera/k/u;

    iget-object v4, p0, Lcn/nubia/camera/k/ah$12;->c:[Lcn/nubia/b/m;

    invoke-static {v1, v2, v3, v4}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/u;[Lcn/nubia/b/m;)V

    .line 723
    iget-object v1, p0, Lcn/nubia/camera/k/ah$12;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->C()V

    .line 725
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
