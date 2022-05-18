.class Lcn/nubia/camera/o/e$1;
.super Lcn/nubia/camera/extendedUI/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/o/e;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/o/e;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-direct {p0, p2, p3}, Lcn/nubia/camera/extendedUI/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {v0}, Lcn/nubia/camera/o/e;->a(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    .line 139
    invoke-static {v0}, Lcn/nubia/camera/o/e;->b(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    .line 140
    invoke-static {v0}, Lcn/nubia/camera/o/e;->c(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-super {p0, p1}, Lcn/nubia/camera/extendedUI/g;->onClick(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-virtual {p1}, Lcn/nubia/camera/o/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/y;->k()Lcn/nubia/camera/k/x;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x;->a()Lcn/nubia/camera/k/x$b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/k/x$b;->a()Landroid/util/Size;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-virtual {v0}, Lcn/nubia/camera/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(F)V

    .line 147
    iget-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->d(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 148
    iget-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->f(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {v0}, Lcn/nubia/camera/o/e;->e(Lcn/nubia/camera/o/e;)Lcom/android/common/c/a$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 150
    iget-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-virtual {p1}, Lcn/nubia/camera/o/e;->e()Lcn/nubia/camera/k/ah;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/o/e$1$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/o/e$1$1;-><init>(Lcn/nubia/camera/o/e$1;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 167
    iget-object p1, p0, Lcn/nubia/camera/o/e$1;->a:Lcn/nubia/camera/o/e;

    invoke-static {p1}, Lcn/nubia/camera/o/e;->j(Lcn/nubia/camera/o/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/ae/a;->a(JZ)V

    :cond_0
    return-void
.end method
