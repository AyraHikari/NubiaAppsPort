.class Lcn/nubia/collage/ui/CollageView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/ui/CollageView;->T(II)V
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

    iput-object p1, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/collage/ui/CollageView;->z(Lcn/nubia/collage/ui/CollageView;Z)Z

    iget-object p1, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {p1}, Lcn/nubia/collage/ui/CollageView;->y(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/ui/CollageView$j;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v0}, Lcn/nubia/collage/ui/CollageView;->v(Lcn/nubia/collage/ui/CollageView;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/CollageView$b;->a:Lcn/nubia/collage/ui/CollageView;

    invoke-static {v1}, Lcn/nubia/collage/ui/CollageView;->x(Lcn/nubia/collage/ui/CollageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->h(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/collage/ui/CollageView$j;->g(I)V

    :cond_0
    return-void
.end method
