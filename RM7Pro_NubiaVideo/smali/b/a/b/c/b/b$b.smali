.class Lb/a/b/c/b/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/b/c/b/b;


# direct methods
.method constructor <init>(Lb/a/b/c/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/b$b;->a:Lb/a/b/c/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/b$b;->a:Lb/a/b/c/b/b;

    invoke-static {v0}, Lb/a/b/c/b/b;->e(Lb/a/b/c/b/b;)Lb/a/b/c/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c/b/g;->B()Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/b$b;->a:Lb/a/b/c/b/b;

    invoke-static {v1}, Lb/a/b/c/b/b;->f(Lb/a/b/c/b/b;)Lcn/nubia/video/list/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/b$b;->a:Lb/a/b/c/b/b;

    invoke-static {v1}, Lb/a/b/c/b/b;->f(Lb/a/b/c/b/b;)Lcn/nubia/video/list/app/a;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/m;->v(Lcn/nubia/video/list/app/a;I)Lb/a/b/e/d$c;

    move-result-object v0

    sget-object v1, Lb/a/b/e/d;->d:Lb/a/b/e/d$d;

    .line 4
    invoke-interface {v0, v1}, Lb/a/b/e/d$c;->a(Lb/a/b/e/d$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    iput v2, v1, Landroid/os/Message;->what:I

    .line 7
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lb/a/b/c/b/b$b;->a:Lb/a/b/c/b/b;

    invoke-static {v0}, Lb/a/b/c/b/b;->g(Lb/a/b/c/b/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
