.class Lcn/nubia/camera/au/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/au/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1230
    iget-object v0, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->v(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/h;->t()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1238
    iget-object v0, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/au/a/a;->b()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/au/a/a;->c()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v3}, Lcn/nubia/camera/au/a;->q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/au/a/a;->d()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Landroid/graphics/Bitmap;III)V

    return-void
.end method

.method public a(Z[BII[BII)V
    .locals 13

    move-object v0, p0

    const-string v1, "StarTrackFragment"

    const-string v2, "onCutoutFinish"

    .line 1243
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ba/f;->c()V

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->w(Lcn/nubia/camera/au/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/mask.y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lcn/nubia/camera/au/i;->a([BLjava/lang/String;)V

    .line 1246
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v1}, Lcn/nubia/camera/au/a;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1251
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v1}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/a/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 1252
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->v(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/au/h;->u()V

    .line 1253
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->j(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/au/b/b;->d()V

    .line 1254
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-virtual {v1}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/q/i;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1255
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->z(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/au/a$6$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/au/a$6$1;-><init>(Lcn/nubia/camera/au/a$6;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1266
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    return-void

    .line 1270
    :cond_1
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->A(Lcn/nubia/camera/au/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1271
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    const/16 v11, 0x1e

    invoke-static {v1, v11}, Lcn/nubia/camera/au/a;->b(Lcn/nubia/camera/au/a;I)V

    .line 1273
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    const v2, 0x7f0f030b

    invoke-virtual {v1, v2}, Lcn/nubia/camera/au/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->B(Lcn/nubia/camera/au/a;)Lcom/android/preference/PreferenceGroup;

    move-result-object v2

    const-string v3, "pref_silhouette_key"

    invoke-virtual {v2, v3}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1274
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    new-instance v12, Lcn/nubia/camera/au/a/b;

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->C(Lcn/nubia/camera/au/a;)[I

    move-result-object v7

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->D(Lcn/nubia/camera/au/a;)[F

    move-result-object v8

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    iget-object v10, v2, Lcn/nubia/camera/au/a;->b:Lcn/nubia/camera/au/a/b$a;

    move-object v2, v12

    move-object v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v2 .. v10}, Lcn/nubia/camera/au/a/b;-><init>([B[BII[I[FZLcn/nubia/camera/au/a/b$a;)V

    invoke-static {v1, v12}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Lcn/nubia/camera/au/a/b;)Lcn/nubia/camera/au/a/b;

    .line 1275
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->G(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/b;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->E(Lcn/nubia/camera/au/a;)Landroid/view/Surface;

    move-result-object v2

    iget-object v3, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v3}, Lcn/nubia/camera/au/a;->F(Lcn/nubia/camera/au/a;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v4}, Lcn/nubia/camera/au/a;->F(Lcn/nubia/camera/au/a;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v11}, Lcn/nubia/camera/au/a/b;->a(Landroid/view/Surface;III)V

    .line 1276
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->H(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->G(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 1277
    iget-object v1, v0, Lcn/nubia/camera/au/a$6;->a:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->I(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->h()V

    return-void
.end method
