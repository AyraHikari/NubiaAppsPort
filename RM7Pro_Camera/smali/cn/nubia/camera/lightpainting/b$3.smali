.class Lcn/nubia/camera/lightpainting/b$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;Z)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    iput-boolean p2, p0, Lcn/nubia/camera/lightpainting/b$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 662
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 663
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    iget-boolean v1, p0, Lcn/nubia/camera/lightpainting/b$3;->a:Z

    invoke-static {v0, v1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;Z)V

    .line 664
    iget-object v0, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v0}, Lcn/nubia/camera/lightpainting/b;->r(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/lightpainting/b;->a(Lcn/nubia/camera/lightpainting/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 666
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->s(Lcn/nubia/camera/lightpainting/b;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {v1}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    .line 667
    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->t(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v2}, Lcn/nubia/camera/d/b;->a()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 668
    iget-object v1, p0, Lcn/nubia/camera/lightpainting/b$3;->b:Lcn/nubia/camera/lightpainting/b;

    invoke-static {v1}, Lcn/nubia/camera/lightpainting/b;->u(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 670
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
