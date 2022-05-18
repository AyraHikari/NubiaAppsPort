.class Lcom/android/gallery3d/filtershow/category/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/category/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic b:Lcom/android/gallery3d/filtershow/category/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/c;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/c$f;->b:Lcom/android/gallery3d/filtershow/category/c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/c$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/c$f;->b:Lcom/android/gallery3d/filtershow/category/c;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/category/c;->b(Lcom/android/gallery3d/filtershow/category/c;)Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/c$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S1(I)V

    return-void
.end method
