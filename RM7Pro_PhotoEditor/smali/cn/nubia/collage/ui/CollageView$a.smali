.class Lcn/nubia/collage/ui/CollageView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageView;->E(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/ui/CollageView;


# direct methods
.method constructor <init>(Lcn/nubia/collage/ui/CollageView;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->w(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/collage/ui/a;->c(I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/collage/o/b/k;->h(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/ui/CollageView$j;->f(II)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$a;->a:Lcn/nubia/collage/ui/CollageView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    :cond_0
    return-void
.end method
