.class Lcn/nubia/camera/zoom/arc/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/zoom/arc/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/zoom/arc/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/zoom/arc/a;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 345
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->b(Lcn/nubia/camera/zoom/arc/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ArcZoomUI"

    const-string v0, "CurrentZoom click has disable"

    .line 346
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {p1}, Lcn/nubia/camera/zoom/arc/a;->c(Lcn/nubia/camera/zoom/arc/a;)I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr p1, v1

    .line 350
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v3}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;FF)V

    .line 351
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;F)F

    .line 352
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->f(Lcn/nubia/camera/zoom/arc/a;)Lcn/nubia/camera/zoom/arc/ArcZoomView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v2}, Lcn/nubia/camera/zoom/arc/a;->e(Lcn/nubia/camera/zoom/arc/a;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/zoom/arc/ArcZoomView;->a(FZ)V

    .line 353
    iget-object v1, p0, Lcn/nubia/camera/zoom/arc/a$2;->a:Lcn/nubia/camera/zoom/arc/a;

    invoke-static {v1}, Lcn/nubia/camera/zoom/arc/a;->d(Lcn/nubia/camera/zoom/arc/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1, v0}, Lcn/nubia/camera/zoom/arc/a;->a(Lcn/nubia/camera/zoom/arc/a;FZ)V

    return-void
.end method
