.class public Lcom/android/common/ui/ZtemtFunEffectSlider;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/ZtemtFunEffectSlider$b;,
        Lcom/android/common/ui/ZtemtFunEffectSlider$a;,
        Lcom/android/common/ui/ZtemtFunEffectSlider$c;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Landroid/widget/HorizontalScrollView;

.field private d:Lcom/android/common/ui/OneRowGridView;

.field private e:[Ljava/lang/CharSequence;

.field private f:Lcom/android/preference/ListPreference;

.field private g:Landroid/widget/SimpleAdapter;

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

.field private n:Lcom/android/common/ui/ZtemtFunEffectSlider$c;

.field private o:F

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "ZtemtFunEffectSlider"

    .line 33
    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->b:Ljava/lang/String;

    const/4 p2, 0x0

    .line 38
    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->g:Landroid/widget/SimpleAdapter;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    .line 41
    iput v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->i:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->j:Z

    .line 45
    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    .line 46
    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->n:Lcom/android/common/ui/ZtemtFunEffectSlider$c;

    const v1, 0x3faaaaab

    .line 48
    iput v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->o:F

    .line 49
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->p:Z

    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->q:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->t:Z

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/d/c;->a(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    const-string v0, "layout_inflater"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 85
    sget v0, Lcom/android/common/ui/c$f;->d:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/ZtemtFunEffectSlider;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private a(F)V
    .locals 1

    .line 150
    iput p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->o:F

    .line 151
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->n:Lcom/android/common/ui/ZtemtFunEffectSlider$c;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider$c;->a(F)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .locals 11

    .line 241
    iput p3, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->k:I

    .line 242
    iput p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->l:I

    .line 243
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->f()V

    .line 245
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/OneRowGridView;->setNumColumns(I)V

    .line 246
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v0, p3}, Lcom/android/common/ui/OneRowGridView;->setColumnWidth(I)V

    .line 247
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/OneRowGridView;->a(II)V

    .line 251
    iget v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    mul-int v1, p3, v0

    add-int/2addr v1, p2

    const/4 v3, 0x1

    add-int/2addr v0, v3

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    .line 256
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 258
    iget-boolean v4, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz v4, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v1, v0

    iget v4, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    .line 260
    array-length v0, v0

    sub-int/2addr v0, v4

    mul-int/2addr v0, p3

    add-int/2addr v0, p2

    .line 262
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr v0, p2

    .line 263
    iget-boolean p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    if-eqz p2, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p3

    add-int/2addr v1, p2

    .line 265
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p2, p3

    add-int/2addr v0, p2

    .line 270
    :cond_0
    iget-boolean p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz p2, :cond_1

    .line 271
    iget-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p2}, Lcom/android/common/ui/OneRowGridView;->getPaddingStart()I

    move-result p2

    iget-object v4, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v4, v4

    mul-int/2addr v4, p3

    add-int/2addr p2, v4

    iget-object v4, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {v4}, Lcom/android/common/ui/OneRowGridView;->getPaddingEnd()I

    move-result v4

    add-int/2addr p2, v4

    .line 272
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr p2, v4

    .line 273
    iget-boolean v4, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    if-eqz v4, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr p3, v4

    add-int/2addr p2, p3

    goto :goto_0

    :cond_1
    move p2, v2

    .line 278
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p3}, Lcom/android/common/ui/OneRowGridView;->getWidth()I

    move-result p3

    if-lez p3, :cond_3

    iget-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    :cond_3
    if-ge v0, p2, :cond_4

    if-ge p2, v1, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    if-nez p2, :cond_6

    .line 282
    iget-boolean p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz p2, :cond_5

    move v0, v1

    .line 283
    :cond_5
    iget-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance p3, Lcom/android/common/ui/ZtemtFunEffectSlider$3;

    invoke-direct {p3, p0, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$3;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;I)V

    invoke-virtual {p2, p3}, Lcom/android/common/ui/OneRowGridView;->post(Ljava/lang/Runnable;)Z

    .line 290
    :cond_6
    new-instance p2, Lcom/android/common/ui/ZtemtFunEffectSlider$b;

    iget-object v7, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    sget v8, Lcom/android/common/ui/c$f;->c:I

    const-string p3, "DrawerListTitle"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v9

    new-array v10, v3, [I

    sget p3, Lcom/android/common/ui/c$e;->o:I

    aput p3, v10, v2

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/common/ui/ZtemtFunEffectSlider$b;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object p2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->g:Landroid/widget/SimpleAdapter;

    .line 292
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    invoke-virtual {p1, p2}, Lcom/android/common/ui/OneRowGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance p2, Lcom/android/common/ui/ZtemtFunEffectSlider$4;

    invoke-direct {p2, p0}, Lcom/android/common/ui/ZtemtFunEffectSlider$4;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/OneRowGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance p2, Lcom/android/common/ui/ZtemtFunEffectSlider$5;

    invoke-direct {p2, p0}, Lcom/android/common/ui/ZtemtFunEffectSlider$5;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;)V

    invoke-virtual {p1, p2}, Lcom/android/common/ui/OneRowGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/ZtemtFunEffectSlider;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->d(I)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->a()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->t:Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->p:Z

    return p0
.end method

.method static synthetic c(Lcom/android/common/ui/ZtemtFunEffectSlider;)Lcom/android/common/ui/ZtemtFunEffectSlider$a;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->t:Z

    if-eqz v1, :cond_0

    .line 107
    invoke-interface {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->b()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->t:Z

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/common/ui/ZtemtFunEffectSlider;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    return p0
.end method

.method private d()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->c()V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->c(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/android/common/ui/ZtemtFunEffectSlider;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->i:I

    return p0
.end method

.method private e()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->d()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    iget-object v2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    const-string v3, "DrawerListTitle"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->j:Z

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->d(I)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->f:Lcom/android/preference/ListPreference;

    invoke-virtual {v0, p1}, Lcom/android/preference/ListPreference;->a(I)V

    .line 318
    iput p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    .line 319
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->g:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->c(I)V

    return-void
.end method

.method public a(Lcom/android/preference/ListPreference;Landroid/content/Context;IIF)V
    .locals 1

    .line 126
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->f:Lcom/android/preference/ListPreference;

    .line 127
    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    .line 128
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->f:Lcom/android/preference/ListPreference;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->f:Lcom/android/preference/ListPreference;

    invoke-virtual {p1}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->f:Lcom/android/preference/ListPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/preference/ListPreference;->a(I)V

    .line 132
    iput v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->h:I

    .line 135
    :goto_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Landroid/content/Context;II)V

    .line 136
    invoke-virtual {p0, p5}, Lcom/android/common/ui/ZtemtFunEffectSlider;->setPreviewRatio(F)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->e()V

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->d()V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 4

    .line 325
    iget v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->k:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->l:I

    add-int/2addr v0, v1

    .line 327
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 330
    iget-boolean v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz v1, :cond_0

    .line 331
    iget v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->k:I

    iget-object v2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v2, v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    iget p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->l:I

    add-int/2addr v2, p1

    .line 332
    iget-boolean p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    if-eqz p1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/common/ui/c$c;->g:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 336
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz p1, :cond_2

    move v0, v2

    .line 337
    :cond_2
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    new-instance v1, Lcom/android/common/ui/ZtemtFunEffectSlider$6;

    invoke-direct {v1, p0, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider$6;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;I)V

    invoke-virtual {p1, v1}, Lcom/android/common/ui/OneRowGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->c()V

    return v1

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->c()V

    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->b()V

    .line 180
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getPosition()I
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$c;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->l:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->k:I

    div-int/2addr v0, v1

    .line 347
    iget-boolean v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->r:Z

    if-eqz v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->e:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v1

    iget v2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->l:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->k:I

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 349
    iget-boolean v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 224
    sget v0, Lcom/android/common/ui/c$e;->a:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    .line 225
    sget v0, Lcom/android/common/ui/c$e;->d:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtFunEffectSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/OneRowGridView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->d:Lcom/android/common/ui/OneRowGridView;

    .line 226
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/common/ui/ZtemtFunEffectSlider$1;

    invoke-direct {v1, p0}, Lcom/android/common/ui/ZtemtFunEffectSlider$1;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->c:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/android/common/ui/ZtemtFunEffectSlider$2;

    invoke-direct {v1, p0}, Lcom/android/common/ui/ZtemtFunEffectSlider$2;-><init>(Lcom/android/common/ui/ZtemtFunEffectSlider;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setFunEffectSliderEnabled(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->q:Z

    return-void
.end method

.method public setIsShowCustomEffect(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->s:Z

    return-void
.end method

.method public setListener(Lcom/android/common/ui/ZtemtFunEffectSlider$a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->m:Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    return-void
.end method

.method public setPreviewRatio(F)V
    .locals 1

    .line 144
    iget v0, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(F)V

    :cond_0
    return-void
.end method

.method public setPreviewRatioChangeListener(Lcom/android/common/ui/ZtemtFunEffectSlider$c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider;->n:Lcom/android/common/ui/ZtemtFunEffectSlider$c;

    return-void
.end method
