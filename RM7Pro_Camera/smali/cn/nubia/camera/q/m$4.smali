.class Lcn/nubia/camera/q/m$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->g(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/m;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/m;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    .line 236
    invoke-static {v0}, Lcn/nubia/camera/q/m;->c(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    .line 237
    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    .line 238
    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0305

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    invoke-virtual {v1}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/z/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$4;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0115

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
