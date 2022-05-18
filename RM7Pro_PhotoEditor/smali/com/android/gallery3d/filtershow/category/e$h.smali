.class Lcom/android/gallery3d/filtershow/category/e$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/category/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/category/e;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/e;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/e$h;->a:Lcom/android/gallery3d/filtershow/category/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/category/e;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/e$h;->a:Lcom/android/gallery3d/filtershow/category/e;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/category/e;->t(I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/h/a;->j()Lcom/android/gallery3d/filtershow/h/a;

    move-result-object p1

    const-string v0, "cn.nubia.photoeditor"

    const-string v1, "gallery_edit_word"

    invoke-virtual {p1, v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
