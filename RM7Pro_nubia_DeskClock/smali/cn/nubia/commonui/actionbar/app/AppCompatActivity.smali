.class public Lcn/nubia/commonui/actionbar/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/AppCompatCallback;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$DelegateProvider;


# instance fields
.field private mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method public getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getActionBarContextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    goto :goto_0
.end method

.method public getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    if-nez v0, :cond_0

    .line 415
    invoke-static {p0, p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->create(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    .line 417
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->mDelegate:Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->getDrawerToggleDelegate()Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 355
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 198
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 130
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onSupportContentChanged()V

    .line 395
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->installViewFactory()V

    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .prologue
    .line 274
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 275
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onDestroy()V

    .line 162
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 151
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 155
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 141
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onPostResume()V

    .line 142
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/TaskStackBuilder;

    .prologue
    .line 293
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 135
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->onStop()V

    .line 136
    return-void
.end method

.method public onSupportActionModeFinished(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 216
    return-void
.end method

.method public onSupportActionModeStarted(Lcn/nubia/commonui/actionbar/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcn/nubia/commonui/actionbar/view/ActionMode;

    .prologue
    .line 207
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 321
    .local v2, "upIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 322
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 324
    .local v0, "b":Landroid/support/v4/app/TaskStackBuilder;
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 325
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 326
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 329
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :goto_0
    const/4 v3, 0x1

    .line 342
    :goto_1
    return v3

    .line 330
    .restart local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 338
    .end local v0    # "b":Landroid/support/v4/app/TaskStackBuilder;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 167
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setBottomItemIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "closeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "selectDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 437
    .local v0, "abc":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setBottomItemIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(I)V

    .line 109
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public setSelectButtonListener(Landroid/view/View$OnClickListener;)Z
    .locals 2
    .param p1, "ln"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getActionBarContextView()Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;

    move-result-object v0

    .line 432
    .local v0, "abc":Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ActionBarContextView;->setBottomSelectListener(Landroid/view/View$OnClickListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSupportActionBar(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 98
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->setSupportActionBar(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    .line 99
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    return-void
.end method

.method public startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;

    .prologue
    .line 219
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 191
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0
    .param p1, "upIntent"    # Landroid/content/Intent;

    .prologue
    .line 388
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->getDelegate()Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 372
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
