.class Lcn/nubia/choosephoto/b/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/b/a;->t(Ljava/lang/String;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcn/nubia/choosephoto/b/a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/b/a;Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    iput-object p2, p0, Lcn/nubia/choosephoto/b/a$e;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/nubia/choosephoto/b/a$e;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcn/nubia/choosephoto/b/a$e;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    iget-object v1, p0, Lcn/nubia/choosephoto/b/a$e;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcn/nubia/choosephoto/b/a;->i(Lcn/nubia/choosephoto/b/a;Landroid/widget/ImageView;)Lcn/nubia/choosephoto/b/a$f;

    move-result-object v0

    iget v1, v0, Lcn/nubia/choosephoto/b/a$f;->a:I

    iget v0, v0, Lcn/nubia/choosephoto/b/a$f;->b:I

    iget-object v2, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    iget-object v3, p0, Lcn/nubia/choosephoto/b/a$e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcn/nubia/choosephoto/b/a;->n(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcn/nubia/choosephoto/b/a$g;

    iget-object v2, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/choosephoto/b/a$g;-><init>(Lcn/nubia/choosephoto/b/a;Lcn/nubia/choosephoto/b/a$a;)V

    iget-object v3, p0, Lcn/nubia/choosephoto/b/a$e;->a:Landroid/widget/ImageView;

    iput-object v3, v1, Lcn/nubia/choosephoto/b/a$g;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/choosephoto/b/a$e;->b:Ljava/lang/String;

    iput-object v3, v1, Lcn/nubia/choosephoto/b/a$g;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/choosephoto/b/a$e;->c:Z

    iput-boolean v3, v1, Lcn/nubia/choosephoto/b/a$g;->a:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcn/nubia/choosephoto/b/a;->j(Lcn/nubia/choosephoto/b/a;)Lcn/nubia/choosephoto/b/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcn/nubia/choosephoto/b/b;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lcn/nubia/choosephoto/b/a$g;->b:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    invoke-static {v1}, Lcn/nubia/choosephoto/b/a;->c(Lcn/nubia/choosephoto/b/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcn/nubia/choosephoto/b/a$e;->d:Lcn/nubia/choosephoto/b/a;

    invoke-static {v0}, Lcn/nubia/choosephoto/b/a;->g(Lcn/nubia/choosephoto/b/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
