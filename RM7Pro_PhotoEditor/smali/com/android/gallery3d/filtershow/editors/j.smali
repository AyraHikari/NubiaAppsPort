.class public Lcom/android/gallery3d/filtershow/editors/j;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/editors/j$d;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/widget/Button;

.field private F:Landroid/widget/Button;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:Landroid/widget/ImageView;

.field private K:I

.field private L:I

.field private M:Z

.field private N:I

.field private O:[I

.field private P:Landroid/view/View$OnClickListener;

.field public r:Lcom/android/gallery3d/filtershow/imageshow/l;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Ljava/util/List;
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

.field private v:Landroid/widget/GridView;

.field private w:Landroid/content/res/TypedArray;

.field private x:Lcom/android/gallery3d/filtershow/mosaic/e;

.field private y:I

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f08010a

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->y:I

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->M:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->O:[I

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/j$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/j$c;-><init>(Lcom/android/gallery3d/filtershow/editors/j;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0700e3
        0x7f0700e2
        0x7f0700e4
        0x7f0700e5
        0x7f0700e6
        0x7f0700e7
        0x7f0700e8
        0x7f0700e9
    .end array-data
.end method

.method static synthetic Q(Lcom/android/gallery3d/filtershow/editors/j;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/editors/j;->N:I

    return p0
.end method

.method static synthetic R(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->q0()V

    return-void
.end method

.method static synthetic S(Lcom/android/gallery3d/filtershow/editors/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/editors/j;->M:Z

    return p0
.end method

.method static synthetic T(Lcom/android/gallery3d/filtershow/editors/j;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->M:Z

    return p1
.end method

.method static synthetic U(Lcom/android/gallery3d/filtershow/editors/j;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/j;->z:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->j0()V

    return-void
.end method

.method static synthetic W(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->e0()V

    return-void
.end method

.method static synthetic X(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->s0()V

    return-void
.end method

.method static synthetic Y(Lcom/android/gallery3d/filtershow/editors/j;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/editors/j;->y:I

    return p0
.end method

.method static synthetic Z(Lcom/android/gallery3d/filtershow/editors/j;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->y:I

    return p1
.end method

.method static synthetic a0(Lcom/android/gallery3d/filtershow/editors/j;)Lcom/android/gallery3d/filtershow/mosaic/e;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    return-object p0
.end method

.method private c0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->I()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->J()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private h0()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->O:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->O:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "image"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "color"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j0()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->y:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->y:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/l;->W(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private m0()V
    .locals 5

    const/high16 v0, 0x42280000    # 42.0f

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    return-void
.end method

.method private p0(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 3

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const v0, 0x7f0b0031

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800fb

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->E:Landroid/widget/Button;

    new-instance v2, Lcom/android/gallery3d/filtershow/editors/j$a;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/editors/j$a;-><init>(Lcom/android/gallery3d/filtershow/editors/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800fc

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->F:Landroid/widget/Button;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/j$b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/editors/j$b;-><init>(Lcom/android/gallery3d/filtershow/editors/j;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->q0()V

    return-void
.end method

.method private q0()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G0()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->N:I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->N:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->E:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->F:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->E:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->F:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->N:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->E:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->L:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->F:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->K:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->E:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->K:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->F:Landroid/widget/Button;

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->L:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private s0()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getDrawShapeMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    check-cast p2, Landroid/view/ViewGroup;

    const v1, 0x7f0b0037

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0800f5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->s:Landroid/view/ViewGroup;

    const v1, 0x7f0800f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->t:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/filtershow/editors/j;->p0(Landroid/view/LayoutInflater;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->h0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/j;->f0()I

    move-result p1

    new-instance v0, Lcom/android/gallery3d/filtershow/mosaic/e;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->u:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/android/gallery3d/filtershow/mosaic/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    invoke-virtual {v3, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lcom/android/gallery3d/filtershow/imageshow/l;->W(II)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->M:Z

    const p1, 0x7f08016e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->x:Lcom/android/gallery3d/filtershow/mosaic/e;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->v:Landroid/widget/GridView;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/j$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/j$d;-><init>(Lcom/android/gallery3d/filtershow/editors/j;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->m0()V

    const p1, 0x7f0801ee

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const v0, 0x7f08027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v3, 0x7f080268

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    const v4, 0x7f080154

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/j;->g0()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/filtershow/editors/j;->l0(I)V

    if-ne v5, v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne v5, p1, :cond_2

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    if-ne v5, p1, :cond_3

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    const p1, 0x7f08013c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->z:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800f7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->A:Landroid/widget/ImageView;

    const p1, 0x7f0800f6

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->B:Landroid/widget/ImageView;

    const p1, 0x7f0800fa

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->C:Landroid/widget/ImageView;

    const p1, 0x7f0800f9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->D:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->A:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->C:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->B:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->C:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->D:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/j;->r0()V

    const p1, 0x7f080166

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    const p1, 0x7f080168

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    const p1, 0x7f080169

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->I:Landroid/widget/ImageView;

    const p1, 0x7f080167

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->J:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->G:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->H:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->I:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->J:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->P:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->s0()V

    return-void
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->H()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getColorIndex()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g0()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->getPathWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->V()V

    :cond_0
    return-void
.end method

.method public k0(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->w:Landroid/content/res/TypedArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/filtershow/imageshow/l;->W(II)V

    :cond_0
    return-void
.end method

.method public l0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->setPathWidth(I)V

    :cond_0
    return-void
.end method

.method public n0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->setInitImage(Z)V

    :cond_0
    return-void
.end method

.method public o0(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/l;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/android/gallery3d/filtershow/imageshow/l;->setEditor(Lcom/android/gallery3d/filtershow/editors/j;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050027

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->K:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050090

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/gallery3d/filtershow/editors/j;->L:I

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G0()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->N:I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    return-void
.end method

.method public r0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->B:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->d0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->B:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->c0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->C:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/j;->D:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->d0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->D:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/j;->c0()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->P()V

    :cond_0
    return-void
.end method
