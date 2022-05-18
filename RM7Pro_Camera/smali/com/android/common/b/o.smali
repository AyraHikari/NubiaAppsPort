.class public abstract Lcom/android/common/b/o;
.super Lcom/android/common/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/b/o$a;
    }
.end annotation


# static fields
.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/common/b/o$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/android/common/b/o$a;

.field private static q:I


# instance fields
.field private l:Z

.field private m:Z

.field protected n:Landroid/graphics/Bitmap;

.field private o:Z

.field private p:Z

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/b/o;->j:Ljava/util/HashMap;

    .line 48
    new-instance v0, Lcom/android/common/b/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/b/o$a;-><init>(Lcom/android/common/b/o$1;)V

    sput-object v0, Lcom/android/common/b/o;->k:Lcom/android/common/b/o$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Lcom/android/common/b/o;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, v0, v1, v1}, Lcom/android/common/b/a;-><init>(Lcom/android/common/b/g;II)V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/android/common/b/o;->l:Z

    .line 55
    iput-boolean v1, p0, Lcom/android/common/b/o;->m:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/common/b/o;->o:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/common/b/o;->p:Z

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/common/b/o;->a(Z)V

    .line 72
    iput v0, p0, Lcom/android/common/b/o;->r:I

    :cond_0
    return-void
.end method

.method private static a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 119
    sget-object v0, Lcom/android/common/b/o;->k:Lcom/android/common/b/o$a;

    .line 120
    iput-boolean p0, v0, Lcom/android/common/b/o$a;->a:Z

    .line 121
    iput-object p1, v0, Lcom/android/common/b/o$a;->b:Landroid/graphics/Bitmap$Config;

    .line 122
    iput p2, v0, Lcom/android/common/b/o$a;->c:I

    .line 123
    sget-object v1, Lcom/android/common/b/o;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 126
    invoke-static {v1, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p2, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v1, p0

    .line 128
    sget-object p0, Lcom/android/common/b/o;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/common/b/o$a;->a()Lcom/android/common/b/o$a;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method private d(Lcom/android/common/b/g;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/android/common/b/o;->o()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 213
    :try_start_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 214
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/b/o;->d()I

    move-result v11

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/b/o;->e()I

    move-result v12

    const/4 v14, 0x1

    if-gt v9, v11, :cond_0

    if-gt v10, v12, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 220
    :goto_0
    invoke-direct {v8, v1}, Lcom/android/common/b/o;->d(Z)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Lcom/android/common/b/g;->h()Lcom/android/common/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/b/i;->a()I

    move-result v1

    iput v1, v8, Lcom/android/common/b/o;->a:I

    const-string v1, "UploadedTexture"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/android/common/b/o;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0, v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;)V

    if-ne v9, v11, :cond_1

    if-ne v10, v12, :cond_1

    .line 227
    invoke-virtual {v0, v8, v5}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 229
    :cond_1
    invoke-static {v5}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v15

    .line 230
    invoke-static {v5}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 231
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 233
    invoke-virtual {v0, v8, v15, v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;II)V

    .line 234
    iget v4, v8, Lcom/android/common/b/o;->r:I

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v3, v4

    move-object v13, v6

    move v6, v15

    move/from16 v16, v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V

    .line 236
    iget v1, v8, Lcom/android/common/b/o;->r:I

    if-lez v1, :cond_2

    .line 238
    invoke-static {v14, v13, v12}, Lcom/android/common/b/o;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 239
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    .line 242
    invoke-static {v1, v13, v11}, Lcom/android/common/b/o;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    .line 243
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V

    .line 247
    :cond_2
    iget v1, v8, Lcom/android/common/b/o;->r:I

    add-int/2addr v1, v9

    if-ge v1, v11, :cond_3

    .line 248
    invoke-static {v14, v13, v12}, Lcom/android/common/b/o;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 249
    iget v1, v8, Lcom/android/common/b/o;->r:I

    add-int v3, v1, v9

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V

    .line 253
    :cond_3
    iget v1, v8, Lcom/android/common/b/o;->r:I

    add-int/2addr v1, v10

    if-ge v1, v12, :cond_4

    const/4 v1, 0x0

    .line 254
    invoke-static {v1, v13, v11}, Lcom/android/common/b/o;->a(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v3, 0x0

    .line 255
    iget v1, v8, Lcom/android/common/b/o;->r:I

    add-int v4, v1, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/common/b/o;->p()V

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/android/common/b/o;->a(Lcom/android/common/b/g;)V

    .line 263
    iput v14, v8, Lcom/android/common/b/o;->b:I

    .line 264
    iput-boolean v14, v8, Lcom/android/common/b/o;->l:Z

    return-void

    :catchall_0
    move-exception v0

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/android/common/b/o;->p()V

    .line 260
    throw v0

    :cond_5
    const/4 v0, -0x1

    .line 266
    iput v0, v8, Lcom/android/common/b/o;->b:I

    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Texture load fail, no bitmap"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method private o()Landroid/graphics/Bitmap;
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/common/b/o;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/common/b/o;->r:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 137
    iget-object v1, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/common/b/o;->r:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 138
    iget v2, p0, Lcom/android/common/b/o;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/android/common/b/o;->a(II)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private p()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/common/b/o;->d(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/common/b/o;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public b()I
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/common/b/o;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/common/b/o;->o()Landroid/graphics/Bitmap;

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/common/b/o;->c:I

    return v0
.end method

.method protected b(Lcom/android/common/b/g;)Z
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/common/b/o;->c(Lcom/android/common/b/g;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/common/b/o;->n()Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/common/b/o;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/common/b/o;->o()Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    iget v0, p0, Lcom/android/common/b/o;->d:I

    return v0
.end method

.method public c(Lcom/android/common/b/g;)V
    .locals 9

    .line 186
    invoke-virtual {p0}, Lcom/android/common/b/o;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/android/common/b/o;->p:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/common/b/o;->q:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/common/b/o;->q:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/common/b/o;->d(Lcom/android/common/b/g;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcom/android/common/b/o;->l:Z

    if-nez v0, :cond_2

    .line 192
    invoke-direct {p0}, Lcom/android/common/b/o;->o()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 193
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    .line 194
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    .line 195
    iget v5, p0, Lcom/android/common/b/o;->r:I

    move-object v2, p1

    move-object v3, p0

    move v4, v5

    invoke-virtual/range {v2 .. v8}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;IILandroid/graphics/Bitmap;II)V

    .line 196
    invoke-direct {p0}, Lcom/android/common/b/o;->p()V

    .line 197
    iput-boolean v1, p0, Lcom/android/common/b/o;->l:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 283
    iput-boolean p1, p0, Lcom/android/common/b/o;->o:Z

    return-void
.end method

.method public f()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public h()V
    .locals 1

    .line 293
    invoke-super {p0}, Lcom/android/common/b/a;->h()V

    .line 294
    iget-object v0, p0, Lcom/android/common/b/o;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/common/b/o;->p()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/android/common/b/o;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract m()Landroid/graphics/Bitmap;
.end method

.method public n()Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/android/common/b/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/common/b/o;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
