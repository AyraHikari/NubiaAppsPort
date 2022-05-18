.class Lcn/nubia/camera/x/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/x/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/x/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/x/a;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V
    .locals 1

    .line 678
    iget-object p2, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {p2, p1}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;Lcn/nubia/camera/k/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 679
    iget-object p2, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {p2}, Lcn/nubia/camera/x/a;->h(Lcn/nubia/camera/x/a;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 680
    iget-object p2, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {p2, p1}, Lcn/nubia/camera/x/a;->b(Lcn/nubia/camera/x/a;Lcn/nubia/camera/k/e;)Lcn/nubia/camera/k/e;

    .line 682
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/x/a;->a(Lcn/nubia/camera/x/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 683
    iget-object p1, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {p1}, Lcn/nubia/camera/x/a;->j(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcn/nubia/camera/x/a$6$1;

    invoke-direct {p2, p0}, Lcn/nubia/camera/x/a$6$1;-><init>(Lcn/nubia/camera/x/a$6;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 690
    iget-object p1, p0, Lcn/nubia/camera/x/a$6;->a:Lcn/nubia/camera/x/a;

    invoke-static {p1}, Lcn/nubia/camera/x/a;->k(Lcn/nubia/camera/x/a;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 675
    check-cast p1, Lcn/nubia/camera/k/e;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/x/a$6;->a(Lcn/nubia/camera/k/e;Lcn/nubia/b/d;)V

    return-void
.end method
