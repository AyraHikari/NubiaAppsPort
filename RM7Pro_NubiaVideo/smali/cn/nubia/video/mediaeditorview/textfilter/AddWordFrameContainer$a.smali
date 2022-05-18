.class Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediaeditorview/textfilter/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;


# direct methods
.method constructor <init>(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->d(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->l(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->b(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Landroid/graphics/Matrix;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->k(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer$a;->a:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->a(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->w(Landroid/graphics/Matrix;Lcn/nubia/video/mediaeditorview/textfilter/b;)V

    :cond_0
    return-void
.end method
