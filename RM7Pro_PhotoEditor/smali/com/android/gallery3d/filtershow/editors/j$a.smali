.class Lcom/android/gallery3d/filtershow/editors/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/j;->p0(Landroid/view/LayoutInflater;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$a;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$a;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->Q(Lcom/android/gallery3d/filtershow/editors/j;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$a;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R1(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$a;->a:Lcom/android/gallery3d/filtershow/editors/j;

    iget-object p1, p1, Lcom/android/gallery3d/filtershow/editors/j;->r:Lcom/android/gallery3d/filtershow/imageshow/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/l;->setDrawGraffitiMode(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$a;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->R(Lcom/android/gallery3d/filtershow/editors/j;)V

    :cond_1
    return-void
.end method
