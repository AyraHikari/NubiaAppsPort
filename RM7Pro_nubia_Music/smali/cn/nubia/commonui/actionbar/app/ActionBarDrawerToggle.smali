.class public Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$c;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$f;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$a;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;,
        Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private final mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Lcn/nubia/commonui/actionbar/widget/Toolbar;II)V
    .locals 7

    .prologue
    .line 184
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 186
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;",
            ">(",
            "Landroid/app/Activity;",
            "Lcn/nubia/commonui/actionbar/widget/Toolbar;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 197
    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$f;

    invoke-direct {v0, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$f;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    .line 199
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :goto_0
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 220
    iput p5, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 221
    iput p6, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 222
    if-nez p4, :cond_4

    .line 223
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    .line 224
    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$a;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 230
    return-void

    .line 209
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 210
    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 211
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 212
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;

    invoke-direct {v0, p1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$e;-><init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 213
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 214
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;

    invoke-direct {v0, p1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$d;-><init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 216
    :cond_3
    new-instance v0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$c;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$c;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 226
    :cond_4
    check-cast p4, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    iput-object p4, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    goto :goto_1
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->toggle()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private toggle()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->syncState()V

    .line 268
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;->a(F)V

    .line 409
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 410
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;->a(F)V

    .line 394
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 395
    iget v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;->a(F)V

    .line 382
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 280
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->toggle()V

    .line 282
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 464
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .prologue
    .line 453
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const-string v0, "NubiaWidget"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 459
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mActivityImpl:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 460
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3

    .prologue
    .line 358
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 359
    if-eqz p1, :cond_2

    .line 360
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v2, 0x800003

    .line 361
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 360
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 366
    :goto_1
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 368
    :cond_0
    return-void

    .line 361
    :cond_1
    iget v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    .line 333
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    if-nez p1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 309
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 315
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 318
    :cond_0
    return-void

    .line 311
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 450
    return-void
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 242
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;->a(F)V

    .line 247
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 249
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 248
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 252
    :cond_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mSlider:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$b;->a(F)V

    goto :goto_0

    .line 249
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
