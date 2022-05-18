.class Lcn/nubia/camera/r/e$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    const-string v0, "FreezeVideoFragment"

    const-string v1, "phone is shaking"

    .line 738
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Z)Z

    .line 740
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    .line 741
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->l(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/r/e$7$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/e$7$1;-><init>(Lcn/nubia/camera/r/e$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 753
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->m(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    .line 754
    invoke-static {v0}, Lcn/nubia/camera/r/e;->n(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    .line 755
    invoke-virtual {v0}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->L()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    .line 756
    invoke-static {v0}, Lcn/nubia/camera/r/e;->o(Lcn/nubia/camera/r/e;)Lcom/android/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;Z)Z

    .line 760
    iget-object p1, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-virtual {p1}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/r/g;

    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->p(Lcn/nubia/camera/r/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/g;->f(Z)Z

    move-result p1

    .line 761
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-virtual {v0}, Lcn/nubia/camera/r/e;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcn/nubia/camera/r/e$7;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/r/e;->d(Lcn/nubia/camera/r/e;Z)V

    :cond_1
    :goto_0
    return-void
.end method
