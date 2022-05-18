.class Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/category/CategoryTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/CategoryTrack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->a(Lcom/android/gallery3d/filtershow/category/CategoryTrack;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->invalidate()V

    :goto_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/CategoryTrack$a;->a:Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->b()V

    return-void
.end method
