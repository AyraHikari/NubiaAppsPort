.class Lcn/nubia/camera/q/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->f(Landroid/view/View;)V
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

    .line 182
    iput-object p1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 187
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    .line 188
    invoke-static {v1}, Lcn/nubia/camera/q/m;->a(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    .line 189
    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    .line 190
    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 193
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0305

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 195
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f00e3

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 199
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v4}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcn/nubia/camera/q/i;

    invoke-virtual {v4}, Lcn/nubia/camera/q/i;->P()Lcn/nubia/camera/z/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/z/b;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f02e5

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0f0115

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v2, v0

    .line 206
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->b(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$1;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f040c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    :cond_5
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_6
    :goto_2
    return-void
.end method
