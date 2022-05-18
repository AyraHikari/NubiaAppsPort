.class Lb/a/a/e/b$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lb/a/a/e/b;

.field final synthetic b:Lb/a/a/e/b;


# direct methods
.method public constructor <init>(Lb/a/a/e/b;Lb/a/a/e/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p2, p0, Lb/a/a/e/b$c;->a:Lb/a/a/e/b;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->k(Lb/a/a/e/b;)Lb/a/a/e/b$e;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {v0}, Lb/a/a/e/b;->k(Lb/a/a/e/b;)Lb/a/a/e/b$e;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/e/b$c;->a:Lb/a/a/e/b;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lb/a/a/e/b$e;->a(Lb/a/a/e/b;II)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->j(Lb/a/a/e/b;)Lb/a/a/e/b$g;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->j(Lb/a/a/e/b;)Lb/a/a/e/b$g;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/b$c;->a:Lb/a/a/e/b;

    invoke-interface {p1, v0}, Lb/a/a/e/b$g;->a(Lb/a/a/e/b;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->g(Lb/a/a/e/b;)Lb/a/a/e/b$d;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->g(Lb/a/a/e/b;)Lb/a/a/e/b$d;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/b$c;->a:Lb/a/a/e/b;

    invoke-interface {p1, v0}, Lb/a/a/e/b$d;->a(Lb/a/a/e/b;)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->e(Lb/a/a/e/b;)Lb/a/a/e/b$f;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lb/a/a/e/b$c;->b:Lb/a/a/e/b;

    invoke-static {p1}, Lb/a/a/e/b;->e(Lb/a/a/e/b;)Lb/a/a/e/b$f;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/b$c;->a:Lb/a/a/e/b;

    invoke-interface {p1, v0}, Lb/a/a/e/b$f;->a(Lb/a/a/e/b;)V

    :cond_4
    :goto_0
    return-void
.end method
