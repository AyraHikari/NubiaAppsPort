.class Lcn/nubia/k/a/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/k/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/k/a/a;Landroid/os/Looper;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {v0}, Lcn/nubia/k/a/a;->c(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/k/a/a$c;

    .line 70
    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {v0}, Lcn/nubia/k/a/a;->c(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/a$a;

    move-result-object v0

    iget-wide v1, p1, Lcn/nubia/k/a/a$c;->a:J

    iget-boolean p1, p1, Lcn/nubia/k/a/a$c;->b:Z

    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/k/a/a$a;->b(JZ)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {v0}, Lcn/nubia/k/a/a;->c(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/a$a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/k/a/a$c;

    .line 64
    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {v0}, Lcn/nubia/k/a/a;->c(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/a$a;

    move-result-object v0

    iget-wide v1, p1, Lcn/nubia/k/a/a$c;->a:J

    iget-boolean p1, p1, Lcn/nubia/k/a/a$c;->b:Z

    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/k/a/a$a;->a(JZ)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/k/a/b;

    invoke-static {v0, p1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;Lcn/nubia/k/a/b;)Lcn/nubia/k/a/b;

    .line 46
    iget-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {p1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 49
    :cond_3
    iget-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {p1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    sget-object v0, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne p1, v0, :cond_4

    .line 50
    iget-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {p1}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {v0}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcn/nubia/k/a/e;->c(Landroid/net/Uri;)Z

    .line 55
    :cond_4
    iget-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {p1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    if-eqz p1, :cond_5

    .line 56
    iget-object p1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    invoke-static {p1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/k/a/b;->b:Lcn/nubia/k/b/d;

    iget-object v0, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    .line 57
    invoke-static {v0}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/k/a/b;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/k/a/a$1;->a:Lcn/nubia/k/a/a;

    .line 58
    invoke-static {v1}, Lcn/nubia/k/a/a;->a(Lcn/nubia/k/a/a;)Lcn/nubia/k/a/b;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/k/a/b;->c:Lcn/nubia/k/a/b$a;

    .line 56
    invoke-interface {p1, v0, v1}, Lcn/nubia/k/b/d;->a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V

    :cond_5
    :goto_0
    return-void
.end method
