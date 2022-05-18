.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;,
        Landroidx/constraintlayout/widget/ConstraintLayout$b;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroidx/constraintlayout/b/a/f;

.field protected c:Z

.field protected d:Landroidx/constraintlayout/widget/d;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroidx/constraintlayout/widget/e;

.field private q:I

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:I

.field private u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroidx/constraintlayout/widget/g;

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 563
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/b/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/b/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/widget/d;

    const/4 v1, -0x1

    .line 511
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 513
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 517
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 518
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 519
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 522
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    .line 921
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 564
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 568
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 494
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 497
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    .line 499
    new-instance p1, Landroidx/constraintlayout/b/a/f;

    invoke-direct {p1}, Landroidx/constraintlayout/b/a/f;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    const/4 p1, 0x0

    .line 501
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 502
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    const v0, 0x7fffffff

    .line 503
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 504
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    const/4 v0, 0x1

    .line 506
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    const/16 v0, 0x101

    .line 507
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    .line 509
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/widget/d;

    const/4 v0, -0x1

    .line 511
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 518
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 519
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 520
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 521
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 522
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    .line 921
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 1533
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 1534
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 569
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 0

    .line 482
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    return p0
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 924
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/b/a/f;->a(Ljava/lang/Object;)V

    .line 925
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/a/b$b;)V

    .line 926
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    if-eqz p1, :cond_8

    .line 929
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/j$b;->ba:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 930
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p2, :cond_7

    .line 932
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 933
    sget v3, Landroidx/constraintlayout/widget/j$b;->bf:I

    if-ne v2, v3, :cond_0

    .line 934
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto :goto_2

    .line 935
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/j$b;->bg:I

    if-ne v2, v3, :cond_1

    .line 936
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    goto :goto_2

    .line 937
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/j$b;->bd:I

    if-ne v2, v3, :cond_2

    .line 938
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    goto :goto_2

    .line 939
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/j$b;->be:I

    if-ne v2, v3, :cond_3

    .line 940
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    goto :goto_2

    .line 941
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/j$b;->cn:I

    if-ne v2, v3, :cond_4

    .line 942
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    goto :goto_2

    .line 943
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/j$b;->bo:I

    if-ne v2, v3, :cond_5

    .line 944
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 947
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 949
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/widget/d;

    goto :goto_2

    .line 952
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/j$b;->bl:I

    if-ne v2, v3, :cond_6

    .line 953
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 955
    :try_start_1
    new-instance v3, Landroidx/constraintlayout/widget/e;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/e;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    .line 956
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 958
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    .line 960
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 963
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 965
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/f;->a(I)V

    return-void
.end method

.method static synthetic b(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 482
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final c(I)Landroidx/constraintlayout/b/a/e;
    .locals 1

    if-nez p1, :cond_0

    .line 1496
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    return-object p1

    .line 1498
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 1500
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 1501
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 1502
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 1506
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 1508
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    :goto_0
    return-object p1
.end method

.method private c()Z
    .locals 4

    .line 1138
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1142
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1143
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1149
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->d()V

    :cond_2
    return v1
.end method

.method private d()V
    .locals 9

    .line 1155
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v6

    .line 1157
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 1161
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1162
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1166
    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/e;->s()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-eqz v6, :cond_3

    move v2, v0

    :goto_2
    if-ge v2, v7, :cond_3

    .line 1174
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1176
    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1177
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    .line 1178
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v1, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 1180
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1182
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Landroidx/constraintlayout/b/a/e;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/b/a/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1205
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-eq v2, v1, :cond_5

    move v1, v0

    :goto_3
    if-ge v1, v7, :cond_5

    .line 1207
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1208
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:I

    if-ne v3, v4, :cond_4

    instance-of v3, v2, Landroidx/constraintlayout/widget/f;

    if-eqz v3, :cond_4

    .line 1209
    check-cast v2, Landroidx/constraintlayout/widget/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/f;->getConstraintSet()Landroidx/constraintlayout/widget/e;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1214
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    .line 1215
    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/e;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 1218
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/f;->ad()V

    .line 1220
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_7

    .line 1223
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/c;

    .line 1224
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move v1, v0

    :goto_5
    if-ge v1, v7, :cond_9

    .line 1230
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1231
    instance-of v3, v2, Landroidx/constraintlayout/widget/i;

    if-eqz v3, :cond_8

    .line 1232
    check-cast v2, Landroidx/constraintlayout/widget/i;

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/i;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1236
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1237
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1238
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v2

    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v0

    :goto_6
    if-ge v1, v7, :cond_a

    .line 1240
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1241
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v3

    .line 1242
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_a
    move v8, v0

    :goto_7
    if-ge v8, v7, :cond_c

    .line 1246
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1247
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_8

    .line 1251
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1252
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e;)V

    .line 1253
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ZLandroid/view/View;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    return-void
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x1

    .line 3249
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    const/4 v0, -0x1

    .line 3251
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 3252
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    .line 3253
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    .line 3254
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v0, 0x0

    .line 3255
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    .line 3256
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1716
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1719
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1720
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    :cond_0
    if-lez v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1519
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1521
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    :goto_0
    return-object p1
.end method

.method public a(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    .line 1916
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 553
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 554
    check-cast p2, Ljava/lang/String;

    .line 555
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 556
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(I)V
    .locals 2

    .line 974
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/widget/d;

    return-void
.end method

.method protected a(IIIIZZ)V
    .locals 2

    .line 1596
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 1597
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    add-int/2addr p3, v1

    add-int/2addr p4, v0

    .line 1602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1603
    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p1

    .line 1604
    invoke-static {p4, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 1608
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1609
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    .line 1616
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1617
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 1618
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    goto :goto_0

    .line 1620
    :cond_2
    invoke-virtual {p0, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1621
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 1622
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    :goto_0
    return-void
.end method

.method public a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 535
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 536
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 537
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    .line 539
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 540
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 542
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 544
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 545
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected a(Landroidx/constraintlayout/b/a/f;III)V
    .locals 20

    move-object/from16 v6, p0

    .line 1546
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 1547
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1548
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 1549
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1551
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v2, v19, v16

    .line 1554
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v4

    .line 1556
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v19

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-virtual/range {v12 .. v18}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a(IIIIII)V

    .line 1558
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v5, v7, :cond_3

    .line 1559
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1560
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gtz v5, :cond_1

    if-lez v7, :cond_0

    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1562
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    move v5, v7

    :cond_2
    :goto_1
    move v15, v5

    goto :goto_2

    .line 1571
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v15, v3

    :goto_2
    sub-int v10, v0, v4

    sub-int v12, v1, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    .line 1577
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/b/a/f;IIII)V

    .line 1578
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Landroidx/constraintlayout/b/a/f;->a(IIIIIIIII)J

    return-void
.end method

.method protected a(Landroidx/constraintlayout/b/a/f;IIII)V
    .locals 8

    .line 1730
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 1731
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 1733
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    .line 1734
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    .line 1738
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    const/4 v7, 0x0

    if-eq p2, v6, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    :cond_0
    move p3, v7

    goto :goto_0

    .line 1757
    :cond_1
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    sub-int/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    .line 1750
    :cond_2
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-nez v4, :cond_0

    .line 1752
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    goto :goto_0

    .line 1742
    :cond_3
    sget-object v2, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-nez v4, :cond_4

    .line 1745
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_4
    :goto_0
    if-eq p4, v6, :cond_8

    if-eqz p4, :cond_7

    if-eq p4, v5, :cond_6

    :cond_5
    move p5, v7

    goto :goto_1

    .line 1777
    :cond_6
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    sub-int/2addr p2, v0

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    goto :goto_1

    .line 1770
    :cond_7
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-nez v4, :cond_5

    .line 1772
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p5

    goto :goto_1

    .line 1762
    :cond_8
    sget-object v3, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    if-nez v4, :cond_9

    .line 1765
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 1781
    :cond_9
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result p2

    if-ne p3, p2, :cond_a

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result p2

    if-eq p5, p2, :cond_b

    .line 1782
    :cond_a
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/f;->c()V

    .line 1784
    :cond_b
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/b/a/f;->m(I)V

    .line 1785
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/b/a/f;->n(I)V

    .line 1786
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/f;->h(I)V

    .line 1787
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/f;->i(I)V

    .line 1788
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/b/a/f;->q(I)V

    .line 1789
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/b/a/f;->r(I)V

    .line 1790
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/b/a/f;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1791
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/b/a/f;->o(I)V

    .line 1792
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/b/a/f;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1793
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/b/a/f;->p(I)V

    .line 1794
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/f;->q(I)V

    .line 1795
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/b/a/f;->r(I)V

    return-void
.end method

.method protected a(ZLandroid/view/View;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/b/a/e;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/b/a/e;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1263
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    const/4 v10, 0x0

    .line 1264
    iput-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ao:Z

    .line 1266
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/b/a/e;->j(I)V

    .line 1267
    iget-boolean v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    const/4 v11, 0x1

    if-eqz v2, :cond_0

    .line 1268
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/b/a/e;->d(Z)V

    const/16 v2, 0x8

    .line 1269
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/b/a/e;->j(I)V

    .line 1271
    :cond_0
    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Ljava/lang/Object;)V

    .line 1273
    instance-of v2, v1, Landroidx/constraintlayout/widget/c;

    if-eqz v2, :cond_1

    .line 1274
    check-cast v1, Landroidx/constraintlayout/widget/c;

    .line 1275
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/f;->Y()Z

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/b/a/e;Z)V

    .line 1277
    :cond_1
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    const/16 v2, 0x11

    const/4 v12, -0x1

    if-eqz v1, :cond_5

    .line 1278
    move-object v1, v7

    check-cast v1, Landroidx/constraintlayout/b/a/h;

    .line 1279
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ak:I

    .line 1280
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->al:I

    .line 1281
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->am:F

    .line 1282
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v2, :cond_2

    .line 1283
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    .line 1284
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 1285
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_3

    .line 1288
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/b/a/h;->e(F)V

    goto/16 :goto_c

    :cond_3
    if-eq v3, v12, :cond_4

    .line 1290
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/b/a/h;->b(I)V

    goto/16 :goto_c

    :cond_4
    if-eq v4, v12, :cond_22

    .line 1292
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/b/a/h;->y(I)V

    goto/16 :goto_c

    .line 1296
    :cond_5
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ad:I

    .line 1297
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ae:I

    .line 1298
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->af:I

    .line 1299
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ag:I

    .line 1300
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ah:I

    .line 1301
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ai:I

    .line 1302
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aj:F

    .line 1304
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v15, v2, :cond_a

    .line 1307
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 1308
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 1309
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    .line 1310
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 1311
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    .line 1312
    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    .line 1313
    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    if-ne v1, v12, :cond_7

    if-ne v2, v12, :cond_7

    .line 1316
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    if-eq v13, v12, :cond_6

    .line 1317
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    goto :goto_0

    .line 1318
    :cond_6
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    if-eq v13, v12, :cond_7

    .line 1319
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    :cond_7
    :goto_0
    if-ne v4, v12, :cond_9

    if-ne v5, v12, :cond_9

    .line 1323
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    if-eq v13, v12, :cond_8

    .line 1324
    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    goto :goto_1

    .line 1325
    :cond_8
    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    if-eq v13, v12, :cond_9

    .line 1326
    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    :cond_9
    :goto_1
    move v13, v4

    move v15, v6

    move v6, v3

    move v3, v2

    goto :goto_2

    :cond_a
    move v15, v13

    move v13, v4

    :goto_2
    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v18

    .line 1332
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    if-eq v2, v12, :cond_b

    .line 1333
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/b/a/e;

    if-eqz v1, :cond_17

    .line 1335
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    invoke-virtual {v7, v1, v2, v3}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e;FI)V

    goto/16 :goto_7

    :cond_b
    if-eq v1, v12, :cond_d

    .line 1340
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_c

    .line 1342
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    move/from16 v16, v1

    move-object/from16 v1, p3

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    goto :goto_3

    :cond_c
    move/from16 v17, v5

    goto :goto_3

    :cond_d
    move/from16 v17, v5

    if-eq v3, v12, :cond_e

    .line 1347
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_e

    .line 1349
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    :cond_e
    :goto_3
    if-eq v13, v12, :cond_f

    .line 1357
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_10

    .line 1359
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    goto :goto_4

    :cond_f
    if-eq v14, v12, :cond_10

    .line 1364
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_10

    .line 1366
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    move-object/from16 v1, p3

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    .line 1373
    :cond_10
    :goto_4
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    if-eq v1, v12, :cond_11

    .line 1374
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_12

    .line 1376
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    goto :goto_5

    .line 1380
    :cond_11
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    if-eq v1, v12, :cond_12

    .line 1381
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_12

    .line 1383
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    .line 1390
    :cond_12
    :goto_5
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    if-eq v1, v12, :cond_13

    .line 1391
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_14

    .line 1393
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    goto :goto_6

    .line 1397
    :cond_13
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    if-eq v1, v12, :cond_14

    .line 1398
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/constraintlayout/b/a/e;

    if-eqz v3, :cond_14

    .line 1400
    sget-object v2, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iget v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/d$a;II)V

    .line 1407
    :cond_14
    :goto_6
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    if-eq v1, v12, :cond_15

    .line 1408
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1409
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/b/a/e;

    if-eqz v2, :cond_15

    if-eqz v1, :cond_15

    .line 1410
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v3, :cond_15

    .line 1411
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1412
    iput-boolean v11, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    .line 1413
    iput-boolean v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    .line 1414
    sget-object v3, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v3

    .line 1415
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->f:Landroidx/constraintlayout/b/a/d$a;

    .line 1416
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    .line 1417
    invoke-virtual {v3, v2, v10, v12, v11}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/a/d;IIZ)Z

    .line 1418
    invoke-virtual {v7, v11}, Landroidx/constraintlayout/b/a/e;->c(Z)V

    .line 1419
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/b/a/e;->c(Z)V

    .line 1420
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->l()V

    .line 1421
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/d;->l()V

    :cond_15
    const/4 v1, 0x0

    move/from16 v14, v17

    cmpl-float v2, v14, v1

    if-ltz v2, :cond_16

    .line 1426
    invoke-virtual {v7, v14}, Landroidx/constraintlayout/b/a/e;->a(F)V

    .line 1428
    :cond_16
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_17

    .line 1429
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(F)V

    :cond_17
    :goto_7
    if-eqz p1, :cond_19

    .line 1433
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-ne v1, v12, :cond_18

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    if-eq v1, v12, :cond_19

    .line 1435
    :cond_18
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v7, v1, v2}, Landroidx/constraintlayout/b/a/e;->d(II)V

    .line 1439
    :cond_19
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    const/4 v2, -0x2

    if-nez v1, :cond_1c

    .line 1440
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    if-ne v1, v12, :cond_1b

    .line 1441
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    if-eqz v1, :cond_1a

    .line 1442
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e$a;)V

    goto :goto_8

    .line 1444
    :cond_1a
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1446
    :goto_8
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    iput v3, v1, Landroidx/constraintlayout/b/a/d;->d:I

    .line 1447
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    iput v3, v1, Landroidx/constraintlayout/b/a/d;->d:I

    goto :goto_9

    .line 1449
    :cond_1b
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1450
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/b/a/e;->o(I)V

    goto :goto_9

    .line 1453
    :cond_1c
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1454
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->o(I)V

    .line 1455
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    if-ne v1, v2, :cond_1d

    .line 1456
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1459
    :cond_1d
    :goto_9
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-nez v1, :cond_20

    .line 1460
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-ne v1, v12, :cond_1f

    .line 1461
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Z

    if-eqz v1, :cond_1e

    .line 1462
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Landroidx/constraintlayout/b/a/e$a;)V

    goto :goto_a

    .line 1464
    :cond_1e
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->d:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1466
    :goto_a
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iput v2, v1, Landroidx/constraintlayout/b/a/d;->d:I

    .line 1467
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iput v2, v1, Landroidx/constraintlayout/b/a/d;->d:I

    goto :goto_b

    .line 1469
    :cond_1f
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->c:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1470
    invoke-virtual {v7, v10}, Landroidx/constraintlayout/b/a/e;->p(I)V

    goto :goto_b

    .line 1473
    :cond_20
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->a:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1474
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->p(I)V

    .line 1475
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    if-ne v1, v2, :cond_21

    .line 1476
    sget-object v1, Landroidx/constraintlayout/b/a/e$a;->b:Landroidx/constraintlayout/b/a/e$a;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Landroidx/constraintlayout/b/a/e$a;)V

    .line 1480
    :cond_21
    :goto_b
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->b(Ljava/lang/String;)V

    .line 1481
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->c(F)V

    .line 1482
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:F

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->d(F)V

    .line 1483
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->t(I)V

    .line 1484
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/b/a/e;->u(I)V

    .line 1485
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    invoke-virtual {v7, v1, v2, v3, v4}, Landroidx/constraintlayout/b/a/e;->a(IIIF)V

    .line 1488
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:F

    invoke-virtual {v7, v1, v2, v3, v4}, Landroidx/constraintlayout/b/a/e;->b(IIIF)V

    :cond_22
    :goto_c
    return-void
.end method

.method protected a()Z
    .locals 3

    .line 1704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 1705
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1706
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 982
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 983
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 1958
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method protected b()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    .line 1924
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1940
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1966
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1967
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1970
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/c;

    .line 1971
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/c;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1975
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1976
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1977
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1978
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 1979
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_3

    .line 1983
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1984
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    .line 1987
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1988
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1989
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 1990
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1991
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 1992
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 1993
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 1994
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 1995
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float/2addr v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 2000
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 2001
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 2002
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 2003
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 2004
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 2005
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 2006
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 2007
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 2008
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 3244
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()V

    .line 3245
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 482
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1932
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1134
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1124
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1087
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1077
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1908
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->h()I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1821
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result p1

    .line 1822
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p1, :cond_3

    .line 1824
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1825
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1826
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    .line 1828
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 1833
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1836
    :cond_1
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->y()I

    move-result v0

    .line 1837
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->z()I

    move-result v2

    .line 1838
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->A()I

    move-result v3

    add-int/2addr v3, v0

    .line 1839
    invoke-virtual {v1}, Landroidx/constraintlayout/b/a/e;->B()I

    move-result v1

    add-int/2addr v1, v2

    .line 1855
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 1856
    instance-of v4, p5, Landroidx/constraintlayout/widget/i;

    if-eqz v4, :cond_2

    .line 1857
    check-cast p5, Landroidx/constraintlayout/widget/i;

    .line 1858
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/i;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 1860
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1865
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 1868
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/c;

    .line 1869
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/c;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1636
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1640
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1642
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1643
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 1644
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1650
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    if-nez v0, :cond_3

    .line 1651
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    if-ne v0, p1, :cond_2

    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    if-ne v2, p2, :cond_2

    .line 1652
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    .line 1653
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->i()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->X()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1652
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, p1, :cond_3

    .line 1657
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_3

    .line 1658
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 1659
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1660
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1664
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v2}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 1665
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 1666
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 1667
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    .line 1668
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->i()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->X()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1667
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void

    .line 1673
    :cond_3
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->w:I

    .line 1674
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->x:I

    .line 1681
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/b/a/f;->g(Z)V

    .line 1683
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    if-eqz v0, :cond_4

    .line 1684
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    .line 1685
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1686
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->f()V

    .line 1690
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroidx/constraintlayout/b/a/f;III)V

    .line 1691
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->A()I

    move-result v4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->B()I

    move-result v5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    .line 1692
    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->i()Z

    move-result v6

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0}, Landroidx/constraintlayout/b/a/f;->X()Z

    move-result v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 1691
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1004
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1005
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 1007
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    .line 1008
    instance-of v1, p1, Landroidx/constraintlayout/widget/h;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1009
    instance-of v0, v0, Landroidx/constraintlayout/b/a/h;

    if-nez v0, :cond_1

    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1011
    new-instance v1, Landroidx/constraintlayout/b/a/h;

    invoke-direct {v1}, Landroidx/constraintlayout/b/a/h;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    .line 1012
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    .line 1013
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->an:Landroidx/constraintlayout/b/a/e;

    check-cast v1, Landroidx/constraintlayout/b/a/h;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/b/a/h;->a(I)V

    .line 1016
    :cond_1
    instance-of v0, p1, Landroidx/constraintlayout/widget/c;

    if-eqz v0, :cond_2

    .line 1017
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/c;

    .line 1018
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/c;->b()V

    .line 1019
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1020
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    .line 1021
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1022
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1026
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1034
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1035
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1038
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(Landroid/view/View;)Landroidx/constraintlayout/b/a/e;

    move-result-object v0

    .line 1039
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/b/a/f;->c(Landroidx/constraintlayout/b/a/e;)V

    .line 1040
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1041
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 993
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 994
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 995
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 3238
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->e()V

    .line 3239
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/e;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:Landroidx/constraintlayout/widget/e;

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 588
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 589
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 590
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->a:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1109
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1112
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:I

    .line 1113
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1096
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1099
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 1100
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1063
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:I

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1050
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1053
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 1054
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/g;)V
    .locals 1

    .line 2058
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->v:Landroidx/constraintlayout/widget/g;

    .line 2059
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Landroidx/constraintlayout/widget/d;

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/g;)V

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1897
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 1898
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroidx/constraintlayout/b/a/f;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/b/a/f;->a(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
