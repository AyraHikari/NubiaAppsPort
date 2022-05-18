.class Lb/a/c/a/e$h;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/a/e;


# direct methods
.method private constructor <init>(Lb/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/c/a/e;Lb/a/c/a/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/c/a/e$h;-><init>(Lb/a/c/a/e;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-nez p1, :cond_5

    .line 4
    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    iget-object v6, v1, Lb/a/c/a/c;->t:Lb/a/a/e/g;

    if-eqz v6, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 5
    :cond_1
    iget-boolean v1, v1, Lb/a/c/a/c;->h:Z

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v6, v0, p1, v5}, Lb/a/a/e/g;->d(III)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 7
    invoke-interface {v6, v0, p1, v5}, Lb/a/a/e/g;->d(III)V

    :cond_3
    :goto_0
    if-ne v0, v2, :cond_4

    .line 8
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    iget-boolean v1, p1, Lb/a/c/a/c;->h:Z

    if-nez v1, :cond_4

    invoke-static {p1}, Lb/a/c/a/e;->r(Lb/a/c/a/e;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1, v5}, Lb/a/c/a/e;->s(Lb/a/c/a/e;Z)Z

    .line 10
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1, v5}, Lb/a/c/a/e;->u(Lb/a/c/a/e;Z)Z

    .line 11
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object p1

    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {v1}, Lb/a/c/a/e;->t(Lb/a/c/a/e;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lb/a/c/a/b;->p(Z)V

    .line 12
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/a/d;->w()V

    .line 13
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object p1

    invoke-virtual {p1, v5}, Lb/a/c/a/d;->B(I)V

    :cond_4
    if-ne v0, v4, :cond_9

    .line 14
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {p1}, Lb/a/c/a/e;->w(Lb/a/c/a/e;)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_9

    if-ne v0, v4, :cond_6

    .line 15
    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    .line 16
    invoke-static {v1}, Lb/a/c/a/e;->t(Lb/a/c/a/e;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {v1}, Lb/a/c/a/e;->x(Lb/a/c/a/e;)Lb/a/c/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/c/a/a;->x()V

    .line 18
    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {v1}, Lb/a/c/a/e;->x(Lb/a/c/a/e;)Lb/a/c/a/a;

    move-result-object v1

    iget-object v2, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    invoke-static {v2}, Lb/a/c/a/e;->v(Lb/a/c/a/e;)Lb/a/c/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/c/a/b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lb/a/c/a/a;->B(I)V

    :cond_6
    if-ne v0, v3, :cond_9

    .line 19
    iget-object v1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    iget-object v1, v1, Lb/a/c/a/c;->t:Lb/a/a/e/g;

    if-eqz v1, :cond_9

    .line 20
    invoke-interface {v1, v0, p1, v5}, Lb/a/a/e/g;->d(III)V

    goto :goto_1

    .line 21
    :cond_7
    iget-object v0, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    iget-object v0, v0, Lb/a/c/a/c;->v:Lb/a/a/c/h;

    if-eqz v0, :cond_9

    .line 22
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lb/a/a/c/h;->f(J)V

    goto :goto_1

    .line 23
    :cond_8
    iget-object p1, p0, Lb/a/c/a/e$h;->a:Lb/a/c/a/e;

    iget-object p1, p1, Lb/a/c/a/c;->u:Lb/a/a/c/f;

    if-eqz p1, :cond_9

    .line 24
    invoke-interface {p1}, Lb/a/a/c/f;->onComplete()V

    :cond_9
    :goto_1
    return-void
.end method
