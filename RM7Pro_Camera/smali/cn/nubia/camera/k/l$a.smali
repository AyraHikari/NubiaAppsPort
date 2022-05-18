.class Lcn/nubia/camera/k/l$a;
.super Lcn/nubia/b/a$a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcn/nubia/camera/k/l;

.field private d:Lcn/nubia/camera/k/q;

.field private e:Landroid/hardware/camera2/TotalCaptureResult;

.field private f:Z

.field private g:Lcn/nubia/b/a/f;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/nubia/b/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcn/nubia/camera/k/l;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-direct {p0}, Lcn/nubia/b/a$a;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcn/nubia/camera/k/l$a;->f:Z

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    .line 110
    iput p1, p0, Lcn/nubia/camera/k/l$a;->a:I

    .line 111
    iput p1, p0, Lcn/nubia/camera/k/l$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/k/l;Lcn/nubia/camera/k/l$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/camera/k/l$a;-><init>(Lcn/nubia/camera/k/l;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 247
    invoke-static {}, Lcn/nubia/camera/k/l;->b()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 248
    invoke-static {}, Lcn/nubia/camera/k/l;->b()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private b()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->e:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/camera/k/l$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lcn/nubia/camera/k/l$a;->f:Z

    .line 223
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v0}, Lcn/nubia/camera/k/l;->e(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/l$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v0}, Lcn/nubia/camera/k/l;->e(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/l$b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    iget-object v2, p0, Lcn/nubia/camera/k/l$a;->e:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v3, p0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v3}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/camera/k/l$b;->a(Lcn/nubia/b/a/f;Landroid/hardware/camera2/TotalCaptureResult;Lcn/nubia/camera/k/o;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 212
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f;

    invoke-interface {v1}, Lcn/nubia/b/a/f;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    return-void
.end method

.method public a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "HDRShot"

    if-nez v1, :cond_1

    const-string v1, "image is null"

    .line 149
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/camera/g/e;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/g/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/g/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 156
    :cond_1
    iget v4, v0, Lcn/nubia/camera/k/l$a;->a:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcn/nubia/camera/k/l$a;->a:I

    invoke-direct {v0, v4}, Lcn/nubia/camera/k/l$a;->a(I)I

    .line 164
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->g()Landroid/media/Image;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/algorithm/camera/ArcsoftHDR;->a(Landroid/media/Image;)I

    move-result v4

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPictureTaken ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 167
    iput-object v1, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    .line 169
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 170
    iget-object v2, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    invoke-interface {v2}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 171
    iget-object v4, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    invoke-interface {v4}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/b/a/f$a;

    .line 173
    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v5}, Lcn/nubia/camera/k/l;->b(Lcn/nubia/camera/k/l;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "none"

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "do Effect"

    .line 174
    invoke-static {v3, v5}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v5}, Lcn/nubia/camera/k/l;->c(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/y;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 176
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 177
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    .line 178
    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->b()I

    move-result v13

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->a()I

    move-result v14

    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    .line 179
    invoke-interface {v5}, Lcn/nubia/b/a/f;->f()I

    move-result v15

    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    invoke-interface {v5}, Lcn/nubia/b/a/f;->c()I

    move-result v16

    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    .line 180
    invoke-static {v5}, Lcn/nubia/camera/k/l;->b(Lcn/nubia/camera/k/l;)Ljava/lang/String;

    move-result-object v17

    .line 176
    invoke-static/range {v6 .. v18}, Lcn/nubia/algorithm/camera/EffectAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILjava/lang/String;I)V

    .line 182
    :cond_2
    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v5}, Lcn/nubia/camera/k/l;->d(Lcn/nubia/camera/k/l;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    iget-object v5, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v5}, Lcn/nubia/camera/k/l;->c(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/y;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/k/y;->h()Lcn/nubia/camera/k/ad;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v6}, Lcn/nubia/camera/k/ad;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 184
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 185
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    .line 186
    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->b()I

    move-result v13

    invoke-interface {v4}, Lcn/nubia/b/a/f$a;->a()I

    move-result v14

    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    .line 187
    invoke-interface {v1}, Lcn/nubia/b/a/f;->f()I

    move-result v15

    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->g:Lcn/nubia/b/a/f;

    invoke-interface {v1}, Lcn/nubia/b/a/f;->c()I

    move-result v16

    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->d(Lcn/nubia/camera/k/l;)I

    move-result v17

    invoke-static {}, Lcn/nubia/camera/ba/a;->E()Z

    move-result v19

    .line 184
    invoke-static/range {v6 .. v19}, Lcn/nubia/algorithm/camera/NubiaWaterMark;->addNubiaWaterMark(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIIZ)V

    .line 190
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcn/nubia/camera/k/l$a;->b()V

    goto :goto_0

    .line 196
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcn/nubia/b/a/f;->close()V

    .line 197
    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/camera/g/e;

    if-eqz v1, :cond_5

    .line 198
    iget-object v1, v0, Lcn/nubia/camera/k/l$a;->c:Lcn/nubia/camera/k/l;

    invoke-static {v1}, Lcn/nubia/camera/k/l;->a(Lcn/nubia/camera/k/l;)Lcn/nubia/camera/k/o;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/g/e;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/g/e;->a(Ljava/lang/String;)V

    const-string v1, "onPictureTaken onDataSaveCalled"

    .line 199
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    const-string v1, "onPictureTaken X"

    .line 203
    invoke-static {v3, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    .line 121
    invoke-super/range {p0 .. p6}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 122
    iget p1, p0, Lcn/nubia/camera/k/l$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/nubia/camera/k/l$a;->b:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 123
    iget-object p1, p0, Lcn/nubia/camera/k/l$a;->d:Lcn/nubia/camera/k/q;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 125
    invoke-interface {p1}, Lcn/nubia/camera/k/q;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/b/a$a;->a(Lcn/nubia/b/a;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 133
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 136
    iput-object p3, p0, Lcn/nubia/camera/k/l$a;->e:Landroid/hardware/camera2/TotalCaptureResult;

    .line 142
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/k/l$a;->b()V

    return-void
.end method

.method public a(Lcn/nubia/camera/k/q;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/k/l$a;->d:Lcn/nubia/camera/k/q;

    .line 115
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/l$a;->h:Landroid/util/SparseArray;

    .line 116
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/k/l$a;->i:Landroid/util/SparseArray;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcn/nubia/b/d;)V
    .locals 0

    .line 102
    check-cast p1, Lcn/nubia/b/a/f;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/camera/k/l$a;->a(Lcn/nubia/b/a/f;Lcn/nubia/b/d;)V

    return-void
.end method
