.class Landroid/support/v4/app/ActionBarDrawerToggleIcs;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggle"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs;->THEME_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs;->THEME_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-object v1
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 73
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :goto_0
    move-object v0, v1

    .line 75
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    .line 76
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 79
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    .line 83
    invoke-virtual {v2}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_1
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v2, "ActionBarDrawerToggle"

    const-string v3, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 50
    if-nez p0, :cond_2

    .line 51
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :goto_0
    move-object v0, v1

    .line 53
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;

    .line 54
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 57
    iget-object v3, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "ActionBarDrawerToggle"

    const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 62
    :cond_0
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 63
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleIcs$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 65
    :cond_1
    const-string v0, "ActionBarDrawerToggle"

    const-string v2, "Couldn\'t set home-as-up indicator"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v1, p0

    goto :goto_0
.end method
