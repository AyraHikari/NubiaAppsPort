.class Lcom/android/gallery3d/filtershow/editors/o$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/o;->q(Landroid/view/LayoutInflater;Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/widget/LinearLayout;)V
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

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/category/e;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/o;->d(Lcom/android/gallery3d/filtershow/editors/o;)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/o;->f(Lcom/android/gallery3d/filtershow/editors/o;I)Z

    move-result p1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/editors/o;->e(Lcom/android/gallery3d/filtershow/editors/o;I)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/o;->g(Lcom/android/gallery3d/filtershow/editors/o;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/o;->d(Lcom/android/gallery3d/filtershow/editors/o;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U1(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L1(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I1()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->b:Lcom/android/gallery3d/filtershow/editors/o;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/o$f;->a:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/editors/o;->n(IZ)V

    :cond_0
    return-void
.end method
