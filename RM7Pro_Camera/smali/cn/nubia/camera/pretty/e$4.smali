.class Lcn/nubia/camera/pretty/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/s/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/pretty/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/pretty/e;

.field private b:J

.field private c:Z


# direct methods
.method constructor <init>(Lcn/nubia/camera/pretty/e;)V
    .locals 2

    .line 403
    iput-object p1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 404
    iput-wide v0, p0, Lcn/nubia/camera/pretty/e$4;->b:J

    const/4 p1, 0x0

    .line 406
    iput-boolean p1, p0, Lcn/nubia/camera/pretty/e$4;->c:Z

    return-void
.end method

.method private a()V
    .locals 5

    .line 436
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->n(Lcn/nubia/camera/pretty/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/n/b;->a()Z

    move-result v0

    .line 443
    iget-object v2, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v2}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/n/b;->e()I

    move-result v2

    .line 444
    iget-object v3, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v3}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/n/b;->c()V

    .line 445
    iget-object v3, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Lcn/nubia/camera/n/b;)Lcn/nubia/camera/n/b;

    .line 446
    iget-object v3, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v3, v1}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Z)Z

    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 448
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v2}, Lcn/nubia/camera/pretty/e;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Landroid/view/View;)V

    if-eqz v1, :cond_2

    .line 450
    iget-object v2, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v2}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/camera/n/b;->a(I)V

    .line 452
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v1}, Lcn/nubia/camera/pretty/e;->m(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/n/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/n/b;->b(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->f(Lcn/nubia/camera/pretty/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 467
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v1}, Lcn/nubia/camera/pretty/e;->l(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a$b;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/s/a$b;->b:Lcn/nubia/camera/s/a$b;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    .line 470
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v1}, Lcn/nubia/camera/pretty/e;->o(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v1}, Lcn/nubia/camera/pretty/e;->o(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/pretty/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/camera/pretty/a;->b(I)V

    :cond_2
    return-void
.end method

.method private b(Lcn/nubia/camera/s/a$b;)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/pretty/g;

    .line 457
    invoke-virtual {v0}, Lcn/nubia/camera/pretty/g;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/pretty/h;

    .line 458
    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/h;->a(Lcn/nubia/camera/s/a$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/s/a$b;)V
    .locals 6

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-virtual {v0}, Lcn/nubia/camera/pretty/e;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/camera/pretty/e$4;->c:Z

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0}, Lcn/nubia/camera/pretty/e;->k(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/camera/s/a$b;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;I)V

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcn/nubia/camera/pretty/e$4;->c:Z

    .line 418
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 419
    iget-wide v2, p0, Lcn/nubia/camera/pretty/e$4;->b:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    return-void

    .line 423
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v2}, Lcn/nubia/camera/pretty/e;->l(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a$b;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGenderChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrettyFragment"

    invoke-static {v3, v2}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iput-wide v0, p0, Lcn/nubia/camera/pretty/e$4;->b:J

    .line 426
    iget-object v0, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/pretty/e;->a(Lcn/nubia/camera/pretty/e;Lcn/nubia/camera/s/a$b;)Lcn/nubia/camera/s/a$b;

    .line 427
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e$4;->a()V

    .line 428
    iget-object p1, p0, Lcn/nubia/camera/pretty/e$4;->a:Lcn/nubia/camera/pretty/e;

    invoke-static {p1}, Lcn/nubia/camera/pretty/e;->l(Lcn/nubia/camera/pretty/e;)Lcn/nubia/camera/s/a$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/e$4;->b(Lcn/nubia/camera/s/a$b;)V

    .line 431
    invoke-direct {p0}, Lcn/nubia/camera/pretty/e$4;->b()V

    :cond_3
    return-void
.end method
