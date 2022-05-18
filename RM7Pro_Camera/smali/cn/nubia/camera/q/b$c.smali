.class Lcn/nubia/camera/q/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/l/a/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/q/b;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/q/b;Lcn/nubia/camera/q/b$1;)V
    .locals 0

    .line 485
    invoke-direct {p0, p1}, Lcn/nubia/camera/q/b$c;-><init>(Lcn/nubia/camera/q/b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 489
    iget-object v2, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v2}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {v2}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->I()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    iget-object p1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->d(Z)V

    .line 491
    iget-object p1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-virtual {p1}, Lcn/nubia/camera/q/b;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/camera/ad/a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 493
    :cond_0
    iget-object v2, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v2}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/common/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_2

    .line 497
    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->b(Lcn/nubia/camera/q/b;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->c(Lcn/nubia/camera/q/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 498
    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->d(Lcn/nubia/camera/q/b;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->d(Lcn/nubia/camera/q/b;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 502
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1, v0}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b;Z)Z

    .line 503
    iget-object v0, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->f(Lcn/nubia/camera/q/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v1}, Lcn/nubia/camera/q/b;->e(Lcn/nubia/camera/q/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0}, Lcn/nubia/camera/q/b;->f(Lcn/nubia/camera/q/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {v0, p1}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 509
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/q/b$c;->a:Lcn/nubia/camera/q/b;

    invoke-static {p1, p2}, Lcn/nubia/camera/q/b;->a(Lcn/nubia/camera/q/b;Landroid/net/Uri;)Landroid/net/Uri;

    return-void
.end method
