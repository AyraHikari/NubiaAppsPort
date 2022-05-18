.class public abstract Lcn/nubia/video/player/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Landroid/view/View;

.field protected c:Lcn/nubia/video/player/VideoView;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Landroid/widget/RelativeLayout;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/RelativeLayout;

.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/ImageView;

.field private l:Z

.field private m:I

.field protected n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->d:Z

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->e:Z

    .line 4
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->l:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcn/nubia/video/player/q;->m:I

    .line 7
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->n:Z

    return-void
.end method

.method public static g()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private l(Z)V
    .locals 4

    .line 1
    invoke-static {}, Lcn/nubia/video/player/q;->g()Z

    move-result v0

    const v1, 0x7f08018b

    const v2, 0x7f08018d

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/graphics/Rect;
.end method

.method public abstract b()Landroid/graphics/Rect;
.end method

.method protected c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public abstract h()Z
.end method

.method public i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/q;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcn/nubia/video/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->R()V

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/video/player/q;->l:Z

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/video/player/q;->f:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcn/nubia/video/player/q;->m:I

    return-void
.end method

.method public j(I)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->f:Z

    .line 2
    iget v1, p0, Lcn/nubia/video/player/q;->m:I

    if-gez v1, :cond_0

    .line 3
    iput p1, p0, Lcn/nubia/video/player/q;->m:I

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/video/player/q;->d()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/player/q;->c()I

    move-result v2

    if-gez v1, :cond_1

    if-ltz v2, :cond_2

    .line 6
    :cond_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    :cond_2
    iget-object v2, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    :cond_3
    iget-object v2, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 14
    :cond_4
    iget-object v2, p0, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    instance-of v2, v2, Lcn/nubia/video/player/PlayerActivity;

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->M()V

    .line 18
    iput-boolean v0, p0, Lcn/nubia/video/player/q;->l:Z

    .line 19
    :cond_5
    iget-object v2, p0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2, p1}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 20
    :cond_6
    iget v2, p0, Lcn/nubia/video/player/q;->m:I

    if-gt v2, p1, :cond_9

    if-ne v2, p1, :cond_7

    if-eqz p1, :cond_9

    :cond_7
    if-ne v2, v1, :cond_8

    goto :goto_0

    .line 21
    :cond_8
    invoke-direct {p0, v3}, Lcn/nubia/video/player/q;->l(Z)V

    goto :goto_1

    .line 22
    :cond_9
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/video/player/q;->l(Z)V

    .line 23
    :goto_1
    iput p1, p0, Lcn/nubia/video/player/q;->m:I

    return-void
.end method

.method public k(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const/16 v0, 0xf

    if-ltz p1, :cond_2

    if-le p1, v0, :cond_3

    .line 7
    :cond_2
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    :cond_3
    iget-object v1, p0, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcn/nubia/video/player/q;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 10
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-int/2addr p1, v2

    div-int/2addr p1, v0

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method protected m(ZZ)V
    .locals 6

    const/4 v0, 0x6

    if-eqz p1, :cond_5

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    const/4 v0, 0x4

    .line 2
    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method
