.class Lcom/android/gallery3d/filtershow/editors/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field final synthetic b:Lcom/android/gallery3d/filtershow/editors/o;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/o;Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->b:Lcom/android/gallery3d/filtershow/editors/o;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/o;->b(Lcom/android/gallery3d/filtershow/editors/o;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->c0()Z

    move-result p1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->A()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r1()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->g(Ljava/util/Vector;)V

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/p;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/p;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/p;->t0()I

    move-result p1

    const v1, 0x7f0e012b

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r1()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/f/b;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->g(Ljava/util/Vector;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/o;->c(Lcom/android/gallery3d/filtershow/editors/o;)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/o;->c(Lcom/android/gallery3d/filtershow/editors/o;)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->s()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$b;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method
