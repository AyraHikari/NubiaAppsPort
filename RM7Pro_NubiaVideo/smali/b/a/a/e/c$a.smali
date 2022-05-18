.class Lb/a/a/e/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Lb/a/a/e/c;

.field final synthetic b:Lb/a/a/e/c;


# direct methods
.method public constructor <init>(Lb/a/a/e/c;Lb/a/a/e/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p2, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {v0}, Lb/a/a/e/c;->g(Lb/a/a/e/c;)Lb/a/a/e/c$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {v0}, Lb/a/a/e/c;->g(Lb/a/a/e/c;)Lb/a/a/e/c$c;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lb/a/a/e/c$c;->a(Lb/a/a/e/c;II)Z

    .line 4
    :cond_1
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->b(Lb/a/a/e/c;)V

    goto/16 :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->b(Lb/a/a/e/c;)V

    goto/16 :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->h(Lb/a/a/e/c;)V

    goto/16 :goto_0

    .line 7
    :cond_4
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->d(Lb/a/a/e/c;)Lb/a/a/e/c$f;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 8
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->d(Lb/a/a/e/c;)Lb/a/a/e/c$f;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    invoke-interface {p1, v0}, Lb/a/a/e/c$f;->a(Lb/a/a/e/c;)V

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {v0}, Lb/a/a/e/c;->f(Lb/a/a/e/c;)Lb/a/a/e/c$g;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 11
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 12
    iget-object v2, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-virtual {v2}, Lb/a/a/e/c;->l()I

    move-result v2

    if-nez v2, :cond_6

    .line 13
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 14
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 15
    :cond_6
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->f(Lb/a/a/e/c;)Lb/a/a/e/c$g;

    move-result-object p1

    iget-object v2, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    invoke-interface {p1, v2, v0, v1}, Lb/a/a/e/c$g;->a(Lb/a/a/e/c;II)V

    goto :goto_0

    .line 16
    :cond_7
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->e(Lb/a/a/e/c;)Lb/a/a/e/c$e;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 17
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->e(Lb/a/a/e/c;)Lb/a/a/e/c$e;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    invoke-interface {p1, v0}, Lb/a/a/e/c$e;->a(Lb/a/a/e/c;)V

    goto :goto_0

    .line 18
    :cond_8
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->b(Lb/a/a/e/c;)V

    .line 19
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->c(Lb/a/a/e/c;)Lb/a/a/e/c$b;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 20
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->c(Lb/a/a/e/c;)Lb/a/a/e/c$b;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    invoke-interface {p1, v0}, Lb/a/a/e/c$b;->a(Lb/a/a/e/c;)V

    goto :goto_0

    .line 21
    :cond_9
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->a(Lb/a/a/e/c;)Lb/a/a/e/c$d;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 22
    iget-object p1, p0, Lb/a/a/e/c$a;->b:Lb/a/a/e/c;

    invoke-static {p1}, Lb/a/a/e/c;->a(Lb/a/a/e/c;)Lb/a/a/e/c$d;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/e/c$a;->a:Lb/a/a/e/c;

    invoke-interface {p1, v0}, Lb/a/a/e/c$d;->a(Lb/a/a/e/c;)V

    :cond_a
    :goto_0
    return-void
.end method
