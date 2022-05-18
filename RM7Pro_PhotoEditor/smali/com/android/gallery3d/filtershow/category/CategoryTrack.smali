.class public Lcom/android/gallery3d/filtershow/category/CategoryTrack;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/category/b;

.field private b:I

.field private c:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;-><init>(Lcom/android/gallery3d/filtershow/category/CategoryTrack;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->c:Landroid/database/DataSetObserver;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lb/a/d/a;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b:I

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/category/CategoryTrack;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->m(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    iget v2, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/b;->m(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/gallery3d/filtershow/category/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->c:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public invalidate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V
    .locals 1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a:Lcom/android/gallery3d/filtershow/category/b;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->c:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b()V

    return-void
.end method
