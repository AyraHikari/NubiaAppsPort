.class Lcn/nubia/camera/clone/l$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/l;->b(Landroid/view/View;)V
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

    .line 644
    iput-object p1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->k(Lcn/nubia/camera/clone/l;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CloneViewManager"

    const-string v2, "showEditPreview cancle, because is destroy."

    .line 648
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    monitor-exit v0

    return-void

    .line 651
    :cond_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/clone/j$a;->h:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    .line 652
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v2}, Lcn/nubia/camera/clone/l;->l(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/clone/a;->b(Landroid/graphics/Bitmap;)V

    .line 653
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 654
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/clone/a;->c()V

    .line 655
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/a;)Lcn/nubia/camera/clone/a;

    goto :goto_0

    .line 657
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/clone/l$2;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->m(Lcn/nubia/camera/clone/l;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 659
    :goto_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    .line 660
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
