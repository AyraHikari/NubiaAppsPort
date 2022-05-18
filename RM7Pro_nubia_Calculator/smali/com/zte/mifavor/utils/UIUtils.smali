.class public final Lcom/zte/mifavor/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customActionMode(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "action_mode_close_button"

    .line 153
    invoke-static {p0, v0}, Lcom/zte/mifavor/utils/Identifiers;->getView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 156
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static getActionBarView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const-string v0, "action_bar"

    .line 162
    invoke-static {p0, v0}, Lcom/zte/mifavor/utils/Identifiers;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static isMifavorTheme(Landroid/content/Context;)Z
    .locals 3

    .line 33
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/zte/extres/R$attr;->versionType:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const-string p0, "mifavor"

    .line 35
    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setBottomBarVisibilityWithAnim(Landroid/view/ViewGroup;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 173
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 175
    sget p1, Lcom/zte/extres/R$animator;->bottombar_show_anim:I

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    goto :goto_0

    .line 178
    :cond_1
    sget v0, Lcom/zte/extres/R$animator;->bottombar_hide_anim:I

    .line 179
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 180
    new-instance v1, Lcom/zte/mifavor/utils/UIUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/utils/UIUtils$1;-><init>(Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object p1, v0

    .line 188
    :goto_0
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public static setHomeAsUpIndicatorColor(Landroid/app/ActionBar;I)V
    .locals 4

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101030b

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_2

    return-void

    .line 71
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 74
    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;)V
    .locals 2

    .line 117
    sget v0, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;IZ)V

    return-void
.end method

.method public static setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;I)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-static {p0, p1, p2, v0}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;IZ)V

    return-void
.end method

.method private static setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;IZ)V
    .locals 3

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    if-eqz p3, :cond_4

    .line 93
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    if-ge v1, p3, :cond_0

    .line 94
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {p0, p2}, Lcom/zte/mifavor/utils/UIUtils;->setOverflowIconColor(Landroid/app/Activity;I)V

    goto :goto_2

    .line 100
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p3

    if-ge v1, p3, :cond_3

    .line 101
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p3

    .line 102
    invoke-interface {p3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 106
    :cond_2
    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_3
    invoke-static {p0, p2}, Lcom/zte/mifavor/utils/UIUtils;->setOverflowIconColor(Landroid/app/Activity;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static setMenuIconColor(Landroid/view/Window;I[I)V
    .locals 8

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 129
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 130
    aget v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 131
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 132
    check-cast v2, Landroid/widget/TextView;

    .line 133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 134
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 136
    :cond_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 137
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 138
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 140
    :cond_2
    aget-object v4, v3, v0

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    const/4 v7, 0x3

    aget-object v3, v3, v7

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_4
    sget p2, Lcom/zte/extres/R$id;->overflow_button:I

    invoke-virtual {p0, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 146
    instance-of p2, p0, Landroid/widget/ImageButton;

    if-eqz p2, :cond_5

    .line 147
    check-cast p0, Landroid/widget/ImageButton;

    .line 148
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-void
.end method

.method public static setOverflowIconColor(Landroid/app/Activity;I)V
    .locals 1

    .line 78
    invoke-static {p0}, Lcom/zte/mifavor/utils/UIUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 79
    instance-of v0, p0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Landroid/widget/Toolbar;

    .line 81
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 84
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public static setSubtitleTextColor(Landroid/app/Activity;I)V
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/zte/mifavor/utils/UIUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 48
    instance-of v0, p0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Landroid/widget/Toolbar;

    .line 50
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_0
    return-void
.end method

.method public static setTitleTextColor(Landroid/app/Activity;I)V
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/zte/mifavor/utils/UIUtils;->getActionBarView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 40
    instance-of v0, p0, Landroid/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Landroid/widget/Toolbar;

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    :cond_0
    return-void
.end method
