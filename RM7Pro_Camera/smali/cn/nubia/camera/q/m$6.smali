.class Lcn/nubia/camera/q/m$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 328
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {p1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcn/nubia/camera/d/e;->e:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_7

    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    .line 331
    invoke-virtual {p1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    .line 334
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->g(Lcn/nubia/camera/q/m;)V

    .line 335
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->h(Lcn/nubia/camera/q/m;)V

    .line 336
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->i(Lcn/nubia/camera/q/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->j(Lcn/nubia/camera/q/m;)Landroid/animation/AnimatorSet;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->k(Lcn/nubia/camera/q/m;)Landroid/animation/AnimatorSet;

    move-result-object p1

    .line 337
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->i(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 338
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->m(Lcn/nubia/camera/q/m;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m;Z)Z

    .line 341
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->m(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->n(Lcn/nubia/camera/q/m;)Z

    .line 343
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    goto :goto_2

    .line 345
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->o(Lcn/nubia/camera/q/m;)V

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->p(Lcn/nubia/camera/q/m;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setAlpha(F)V

    .line 347
    iget-object v0, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->l(Lcn/nubia/camera/q/m;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {v2}, Lcn/nubia/camera/q/m;->j(Lcn/nubia/camera/q/m;)Landroid/animation/AnimatorSet;

    move-result-object v2

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 348
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 350
    :goto_2
    iget-object p1, p0, Lcn/nubia/camera/q/m$6;->a:Lcn/nubia/camera/q/m;

    invoke-static {p1}, Lcn/nubia/camera/q/m;->m(Lcn/nubia/camera/q/m;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Showing topbar more"

    goto :goto_3

    :cond_6
    const-string p1, "Hiding topbar more"

    :goto_3
    const-string v0, "TopBarFragment"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method
