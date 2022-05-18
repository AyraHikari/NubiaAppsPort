.class Lcom/android/gallery3d/filtershow/category/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/category/h;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/category/h;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/h;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/h$b;->a:Lcom/android/gallery3d/filtershow/category/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h$b;->a:Lcom/android/gallery3d/filtershow/category/h;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/editors/x;->h0(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/editors/x;->g0(I)V

    return-void
.end method
