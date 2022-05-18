.class Landroidx/appcompat/app/j;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/j$b;,
        Landroidx/appcompat/app/j$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/ae;

.field b:Landroid/view/Window$Callback;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private h()Landroid/view/Menu;
    .locals 3

    .line 544
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->c:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    new-instance v1, Landroidx/appcompat/app/j$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/j$a;-><init>(Landroidx/appcompat/app/j;)V

    new-instance v2, Landroidx/appcompat/app/j$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/j$b;-><init>(Landroidx/appcompat/app/j;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->c:Z

    .line 549
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->o()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/f/u;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 477
    invoke-direct {p0}, Landroidx/appcompat/app/j;->h()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 479
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 482
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->c()Z

    :cond_0
    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->k()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->l()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 3

    .line 505
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->d:Z

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 512
    iget-object v2, p0, Landroidx/appcompat/app/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 2

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/f/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
