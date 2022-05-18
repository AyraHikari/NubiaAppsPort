.class Lcn/nubia/camera/k/ah$3;
.super Lcn/nubia/b/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/ah;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-direct {p0}, Lcn/nubia/b/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 940
    invoke-super {p0}, Lcn/nubia/b/a$c;->a()V

    const-string v0, "StreamController"

    const-string v1, "config session has been cancelled"

    .line 941
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/b/a;)V
    .locals 2

    .line 895
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StreamController"

    const-string v1, "create capturesession success"

    .line 898
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->m(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->q()Lcn/nubia/camera/k/aa;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->m(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->q()Lcn/nubia/camera/k/aa;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/k/aa;->d()V

    .line 902
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0, p1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah;Lcn/nubia/b/a;)Lcn/nubia/b/a;

    .line 904
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->n(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 905
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->n(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->o(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/k/ah$b;->onConfingSuccess(Lcn/nubia/b/a;)V

    .line 907
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->p(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 908
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->p(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/ah$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->o(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/nubia/camera/k/ah$b;->onConfingSuccess(Lcn/nubia/b/a;)V

    .line 910
    :cond_3
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->C()V

    .line 912
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->q(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->a()Z

    .line 913
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->B()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 916
    :cond_4
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->r(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/d;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 917
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->a()V

    .line 919
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->E()Z

    move-result p1

    if-nez p1, :cond_5

    .line 920
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->s(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 923
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->t(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/b/e;->b()V

    .line 925
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->C()V

    return-void
.end method

.method public b(Lcn/nubia/b/a;)V
    .locals 1

    const-string p1, "StreamController"

    const-string v0, "create capturesession failed"

    .line 930
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p1, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {p1}, Lcn/nubia/camera/k/ah;->u(Lcn/nubia/camera/k/ah;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 932
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->m(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->q()Lcn/nubia/camera/k/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->r(Lcn/nubia/camera/k/ah;)Lcn/nubia/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcn/nubia/camera/k/ah$3;->a:Lcn/nubia/camera/k/ah;

    invoke-static {v0}, Lcn/nubia/camera/k/ah;->m(Lcn/nubia/camera/k/ah;)Lcn/nubia/camera/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/h;->q()Lcn/nubia/camera/k/aa;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/k/aa;->c()V

    .line 935
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
