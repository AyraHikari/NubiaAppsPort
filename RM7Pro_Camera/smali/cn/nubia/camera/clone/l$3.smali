.class Lcn/nubia/camera/clone/l$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/l;->z()V
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

    .line 704
    iput-object p1, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 707
    iget-object v0, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloneViewManager"

    const-string v1, "composeConfirm cancle, because is destroy."

    .line 708
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 711
    :cond_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/clone/j$a;->d:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    .line 712
    iget-object v0, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->b()[B

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 714
    iget-object v0, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->c()V

    .line 715
    iget-object v0, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/a;)Lcn/nubia/camera/clone/a;

    goto :goto_0

    .line 717
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    .line 718
    iput v2, v1, Landroid/os/Message;->what:I

    .line 719
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lcn/nubia/camera/clone/l$3;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->m(Lcn/nubia/camera/clone/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 722
    :goto_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    return-void
.end method
