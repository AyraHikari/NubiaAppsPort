.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;,
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private f:[I

.field private g:I

.field h:[I

.field i:[I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/content/Context;

.field private m:Z

.field private n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x7

    new-array v2, v1, [I

    .line 2
    sget v3, Lcn/nubia/video/mediaeditorview/i;->A:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v5, Lcn/nubia/video/mediaeditorview/i;->B:I

    const/4 v6, 0x1

    aput v5, v2, v6

    sget v5, Lcn/nubia/video/mediaeditorview/i;->C:I

    const/4 v7, 0x2

    aput v5, v2, v7

    sget v5, Lcn/nubia/video/mediaeditorview/i;->D:I

    const/4 v8, 0x3

    aput v5, v2, v8

    sget v5, Lcn/nubia/video/mediaeditorview/i;->E:I

    const/4 v9, 0x4

    aput v5, v2, v9

    sget v5, Lcn/nubia/video/mediaeditorview/i;->F:I

    const/4 v10, 0x5

    aput v5, v2, v10

    sget v5, Lcn/nubia/video/mediaeditorview/i;->G:I

    const/4 v11, 0x6

    aput v5, v2, v11

    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a:[I

    new-array v5, v9, [I

    aput v3, v5, v4

    .line 3
    sget v12, Lcn/nubia/video/mediaeditorview/i;->v:I

    aput v12, v5, v6

    sget v12, Lcn/nubia/video/mediaeditorview/i;->w:I

    aput v12, v5, v7

    sget v12, Lcn/nubia/video/mediaeditorview/i;->x:I

    aput v12, v5, v8

    iput-object v5, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->b:[I

    new-array v5, v11, [I

    aput v3, v5, v4

    .line 4
    sget v3, Lcn/nubia/video/mediaeditorview/i;->J:I

    aput v3, v5, v6

    sget v3, Lcn/nubia/video/mediaeditorview/i;->K:I

    aput v3, v5, v7

    sget v3, Lcn/nubia/video/mediaeditorview/i;->L:I

    aput v3, v5, v8

    sget v3, Lcn/nubia/video/mediaeditorview/i;->M:I

    aput v3, v5, v9

    sget v3, Lcn/nubia/video/mediaeditorview/i;->N:I

    aput v3, v5, v10

    iput-object v5, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->c:[I

    const/16 v3, 0x8

    new-array v3, v3, [I

    .line 5
    sget v5, Lcn/nubia/video/mediaeditorview/f;->G:I

    aput v5, v3, v4

    sget v12, Lcn/nubia/video/mediaeditorview/f;->H:I

    aput v12, v3, v6

    sget v12, Lcn/nubia/video/mediaeditorview/f;->I:I

    aput v12, v3, v7

    sget v12, Lcn/nubia/video/mediaeditorview/f;->J:I

    aput v12, v3, v8

    sget v12, Lcn/nubia/video/mediaeditorview/f;->K:I

    aput v12, v3, v9

    sget v13, Lcn/nubia/video/mediaeditorview/f;->L:I

    aput v13, v3, v10

    sget v14, Lcn/nubia/video/mediaeditorview/f;->M:I

    aput v14, v3, v11

    aput v13, v3, v1

    iput-object v3, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->d:[I

    new-array v15, v11, [I

    aput v5, v15, v4

    .line 6
    sget v16, Lcn/nubia/video/mediaeditorview/f;->y:I

    aput v16, v15, v6

    sget v16, Lcn/nubia/video/mediaeditorview/f;->z:I

    aput v16, v15, v7

    sget v16, Lcn/nubia/video/mediaeditorview/f;->A:I

    aput v16, v15, v8

    aput v12, v15, v9

    aput v13, v15, v10

    iput-object v15, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e:[I

    new-array v1, v1, [I

    aput v5, v1, v4

    .line 7
    sget v5, Lcn/nubia/video/mediaeditorview/f;->B:I

    aput v5, v1, v6

    sget v5, Lcn/nubia/video/mediaeditorview/f;->C:I

    aput v5, v1, v7

    sget v5, Lcn/nubia/video/mediaeditorview/f;->D:I

    aput v5, v1, v8

    sget v5, Lcn/nubia/video/mediaeditorview/f;->E:I

    aput v5, v1, v9

    sget v5, Lcn/nubia/video/mediaeditorview/f;->F:I

    aput v5, v1, v10

    aput v14, v1, v11

    iput-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->f:[I

    .line 8
    iput v6, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    .line 9
    iput-object v2, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    .line 10
    iput-object v3, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->i:[I

    .line 11
    iput-boolean v4, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->m:Z

    move-object/from16 v1, p1

    .line 12
    iput-object v1, v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->l:Landroid/content/Context;

    .line 13
    invoke-direct/range {p0 .. p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->f()V

    .line 14
    invoke-virtual {v0, v4}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g(Z)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->m:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->m:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->j:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->N:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->j:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public g(Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->c:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->f:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->i:[I

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a:[I

    array-length v0, v0

    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->b:[I

    array-length v5, v5

    add-int/2addr v0, v5

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->b:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    .line 7
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->e:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->i:[I

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a:[I

    array-length v0, v0

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->a:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->d:[I

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->i:[I

    :goto_0
    move v0, v3

    :goto_1
    move v5, v3

    .line 11
    :goto_2
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    array-length v6, v6

    if-ge v5, v6, :cond_b

    .line 12
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x96

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v5, :cond_3

    .line 13
    new-instance v7, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->l:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Landroid/content/Context;Z)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcn/nubia/video/mediaeditorview/e;->i:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3

    .line 15
    :cond_3
    new-instance v7, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->l:Landroid/content/Context;

    invoke-direct {v7, p0, v8}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Landroid/content/Context;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcn/nubia/video/mediaeditorview/e;->h:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :goto_3
    add-int v8, v0, v5

    .line 17
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setId(I)V

    .line 18
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 20
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 21
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v6, 0x51

    .line 22
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x6

    .line 23
    invoke-virtual {v7, v6, v3, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    iget-object v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->l:Landroid/content/Context;

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->i:[I

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->h:[I

    aget v8, v8, v5

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41200000    # 10.0f

    .line 26
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcn/nubia/video/mediaeditorview/d;->f:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v6, 0x3f333333    # 0.7f

    .line 28
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 29
    iget v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    const/4 v8, 0x4

    if-ne v6, v8, :cond_5

    if-eqz p1, :cond_4

    if-ne v5, v4, :cond_4

    .line 30
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    :cond_4
    if-nez p1, :cond_5

    if-nez v5, :cond_5

    .line 31
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_5
    :goto_4
    if-nez v5, :cond_6

    .line 32
    iget v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    if-eq v6, v8, :cond_6

    .line 33
    new-instance v6, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;

    invoke-direct {v6, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 35
    :cond_6
    iget v6, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    if-eq v6, v4, :cond_9

    if-ne v6, v2, :cond_7

    goto :goto_5

    :cond_7
    if-ne v6, v1, :cond_8

    .line 36
    new-instance v6, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$d;

    invoke-direct {v6, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$d;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_8
    if-ne v6, v8, :cond_a

    .line 37
    new-instance v6, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;

    invoke-direct {v6, p0, v7}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$e;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$f;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 38
    :cond_9
    :goto_5
    new-instance v6, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$b;

    invoke-direct {v6, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 39
    new-instance v6, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;

    invoke-direct {v6, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$c;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    :cond_a
    :goto_6
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_b
    return-void
.end method

.method public getFiltersId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    return v0
.end method

.method public setFiltersId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->g:I

    return-void
.end method

.method public setOnFilterItemClickListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleSpecialPickerView$g;

    return-void
.end method
