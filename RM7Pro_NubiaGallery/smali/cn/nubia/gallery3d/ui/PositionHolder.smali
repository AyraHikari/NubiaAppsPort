.class public Lcn/nubia/gallery3d/ui/PositionHolder;
.super Ljava/lang/Object;
.source "PositionHolder.java"


# instance fields
.field private mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addEntry(ILandroid/graphics/Rect;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public dispatchClickEvent(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 24
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 25
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 19
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/PositionHolder;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    return-object p1
.end method
