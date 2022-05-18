.class Lcn/nubia/choosephoto/b/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/choosephoto/b/a;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/choosephoto/b/a;


# direct methods
.method constructor <init>(Lcn/nubia/choosephoto/b/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/choosephoto/b/a$a;->a:Lcn/nubia/choosephoto/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/choosephoto/b/a$g;

    iget-object v0, p1, Lcn/nubia/choosephoto/b/a$g;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Lcn/nubia/choosephoto/b/a$g;->b:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcn/nubia/choosephoto/b/a$g;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean p1, p1, Lcn/nubia/choosephoto/b/a$g;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/choosephoto/b/a$a;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {p1}, Lcn/nubia/choosephoto/b/a;->a(Lcn/nubia/choosephoto/b/a;)Lc/d/a/a/b/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/nubia/choosephoto/b/a$a;->a:Lcn/nubia/choosephoto/b/a;

    invoke-static {p1}, Lcn/nubia/choosephoto/b/a;->b(Lcn/nubia/choosephoto/b/a;)Lc/d/a/a/b/c;

    move-result-object p1

    :goto_0
    invoke-interface {p1, v2, v1}, Lc/d/a/a/b/c;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_1
    return-void
.end method
