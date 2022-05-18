.class public Lcn/nubia/camera/aj/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/app/Activity;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/aj/a/b;->a:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    .line 29
    iput-object p1, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcn/nubia/camera/aj/a/b;->a:Landroid/widget/TextView;

    .line 31
    iput-object p3, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private a(IIII)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int/2addr p3, p1

    .line 58
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int/2addr p4, p2

    .line 59
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 61
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 62
    iget-object p1, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v2, 0x5a0

    if-gt v1, v2, :cond_0

    .line 49
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcn/nubia/camera/aj/a/b;->a(IIII)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/b;->d()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    check-cast v0, Lcn/nubia/camera/a/a;

    .line 68
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    .line 69
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 70
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, -0x1

    invoke-direct {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcn/nubia/camera/aj/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/aj/a/b;->c()V

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    const v1, 0x7f0f0116

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcn/nubia/camera/aj/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/b;->d:Z

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 83
    iget-object p1, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    check-cast p1, Lcn/nubia/camera/a/a;

    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/aj/a/f;->a(Lcn/nubia/camera/ad/a;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcn/nubia/camera/aj/a/b;->d:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/aj/a/b;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 89
    iget-boolean v0, p0, Lcn/nubia/camera/aj/a/b;->d:Z

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcn/nubia/camera/aj/a/f;->a()V

    :cond_0
    return-void
.end method
