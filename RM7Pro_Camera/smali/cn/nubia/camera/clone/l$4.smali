.class Lcn/nubia/camera/clone/l$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/clone/l;->H()V
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

    .line 994
    iput-object p1, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 996
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CloneViewManager"

    const-string v1, "handleComposition cancle, because is destroy."

    .line 997
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1000
    :cond_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/clone/j$a;->c:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    .line 1001
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->l(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->n(Lcn/nubia/camera/clone/l;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    .line 1003
    invoke-static {v2}, Lcn/nubia/camera/clone/l;->o(Lcn/nubia/camera/clone/l;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1002
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1005
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v1}, Lcn/nubia/camera/clone/l;->l(Lcn/nubia/camera/clone/l;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/a;->a(Landroid/graphics/Bitmap;)V

    .line 1006
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->c(Lcn/nubia/camera/clone/l;)Lcn/nubia/camera/clone/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/clone/a;->c()V

    .line 1008
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/clone/l;->a(Lcn/nubia/camera/clone/l;Lcn/nubia/camera/clone/a;)Lcn/nubia/camera/clone/a;

    goto :goto_0

    .line 1010
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/clone/l$4;->a:Lcn/nubia/camera/clone/l;

    invoke-static {v0}, Lcn/nubia/camera/clone/l;->m(Lcn/nubia/camera/clone/l;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1012
    :goto_0
    invoke-static {}, Lcn/nubia/camera/clone/j;->a()Lcn/nubia/camera/clone/j;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/clone/j$a;->a:Lcn/nubia/camera/clone/j$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/clone/j;->a(Lcn/nubia/camera/clone/j$a;)V

    return-void
.end method
