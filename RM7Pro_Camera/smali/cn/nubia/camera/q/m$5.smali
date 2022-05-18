.class Lcn/nubia/camera/q/m$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/q/m;->h(Landroid/view/View;)V
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

    .line 263
    iput-object p1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 266
    iget-object v0, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->e()Lcn/nubia/camera/k/ah;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 268
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    .line 269
    invoke-static {v1}, Lcn/nubia/camera/q/m;->d(Lcn/nubia/camera/q/m;)Lcom/android/common/ui/a;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    .line 270
    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    .line 271
    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 274
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0305

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-static {v2}, Lcn/nubia/camera/q/m;->e(Lcn/nubia/camera/q/m;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v2}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0f00d4

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-wide/16 v5, -0x1

    .line 280
    invoke-virtual {v0}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/k/y;->j()J

    move-result-wide v7

    cmp-long v0, v5, v7

    const v5, 0x7f0f02e5

    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 287
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->u()Lcom/android/preference/c;

    move-result-object v0

    const-string v6, "pref_manual_cct"

    invoke-virtual {v0, v6, v3}, Lcom/android/preference/c;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v6, 0x7fffffff

    if-ne v0, v6, :cond_5

    if-eqz v2, :cond_4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0120

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    .line 294
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v0}, Lcn/nubia/camera/q/m;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->V()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    move v4, v2

    .line 301
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-static {v0}, Lcn/nubia/camera/q/m;->f(Lcn/nubia/camera/q/m;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_8

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/q/m$5;->a:Lcn/nubia/camera/q/m;

    invoke-virtual {v1}, Lcn/nubia/camera/q/m;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00b9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_9
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    :cond_a
    :goto_2
    return-void
.end method
