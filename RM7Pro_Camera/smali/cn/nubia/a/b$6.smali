.class Lcn/nubia/a/b$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/b;->a([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/a/d;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->h(Lcn/nubia/a/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 392
    invoke-static {v0}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 393
    invoke-virtual {v0}, Lcn/nubia/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 394
    invoke-virtual {v0}, Lcn/nubia/a/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 403
    invoke-static {v0}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {v0, v1}, Lcn/nubia/a/e;->b(Lcn/nubia/a/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    :cond_1
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 405
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->i(Lcn/nubia/a/b;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 407
    invoke-static {v1}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v1

    iget-object v1, v1, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {v1}, Lcn/nubia/a/c;->c()I

    move-result v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 409
    :cond_2
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;Lcn/nubia/a/d;)Lcn/nubia/a/d;

    .line 410
    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0, p1}, Lcn/nubia/a/b;->b(Lcn/nubia/a/b;Lcn/nubia/a/d;)Lcn/nubia/a/d;

    .line 411
    iget-object p1, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    iget v0, v0, Lcn/nubia/a/d;->a:I

    invoke-virtual {p1, v0}, Lcn/nubia/a/b;->a(I)V

    .line 412
    iget-object p1, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-virtual {p1}, Lcn/nubia/a/b;->c()V

    :cond_3
    return-void

    .line 395
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSwitchMember: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->h(Lcn/nubia/a/b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; ActivityPause: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 396
    invoke-static {v0}, Lcn/nubia/a/b;->a(Lcn/nubia/a/b;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; CameraFamilyAnimating: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 397
    invoke-virtual {v0}, Lcn/nubia/a/b;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "; CameraFamily Visibility: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$6;->a:Lcn/nubia/a/b;

    .line 398
    invoke-virtual {v0}, Lcn/nubia/a/b;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraFamilyFragment"

    .line 395
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
