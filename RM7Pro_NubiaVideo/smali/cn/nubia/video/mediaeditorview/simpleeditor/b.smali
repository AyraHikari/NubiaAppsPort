.class public Lcn/nubia/video/mediaeditorview/simpleeditor/b;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 2
    sget v2, Lcn/nubia/video/mediaeditorview/i;->d:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcn/nubia/video/mediaeditorview/i;->z:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcn/nubia/video/mediaeditorview/i;->a:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcn/nubia/video/mediaeditorview/i;->O:I

    const/4 v6, 0x3

    aput v2, v1, v6

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->c:[I

    new-array v1, v0, [I

    .line 3
    sget v2, Lcn/nubia/video/mediaeditorview/f;->e:I

    aput v2, v1, v3

    sget v2, Lcn/nubia/video/mediaeditorview/f;->g:I

    aput v2, v1, v4

    sget v2, Lcn/nubia/video/mediaeditorview/f;->c:I

    aput v2, v1, v5

    sget v2, Lcn/nubia/video/mediaeditorview/f;->i:I

    aput v2, v1, v6

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->d:[I

    new-array v0, v0, [I

    .line 4
    sget v1, Lcn/nubia/video/mediaeditorview/f;->d:I

    aput v1, v0, v3

    sget v1, Lcn/nubia/video/mediaeditorview/f;->f:I

    aput v1, v0, v4

    sget v1, Lcn/nubia/video/mediaeditorview/f;->b:I

    aput v1, v0, v5

    sget v1, Lcn/nubia/video/mediaeditorview/f;->h:I

    aput v1, v0, v6

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->e:[I

    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/g;->S:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    return-void
.end method

.method private w(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->c:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->b:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->a:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v1, 0x1

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 10
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const v5, 0x7fffffff

    .line 11
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->d:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 14
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v5, 0x3fffffff    # 1.9999999f

    .line 15
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->e:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 17
    :goto_1
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 18
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 19
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->c:[I

    aget v1, v6, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v5, v0, v0, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v1, 0xe5

    .line 23
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v1, 0x0

    .line 24
    invoke-virtual {v2, v1, v5, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0xa

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/16 v1, 0x19

    .line 26
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 27
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v1, v3

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 3
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 5
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 7
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 9
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->x(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    if-ne p1, v1, :cond_4

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 11
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->u()V

    .line 12
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->w(Z)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne p1, v1, :cond_5

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    invoke-interface {p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;->e(I)V

    .line 14
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->w(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "BottomMenuFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->a:Landroid/content/Context;

    .line 3
    sget p3, Lcn/nubia/video/mediaeditorview/h;->c:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    .line 4
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->w(Z)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public v(Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->f:Lcn/nubia/video/mediaeditorview/simpleeditor/b$a;

    return-void
.end method

.method public x(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSubMenu menuId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BottomMenuFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->w(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->d:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcn/nubia/video/mediaeditorview/e;->c:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/video/mediaeditorview/f;->l:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x9

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setId(I)V

    .line 11
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcn/nubia/video/mediaeditorview/e;->e:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x3f333333    # 0.7f

    .line 17
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    .line 18
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->c:[I

    sub-int/2addr p1, v0

    aget p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    const/4 p1, -0x1

    .line 19
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 20
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/16 p1, 0x11

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setGravity(I)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    new-instance p1, Landroid/widget/Button;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 27
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0xa

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setId(I)V

    .line 31
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/b;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
