.class public Landroidx/appcompat/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Landroidx/appcompat/view/menu/n$a;


# instance fields
.field private a:Landroidx/appcompat/view/menu/i;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RadioButton;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Z

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Z

.field private p:Landroid/view/LayoutInflater;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 74
    sget v0, Landroidx/appcompat/a$a;->C:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/a$j;->bW:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object p2

    .line 83
    sget p3, Landroidx/appcompat/a$j;->bY:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    .line 84
    sget p3, Landroidx/appcompat/a$j;->bX:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    .line 86
    sget p3, Landroidx/appcompat/a$j;->bZ:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    .line 88
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    .line 89
    sget p3, Landroidx/appcompat/a$j;->ca:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [I

    const v0, 0x1010129

    aput v0, p3, v2

    sget v0, Landroidx/appcompat/a$a;->z:I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1, p3, v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Z

    .line 96
    invoke-virtual {p2}, Landroidx/appcompat/widget/ax;->b()V

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 138
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 294
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 295
    sget v1, Landroidx/appcompat/a$g;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 297
    invoke-direct {p0, v0, v2}, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;I)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 301
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 302
    sget v1, Landroidx/appcompat/a$g;->l:I

    const/4 v2, 0x0

    .line 303
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 305
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 309
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    sget v1, Landroidx/appcompat/a$g;->i:I

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 313
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a(Landroid/view/View;)V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 327
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    .line 330
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 236
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;I)V
    .locals 1

    .line 124
    iput-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    .line 126
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 128
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/i;->a(Landroidx/appcompat/view/menu/n$a;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 130
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result p2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->d()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->a(ZC)V

    .line 131
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result p2

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/ListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 134
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ListMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    .line 246
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 250
    iget-object p2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 347
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    return-void
.end method

.method public getItemData()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 166
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 102
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Landroidx/core/f/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 106
    sget v0, Landroidx/appcompat/a$f;->O:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 107
    iget v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 108
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->l:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 112
    :cond_0
    sget v0, Landroidx/appcompat/a$f;->H:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    .line 113
    sget v0, Landroidx/appcompat/a$f;->K:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_1
    sget v0, Landroidx/appcompat/a$f;->r:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    .line 119
    sget v0, Landroidx/appcompat/a$f;->l:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->i:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 282
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 285
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 287
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 182
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->c()V

    .line 184
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 185
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 188
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->d()V

    .line 190
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 191
    iget-object v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_7

    .line 202
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_7

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-eqz p1, :cond_6

    .line 207
    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 209
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-eqz p1, :cond_7

    .line 210
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 221
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->c()V

    .line 223
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 226
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->d()V

    .line 228
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 231
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Z

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 2

    .line 339
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 341
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->o:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 340
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 256
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->a:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 257
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    if-nez v2, :cond_2

    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v2, :cond_4

    .line 266
    invoke-direct {p0}, Landroidx/appcompat/view/menu/ListMenuItemView;->b()V

    :cond_4
    if-nez p1, :cond_6

    .line 269
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->m:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 276
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 270
    :cond_6
    :goto_2
    iget-object v2, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 273
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
