.class Lb/a/b/c/b/g$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/g;-><init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/c/b/g;


# direct methods
.method constructor <init>(Lb/a/b/c/b/g;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-static {p1}, Lb/a/b/c/b/g;->a(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$d;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-static {p1}, Lb/a/b/c/b/g;->n(Lb/a/b/c/b/g;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-static {p1}, Lb/a/b/c/b/g;->a(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$d;

    move-result-object p1

    invoke-interface {p1, v1}, Lb/a/b/c/b/g$d;->p(Z)V

    :cond_3
    return-void

    .line 6
    :cond_4
    iget-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-static {p1}, Lb/a/b/c/b/g;->a(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$d;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lb/a/b/c/b/g$a;->a:Lb/a/b/c/b/g;

    invoke-static {p1}, Lb/a/b/c/b/g;->a(Lb/a/b/c/b/g;)Lb/a/b/c/b/g$d;

    move-result-object p1

    invoke-interface {p1}, Lb/a/b/c/b/g$d;->h()V

    :cond_5
    return-void
.end method
