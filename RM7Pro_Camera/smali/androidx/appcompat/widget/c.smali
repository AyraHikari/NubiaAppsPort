.class Landroidx/appcompat/widget/c;
.super Landroidx/appcompat/view/menu/b;
.source "SourceFile"

# interfaces
.implements Landroidx/core/f/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/c$b;,
        Landroidx/appcompat/widget/c$c;,
        Landroidx/appcompat/widget/c$f;,
        Landroidx/appcompat/widget/c$a;,
        Landroidx/appcompat/widget/c$e;,
        Landroidx/appcompat/widget/c$d;
    }
.end annotation


# instance fields
.field g:Landroidx/appcompat/widget/c$d;

.field h:Landroidx/appcompat/widget/c$e;

.field i:Landroidx/appcompat/widget/c$a;

.field j:Landroidx/appcompat/widget/c$c;

.field final k:Landroidx/appcompat/widget/c$f;

.field l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private final y:Landroid/util/SparseBooleanArray;

.field private z:Landroidx/appcompat/widget/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 87
    sget v0, Landroidx/appcompat/a$g;->c:I

    sget v1, Landroidx/appcompat/a$g;->b:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 75
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->y:Landroid/util/SparseBooleanArray;

    .line 83
    new-instance p1, Landroidx/appcompat/widget/c$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$f;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->k:Landroidx/appcompat/widget/c$f;

    return-void
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 317
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 322
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 323
    instance-of v5, v4, Landroidx/appcompat/view/menu/n$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/n$a;

    .line 324
    invoke-interface {v5}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic b(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic c(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method static synthetic d(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic e(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic f(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/g;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method static synthetic g(Landroidx/appcompat/widget/c;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 191
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 199
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 200
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .line 181
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/c;)V

    :cond_0
    return-object p1
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 4

    .line 92
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 96
    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 97
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->p:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    .line 101
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->v:Z

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->c()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/c;->q:I

    .line 106
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->t:Z

    if-nez v0, :cond_2

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->a()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->s:I

    .line 110
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/c;->q:I

    .line 111
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-nez v0, :cond_4

    .line 113
    new-instance v0, Landroidx/appcompat/widget/c$d;

    iget-object v2, p0, Landroidx/appcompat/widget/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    .line 114
    iget-boolean v2, p0, Landroidx/appcompat/widget/c;->n:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/c$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iput-object v1, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    .line 117
    iput-boolean v3, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 119
    :cond_3
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 120
    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v1, v0, v0}, Landroidx/appcompat/widget/c$d;->measure(II)V

    .line 122
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$d;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 124
    :cond_5
    iput-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    .line 127
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/c;->r:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 129
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/c;->x:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 133
    iget-boolean p1, p0, Landroidx/appcompat/widget/c;->t:Z

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->a()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/c;->s:I

    .line 136
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c$d;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    .line 166
    iput-object p1, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    .line 548
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->f()Z

    .line 549
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/n$a;->a(Landroidx/appcompat/view/menu/i;I)V

    .line 209
    iget-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 211
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/g$b;)V

    .line 213
    iget-object p1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    if-nez p1, :cond_0

    .line 214
    new-instance p1, Landroidx/appcompat/widget/c$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/c$b;-><init>(Landroidx/appcompat/widget/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    .line 216
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/c;->z:Landroidx/appcompat/widget/c$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 586
    iput-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    .line 587
    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 226
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Z)V

    .line 228
    iget-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 230
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 231
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->l()Ljava/util/ArrayList;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->a()Landroidx/core/f/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v3, p0}, Landroidx/core/f/b;->a(Landroidx/core/f/b$a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_2

    .line 242
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 245
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 255
    iget-object p1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-nez p1, :cond_5

    .line 256
    new-instance p1, Landroidx/appcompat/widget/c$d;

    iget-object v0, p0, Landroidx/appcompat/widget/c;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/c$d;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    .line 258
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 263
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 264
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->c()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 266
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/appcompat/widget/c$d;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-ne p1, v0, :cond_8

    .line 267
    iget-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public a(ILandroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 221
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 275
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 7

    .line 281
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 284
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eq v2, v3, :cond_1

    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r;

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/c;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 296
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/c;->l:I

    .line 299
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->size()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 301
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/r;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 302
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    :cond_4
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/c$a;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/c$a;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    .line 309
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/c$a;->a(Z)V

    .line 310
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$a;->a()V

    .line 312
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    return v4
.end method

.method public b(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->o:Z

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->p:Z

    return-void
.end method

.method public b()Z
    .locals 20

    move-object/from16 v0, p0

    .line 413
    iget-object v1, v0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, v0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->j()Ljava/util/ArrayList;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    move v4, v3

    .line 421
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/c;->s:I

    .line 422
    iget v6, v0, Landroidx/appcompat/widget/c;->r:I

    .line 423
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 424
    iget-object v8, v0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    if-ge v9, v4, :cond_4

    .line 431
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 432
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 434
    :cond_1
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    .line 439
    :goto_2
    iget-boolean v13, v0, Landroidx/appcompat/widget/c;->w:Z

    if-eqz v13, :cond_3

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    move v5, v3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 447
    :cond_4
    iget-boolean v9, v0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v9, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v12, v11

    if-le v12, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x1

    :cond_6
    sub-int/2addr v5, v11

    .line 453
    iget-object v9, v0, Landroidx/appcompat/widget/c;->y:Landroid/util/SparseBooleanArray;

    .line 454
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    .line 458
    iget-boolean v10, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v10, :cond_7

    .line 459
    iget v10, v0, Landroidx/appcompat/widget/c;->x:I

    div-int v11, v6, v10

    .line 460
    rem-int v12, v6, v10

    .line 461
    div-int/2addr v12, v11

    add-int/2addr v10, v12

    goto :goto_3

    :cond_7
    move v10, v3

    move v11, v10

    :goto_3
    move v12, v3

    move v14, v12

    :goto_4
    if-ge v12, v4, :cond_1b

    .line 466
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/i;

    .line 468
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->l()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 469
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 470
    iget-boolean v2, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v2, :cond_8

    .line 471
    invoke-static {v13, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v11, v2

    goto :goto_5

    .line 474
    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 476
    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    if-nez v14, :cond_9

    move v14, v2

    .line 481
    :cond_9
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_a

    .line 483
    invoke-virtual {v9, v2, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 485
    :cond_a
    invoke-virtual {v15, v13}, Landroidx/appcompat/view/menu/i;->d(Z)V

    move v0, v3

    move/from16 v17, v4

    goto/16 :goto_c

    .line 486
    :cond_b
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 489
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    .line 490
    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v5, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v6, :cond_e

    .line 491
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v3, :cond_d

    if-lez v11, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 495
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 496
    iget-boolean v3, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    .line 497
    invoke-static {v4, v10, v11, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v19

    sub-int v11, v11, v19

    if-nez v19, :cond_10

    const/16 v18, 0x0

    goto :goto_7

    .line 504
    :cond_f
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    :cond_10
    :goto_7
    move/from16 v3, v18

    .line 506
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    if-nez v14, :cond_11

    move v14, v4

    .line 512
    :cond_11
    iget-boolean v4, v0, Landroidx/appcompat/widget/c;->u:Z

    if-eqz v4, :cond_12

    if-ltz v6, :cond_13

    goto :goto_8

    :cond_12
    add-int v4, v6, v14

    if-lez v4, :cond_13

    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_9
    and-int/2addr v3, v4

    :cond_14
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    .line 521
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b

    :cond_15
    if-eqz v13, :cond_18

    const/4 v4, 0x0

    .line 524
    invoke-virtual {v9, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v12, :cond_18

    .line 526
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/i;

    .line 527
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 529
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v5, v5, 0x1

    :cond_16
    const/4 v0, 0x0

    .line 530
    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/i;->d(Z)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_a

    :cond_18
    :goto_b
    if-eqz v3, :cond_19

    add-int/lit8 v5, v5, -0x1

    .line 537
    :cond_19
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/i;->d(Z)V

    const/4 v0, 0x0

    goto :goto_c

    :cond_1a
    move v0, v3

    move/from16 v17, v4

    .line 540
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/i;->d(Z)V

    :goto_c
    add-int/lit8 v12, v12, 0x1

    move v3, v0

    move/from16 v4, v17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroidx/appcompat/widget/c$d;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->n:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/c;->m:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Landroidx/appcompat/widget/c;->w:Z

    return-void
.end method

.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 579
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz p1, :cond_1

    .line 581
    iget-object p1, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 7

    .line 336
    iget-boolean v0, p0, Landroidx/appcompat/widget/c;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    .line 337
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->m()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Landroidx/appcompat/widget/c$e;

    iget-object v3, p0, Landroidx/appcompat/widget/c;->b:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/widget/c;->c:Landroidx/appcompat/view/menu/g;

    iget-object v5, p0, Landroidx/appcompat/widget/c;->g:Landroidx/appcompat/widget/c$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/c$e;-><init>(Landroidx/appcompat/widget/c;Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;Z)V

    .line 339
    new-instance v1, Landroidx/appcompat/widget/c$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/c$c;-><init>(Landroidx/appcompat/widget/c;Landroidx/appcompat/widget/c$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 354
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Landroidx/appcompat/widget/c;->f:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->d()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 2

    .line 373
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->e()Z

    move-result v0

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->g()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public g()Z
    .locals 1

    .line 384
    iget-object v0, p0, Landroidx/appcompat/widget/c;->i:Landroidx/appcompat/widget/c$a;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroidx/appcompat/widget/c$a;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 395
    iget-object v0, p0, Landroidx/appcompat/widget/c;->h:Landroidx/appcompat/widget/c$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/c$e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 399
    iget-object v0, p0, Landroidx/appcompat/widget/c;->j:Landroidx/appcompat/widget/c$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
