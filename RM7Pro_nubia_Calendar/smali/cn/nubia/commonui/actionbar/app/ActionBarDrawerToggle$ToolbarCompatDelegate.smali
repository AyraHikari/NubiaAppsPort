.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolbarCompatDelegate"
.end annotation


# instance fields
.field final mDefaultContentDescription:Ljava/lang/CharSequence;

.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field final mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .line 629
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 630
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    .line 631
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x1

    return v0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 635
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 636
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V

    .line 637
    return-void
.end method
