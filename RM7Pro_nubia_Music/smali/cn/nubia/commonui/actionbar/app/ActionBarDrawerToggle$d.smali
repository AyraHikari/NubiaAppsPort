.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Lcn/nubia/commonui/actionbar/app/a$a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V
    .locals 0

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 536
    :goto_0
    return-object v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/a;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 542
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->b:Lcn/nubia/commonui/actionbar/app/a$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcn/nubia/commonui/actionbar/app/a;->a(Lcn/nubia/commonui/actionbar/app/a$a;Landroid/app/Activity;I)Lcn/nubia/commonui/actionbar/app/a$a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->b:Lcn/nubia/commonui/actionbar/app/a$a;

    .line 558
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 549
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->b:Lcn/nubia/commonui/actionbar/app/a$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1, p2}, Lcn/nubia/commonui/actionbar/app/a;->a(Lcn/nubia/commonui/actionbar/app/a$a;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Lcn/nubia/commonui/actionbar/app/a$a;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->b:Lcn/nubia/commonui/actionbar/app/a$a;

    .line 551
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 552
    return-void
.end method
