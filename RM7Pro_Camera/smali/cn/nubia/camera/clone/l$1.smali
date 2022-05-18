.class Lcn/nubia/camera/clone/l$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/clone/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/clone/l;


# direct methods
.method constructor <init>(Lcn/nubia/camera/clone/l;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;I)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->f(Lcn/nubia/camera/clone/l;)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->g(Lcn/nubia/camera/clone/l;)I

    move-result v1

    .line 200
    iget-object v2, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->h(Lcn/nubia/camera/clone/l;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->h(Lcn/nubia/camera/clone/l;)I

    move-result v2

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    .line 201
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->g(Lcn/nubia/camera/clone/l;)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->f(Lcn/nubia/camera/clone/l;)I

    move-result v1

    .line 204
    :cond_4
    iget-object v2, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->i(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/l$a;

    move-result-object v2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    invoke-interface {v2, p1, v0, v1}, Lcn/nubia/camera/clone/l$a;->a([BII)V

    .line 205
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;)V

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->j(Lcn/nubia/camera/clone/l;)V

    goto :goto_0

    .line 194
    :cond_5
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->d(Lcn/nubia/camera/clone/l;)V

    .line 195
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;)V

    goto :goto_0

    .line 186
    :cond_6
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->b(Lcn/nubia/camera/clone/l;)V

    .line 187
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/clone/a;->a()I

    move-result p1

    if-lt p1, v2, :cond_7

    .line 188
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->d(Lcn/nubia/camera/clone/l;)V

    goto :goto_0

    .line 190
    :cond_7
    iget-object p1, p0, Lcn/nubia/camera/clone/l$1;->a:Lcn/nubia/camera/clone/l;

    invoke-static {p1}, Lcn/nubia/camera/clone/l;->e(Lcn/nubia/camera/clone/l;)V

    :goto_0
    return-void
.end method
