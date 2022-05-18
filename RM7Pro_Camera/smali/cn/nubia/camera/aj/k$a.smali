.class Lcn/nubia/camera/aj/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/k;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/aj/k;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/aj/k;Lcn/nubia/camera/aj/k$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/k$a;-><init>(Lcn/nubia/camera/aj/k;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;
    .locals 2

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "title"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".jpg"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "datetaken"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "mime_type"

    const-string p3, "image/jpeg"

    .line 166
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "relative_path"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private a(JI)Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 177
    sget v1, Lcn/nubia/d/a;->g:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget v1, Lcn/nubia/d/a;->h:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    invoke-static {v0, p1, p2}, Lcn/nubia/camera/ba/a;->a(Landroid/util/SparseArray;J)V

    .line 182
    sget p1, Lcn/nubia/d/a;->ag:I

    const-string p2, "wait"

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget p1, Lcn/nubia/d/a;->j:I

    invoke-static {p3}, Lcn/nubia/d/a;->d(I)S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 25

    move-object/from16 v9, p0

    .line 91
    :try_start_0
    iget-object v0, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v0}, Lcn/nubia/camera/aj/k;->a(Lcn/nubia/camera/aj/k;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    iget-object v0, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v0}, Lcn/nubia/camera/aj/k;->e(Lcn/nubia/camera/aj/k;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v0}, Lcn/nubia/camera/aj/k;->b(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/v/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v0

    .line 96
    iget-object v1, v0, Lcom/android/common/a;->a:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 97
    iget v15, v0, Lcom/android/common/a;->c:I

    .line 98
    iget v0, v0, Lcom/android/common/a;->d:I

    .line 100
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const-string v1, "HDRSnapshotStorageRequest"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewDataCopy width, height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v1}, Lcn/nubia/camera/aj/k;->a(Lcn/nubia/camera/aj/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 106
    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v1}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v1

    iget-object v2, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v2}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    iget-object v3, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v3}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 107
    invoke-static {v10, v11}, Lcn/nubia/camera/av/c;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 109
    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v1}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/al/c;->d()I

    move-result v1

    .line 112
    iget-object v2, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v2}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v2}, Lcn/nubia/camera/aj/k;->d(Lcn/nubia/camera/aj/k;)Z

    move-result v2

    if-nez v2, :cond_2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {v13, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_2
    const/4 v2, 0x0

    .line 116
    invoke-static {}, Lcn/nubia/camera/ba/b;->e()Z

    move-result v3

    if-nez v3, :cond_3

    .line 117
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    iget-object v3, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v3}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iget-object v3, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v3}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/al/c;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v2

    :cond_3
    move v7, v2

    sub-int v2, v1, v7

    add-int/lit16 v2, v2, 0x168

    .line 119
    rem-int/lit16 v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 122
    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_4

    move/from16 v16, v0

    move v6, v15

    goto :goto_1

    :cond_4
    move v6, v0

    move/from16 v16, v15

    :goto_1
    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v8

    move-wide v4, v10

    move/from16 v17, v7

    move/from16 v7, v16

    move-object/from16 v16, v13

    move-object v13, v8

    move/from16 v8, v17

    .line 129
    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/aj/k$a;->a(Ljava/lang/String;Ljava/lang/String;JIII)Landroid/content/ContentValues;

    move-result-object v22

    .line 131
    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    new-instance v2, Lcn/nubia/k/b/c;

    iget-object v3, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    .line 132
    invoke-static {v3}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    .line 133
    invoke-static {v4}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v4

    iget-object v5, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    .line 134
    invoke-static {v5}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v5

    const/16 v18, 0x55

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move/from16 v6, v17

    .line 142
    invoke-direct {v9, v10, v11, v6}, Lcn/nubia/camera/aj/k$a;->a(JI)Landroid/util/SparseArray;

    move-result-object v21

    new-instance v6, Lcn/nubia/camera/aj/k$a$1;

    invoke-direct {v6, v9}, Lcn/nubia/camera/aj/k$a$1;-><init>(Lcn/nubia/camera/aj/k$a;)V

    const/16 v24, 0x0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object/from16 v3, v16

    move-object v13, v5

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v23, v6

    invoke-direct/range {v10 .. v24}, Lcn/nubia/k/b/c;-><init>(Landroid/content/ContentResolver;Lcn/nubia/l/a/b;Lcn/nubia/k/a/a;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcn/nubia/k/b/d;Lcn/nubia/m/b;)V

    .line 131
    invoke-static {v1, v2}, Lcn/nubia/camera/aj/k;->a(Lcn/nubia/camera/aj/k;Lcn/nubia/k/b/c;)Lcn/nubia/k/b/c;

    .line 154
    iget-object v0, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v0}, Lcn/nubia/camera/aj/k;->c(Lcn/nubia/camera/aj/k;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->y()Lcn/nubia/k/a/a;

    move-result-object v0

    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/k/a/a;->b(Lcn/nubia/k/b/e;Z)Lcn/nubia/k/a/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    iget-object v0, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v0}, Lcn/nubia/camera/aj/k;->e(Lcn/nubia/camera/aj/k;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcn/nubia/camera/aj/k$a;->a:Lcn/nubia/camera/aj/k;

    invoke-static {v1}, Lcn/nubia/camera/aj/k;->e(Lcn/nubia/camera/aj/k;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 157
    throw v0
.end method
