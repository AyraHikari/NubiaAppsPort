.class Lcn/nubia/camera/ay/a$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ay/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ay/a;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->f(Lcn/nubia/camera/ay/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/ay/a;->b(Lcn/nubia/camera/ay/a;Z)Z

    .line 274
    invoke-static {}, Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;->PreRegister()I

    move-result v0

    .line 275
    invoke-static {}, Lcn/nubia/algorithm/camera/TrajectoryAlgorithm;->ComposePrepare()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Trajectory"

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v1}, Lcn/nubia/camera/ay/a;->g(Lcn/nubia/camera/ay/a;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    iget-object v1, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v1}, Lcn/nubia/camera/ay/a;->h(Lcn/nubia/camera/ay/a;)Landroid/os/Handler;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreRegister finish. ret = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0, v2}, Lcn/nubia/camera/ay/a;->b(Lcn/nubia/camera/ay/a;Z)Z

    return-void

    .line 277
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreRegister failed: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; ret2 = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->g(Lcn/nubia/camera/ay/a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 280
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0}, Lcn/nubia/camera/ay/a;->h(Lcn/nubia/camera/ay/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/ay/a$3;->a:Lcn/nubia/camera/ay/a;

    invoke-static {v0, v2}, Lcn/nubia/camera/ay/a;->b(Lcn/nubia/camera/ay/a;Z)Z

    return-void
.end method
