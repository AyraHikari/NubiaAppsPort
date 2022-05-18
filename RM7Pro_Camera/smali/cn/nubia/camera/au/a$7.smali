.class Lcn/nubia/camera/au/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/au/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/au/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcn/nubia/camera/au/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/au/a;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1282
    iput p1, p0, Lcn/nubia/camera/au/a$7;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "StarTrackFragment"

    const-string v1, "onStarTrackDrawFinish"

    .line 1335
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->G(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/a/b;->d()V

    .line 1337
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->G(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/a/b;->a()V

    .line 1338
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->m(Lcn/nubia/camera/au/a;)V

    .line 1340
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 1341
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->v(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/h;->u()V

    .line 1342
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->j(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/au/b/b;->d()V

    .line 1343
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-virtual {v0}, Lcn/nubia/camera/au/a;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/q/i;->a_(Z)V

    .line 1344
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->V(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcn/nubia/camera/au/a$7$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/au/a$7$3;-><init>(Lcn/nubia/camera/au/a$7;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1351
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/TotalCaptureResult;

    .line 1352
    iput v1, p0, Lcn/nubia/camera/au/a$7;->a:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 1286
    iget-object v0, p0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v0}, Lcn/nubia/camera/au/a;->J(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/au/a$7$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/camera/au/a$7$1;-><init>(Lcn/nubia/camera/au/a$7;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1302
    iget v1, v0, Lcn/nubia/camera/au/a$7;->a:I

    if-nez v1, :cond_0

    .line 1303
    iget-object v1, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->K(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/au/a$7$2;

    invoke-direct {v2, v0}, Lcn/nubia/camera/au/a$7$2;-><init>(Lcn/nubia/camera/au/a$7;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1313
    :cond_0
    iget-object v1, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->L(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    iget-object v2, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->M(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result v1

    .line 1314
    iget-object v2, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v2}, Lcn/nubia/camera/au/a;->q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/au/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/au/a/a;->b()I

    move-result v12

    .line 1315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v3}, Lcn/nubia/camera/au/a;->N(Lcn/nubia/camera/au/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcn/nubia/camera/au/a$7;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1316
    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v3}, Lcn/nubia/camera/au/a;->O(Lcn/nubia/camera/au/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v4}, Lcn/nubia/camera/au/a;->P(Lcn/nubia/camera/au/a;)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v4, v2

    move v10, v12

    invoke-static/range {v3 .. v10}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v11

    .line 1317
    new-instance v15, Lcn/nubia/k/b/b;

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    .line 1318
    invoke-static {v3}, Lcn/nubia/camera/au/a;->Q(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    .line 1319
    invoke-static {v3}, Lcn/nubia/camera/au/a;->R(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v5

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    .line 1320
    invoke-static {v3}, Lcn/nubia/camera/au/a;->S(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v6

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    const/4 v7, 0x0

    .line 1322
    invoke-static {v3}, Lcn/nubia/camera/au/a;->P(Lcn/nubia/camera/au/a;)J

    move-result-wide v8

    invoke-static {v3, v7, v8, v9, v12}, Lcn/nubia/camera/au/a;->a(Lcn/nubia/camera/au/a;ZJI)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v3, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    .line 1323
    invoke-static {v3}, Lcn/nubia/camera/au/a;->O(Lcn/nubia/camera/au/a;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    if-lez v1, :cond_1

    new-instance v3, Lcn/nubia/m/b;

    invoke-direct {v3, v12, v1}, Lcn/nubia/m/b;-><init>(II)V

    move-object v14, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v14, v1

    :goto_0
    move-object v3, v15

    move-object/from16 v7, p1

    move-object v10, v2

    invoke-direct/range {v3 .. v14}, Lcn/nubia/k/b/b;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 1329
    iget-object v1, v0, Lcn/nubia/camera/au/a$7;->b:Lcn/nubia/camera/au/a;

    invoke-static {v1}, Lcn/nubia/camera/au/a;->T(Lcn/nubia/camera/au/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v15, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;

    .line 1330
    iget v1, v0, Lcn/nubia/camera/au/a$7;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/camera/au/a$7;->a:I

    return-void
.end method
