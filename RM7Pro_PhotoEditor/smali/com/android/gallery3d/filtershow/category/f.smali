.class public Lcom/android/gallery3d/filtershow/category/f;
.super Landroid/support/v4/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/category/f$a;,
        Lcom/android/gallery3d/filtershow/category/f$b;,
        Lcom/android/gallery3d/filtershow/category/f$c;
    }
.end annotation


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/editors/n;

.field private b:Landroid/widget/GridView;

.field private c:Lcom/android/gallery3d/filtershow/mosaic/e;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/android/gallery3d/filtershow/category/f$b;

.field private g:Lcom/android/gallery3d/filtershow/category/f$c;

.field private h:Z

.field private i:[I

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->a:Lcom/android/gallery3d/filtershow/editors/n;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->f:Lcom/android/gallery3d/filtershow/category/f$b;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/category/f;->h:Z

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->i:[I

    const-string v0, "blur"

    const-string v1, "grid"

    const-string v2, "print"

    filled-new-array {v0, v1, v2, v2, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->j:[Ljava/lang/String;

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    return-void

    :array_0
    .array-data 4
        0x7f070197
        0x7f070196
        0x7f070199
        0x7f070198
        0x7f07019a
    .end array-data
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$c;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/f;->g:Lcom/android/gallery3d/filtershow/category/f$c;

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/category/f;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    return p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/category/f;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    return p1
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/category/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/category/f;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/category/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/category/f;->h:Z

    return p1
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/editors/n;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/f;->a:Lcom/android/gallery3d/filtershow/editors/n;

    return-object p0
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/f;->f:Lcom/android/gallery3d/filtershow/category/f$b;

    return-object p0
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/category/f;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    return-object p0
.end method

.method private k()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/f;->i:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->i:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "image"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->j:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "text"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const v0, 0x7f0b0060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/category/f;->k()V

    new-instance p2, Lcom/android/gallery3d/filtershow/mosaic/e;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-direct {p2, p3, v0}, Lcom/android/gallery3d/filtershow/mosaic/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    iget p3, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    const p2, 0x7f08016e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    new-instance p3, Lcom/android/gallery3d/filtershow/category/f$a;

    invoke-direct {p3, p0}, Lcom/android/gallery3d/filtershow/category/f$a;-><init>(Lcom/android/gallery3d/filtershow/category/f;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/category/f;->o()V

    return-object p1
.end method

.method private o()V
    .locals 6

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/f;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->b:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/f;->h:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0()Lcom/android/gallery3d/filtershow/category/b;

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/category/f;->h:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/f;->d:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/f;->c:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/f;->l()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/f;->m(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/editors/n;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/f;->a:Lcom/android/gallery3d/filtershow/editors/n;

    :cond_0
    return-void
.end method

.method public q(Lcom/android/gallery3d/filtershow/category/f$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/f;->f:Lcom/android/gallery3d/filtershow/category/f$b;

    return-void
.end method

.method public r(Lcom/android/gallery3d/filtershow/category/f$c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/f;->g:Lcom/android/gallery3d/filtershow/category/f$c;

    return-void
.end method
