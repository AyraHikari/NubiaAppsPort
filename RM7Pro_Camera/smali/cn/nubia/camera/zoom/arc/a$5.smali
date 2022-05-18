.class Lcn/nubia/camera/zoom/arc/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->a(III)Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;I)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    iput p2, p0, Lcn/nubia/camera/zoom/arc/a$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 508
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ArcZoomUI"

    const-string v0, "ShortCut click has disable"

    .line 509
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/zoom/arc/a$5;->a:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;FF)V

    .line 513
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a$5;->a:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;F)F

    .line 514
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->n(Lcn/nubia/camera/zoom/arc/a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcn/nubia/camera/zoom/arc/a$5;->a:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    .line 516
    iget-object v0, p0, Lcn/nubia/camera/zoom/arc/a$5;->b:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v0}, Lcn/nubia/camera/zoom/arc/a;->m(Lcn/nubia/camera/zoom/arc/a;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/zoom/arc/a$5;->a:I

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;Landroid/view/View;Landroid/view/View;IZ)V

    return-void
.end method
