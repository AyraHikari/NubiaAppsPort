.class Lcn/nubia/camera/aj/c$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/s/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c;

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 2

    .line 748
    iput-object p1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 749
    iput-wide v0, p0, Lcn/nubia/camera/aj/c$5;->b:J

    const/4 p1, 0x0

    .line 751
    iput-boolean p1, p0, Lcn/nubia/camera/aj/c$5;->c:Z

    return-void
.end method

.method private a()V
    .locals 5

    .line 784
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->u(Lcn/nubia/camera/aj/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    .line 791
    iget-object v2, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v2}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/n/b;->e()I

    move-result v2

    .line 792
    iget-object v3, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v3}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/n/b;->c()V

    .line 793
    iget-object v3, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;

    .line 794
    iget-object v3, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v3, v1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Z)Z

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 796
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v2}, Lcn/nubia/camera/aj/c;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Landroid/view/View;)V

    if-eqz v1, :cond_2

    .line 798
    iget-object v2, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v2}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/n/b;->a(I)V

    .line 800
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->t(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/n/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/n/b;->b(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 810
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->g(Lcn/nubia/camera/aj/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 815
    iget-object v1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->s(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/s/a$b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 818
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->v(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 819
    iget-object v1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v1}, Lcn/nubia/camera/aj/c;->v(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/camera/pretty/a;->b(I)V

    :cond_2
    return-void
.end method

.method private b(Lcn/nubia/camera/s/a$b;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aj/e;

    .line 805
    invoke-virtual {v0}, Lcn/nubia/camera/aj/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/aj/g;

    .line 806
    invoke-virtual {v0, p1}, Lcn/nubia/camera/aj/g;->a(Lcn/nubia/camera/s/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 8

    .line 755
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/aj/c$5;->c:Z

    const-string v1, "NormalFragment"

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->r(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;I)V

    const/4 v0, 0x1

    .line 760
    iput-boolean v0, p0, Lcn/nubia/camera/aj/c$5;->c:Z

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhoujiayu "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/s/a$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/camera/aj/c$5;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 765
    iget-wide v4, p0, Lcn/nubia/camera/aj/c$5;->b:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    return-void

    .line 769
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->s(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/s/a$b;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenderChanged "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0, p1}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;

    .line 772
    iput-wide v2, p0, Lcn/nubia/camera/aj/c$5;->b:J

    .line 774
    invoke-direct {p0}, Lcn/nubia/camera/aj/c$5;->a()V

    .line 776
    iget-object p1, p0, Lcn/nubia/camera/aj/c$5;->a:Lcn/nubia/camera/aj/c;

    invoke-static {p1}, Lcn/nubia/camera/aj/c;->s(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/s/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/c$5;->b(Lcn/nubia/camera/s/a$b;)V

    .line 779
    invoke-direct {p0}, Lcn/nubia/camera/aj/c$5;->b()V

    :cond_3
    return-void
.end method
