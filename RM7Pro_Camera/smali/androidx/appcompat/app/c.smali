.class public Landroidx/appcompat/app/c;
.super Landroidx/fragment/app/d;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/d;
.implements Landroidx/core/app/g$a;


# instance fields
.field private j:Landroidx/appcompat/app/e;

.field private k:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    return-void
.end method

.method private b(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/b;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/core/app/g;)V
    .locals 0

    .line 381
    invoke-virtual {p1, p0}, Landroidx/core/app/g;->a(Landroid/app/Activity;)Landroidx/core/app/g;

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 0

    .line 481
    invoke-static {p0, p1}, Landroidx/core/app/e;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/fragment/app/d;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .line 497
    invoke-static {p0, p1}, Landroidx/core/app/e;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public b(Landroidx/appcompat/view/b;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/core/app/g;)V
    .locals 0

    return-void
.end method

.method public closeOptionsMenu()V
    .locals 3

    .line 620
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 621
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/d;->closeOptionsMenu()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 563
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 564
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v1

    const/16 v2, 0x52

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 569
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public f()Landroidx/appcompat/app/a;
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()V
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->f()V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 574
    iget-object v0, p0, Landroidx/appcompat/app/c;->k:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/appcompat/widget/bc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Landroidx/appcompat/widget/bc;

    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/bc;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/app/c;->k:Landroid/content/res/Resources;

    .line 577
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/c;->k:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 426
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->i()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-static {p0}, Landroidx/core/app/g;->a(Landroid/content/Context;)Landroidx/core/app/g;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->a(Landroidx/core/app/g;)V

    .line 432
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->b(Landroidx/core/app/g;)V

    .line 433
    invoke-virtual {v0}, Landroidx/core/app/g;->a()V

    .line 436
    :try_start_0
    invoke-static {p0}, Landroidx/core/app/a;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->finish()V

    goto :goto_0

    .line 445
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->b(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()Landroid/content/Intent;
    .locals 1

    .line 464
    invoke-static {p0}, Landroidx/core/app/e;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->f()V

    return-void
.end method

.method public j()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public k()Landroidx/appcompat/app/e;
    .locals 1

    .line 553
    iget-object v0, p0, Landroidx/appcompat/app/c;->j:Landroidx/appcompat/app/e;

    if-nez v0, :cond_0

    .line 554
    invoke-static {p0, p0}, Landroidx/appcompat/app/e;->a(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/c;->j:Landroidx/appcompat/app/e;

    .line 556
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/c;->j:Landroidx/appcompat/app/e;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 190
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget-object v0, p0, Landroidx/appcompat/app/c;->k:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 195
    invoke-super {p0}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 196
    iget-object v1, p0, Landroidx/appcompat/app/c;->k:Landroid/content/res/Resources;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 504
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->j()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/appcompat/app/e;->h()V

    .line 114
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/os/Bundle;)V

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroidx/fragment/app/d;->onDestroy()V

    .line 243
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->g()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 603
    invoke-direct {p0, p2}, Landroidx/appcompat/app/c;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 606
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 228
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object p1

    .line 233
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x102002c

    if-ne p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroidx/appcompat/app/a;->a()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->h()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 0

    .line 528
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .line 539
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onPostCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroidx/fragment/app/d;->onPostResume()V

    .line 205
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->e()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 544
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 210
    invoke-super {p0}, Landroidx/fragment/app/d;->onStart()V

    .line 211
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 216
    invoke-super {p0}, Landroidx/fragment/app/d;->onStop()V

    .line 217
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/e;->d()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 248
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/d;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 249
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .line 611
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->f()Landroidx/appcompat/app/a;

    move-result-object v0

    .line 612
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/d;->openOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/e;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->setTheme(I)V

    .line 121
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e;->a(I)V

    return-void
.end method
