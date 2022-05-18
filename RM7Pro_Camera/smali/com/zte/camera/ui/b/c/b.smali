.class public Lcom/zte/camera/ui/b/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/b/c/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zte/camera/ui/b/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    .line 55
    invoke-direct {p0}, Lcom/zte/camera/ui/b/c/b;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/camera/ui/b/c/b$1;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/zte/camera/ui/b/c/b;-><init>()V

    return-void
.end method

.method private a([I)Lcom/zte/camera/ui/b/c/a/b;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 134
    array-length v2, v1

    const/16 v3, 0xd

    if-ge v2, v3, :cond_0

    .line 135
    sget-object v2, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animation type  array lenght is not right "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 138
    aget v3, v1, v2

    .line 139
    sget-object v4, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animation type is ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xc

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/4 v13, 0x5

    const/16 v14, 0xb

    const/4 v15, 0x1

    if-eqz v3, :cond_14

    if-eq v3, v15, :cond_10

    if-eq v3, v11, :cond_c

    if-eq v3, v10, :cond_8

    if-eq v3, v9, :cond_4

    .line 222
    new-instance v3, Lcom/zte/camera/ui/b/c/a/f$a;

    invoke-direct {v3}, Lcom/zte/camera/ui/b/c/a/f$a;-><init>()V

    aget v2, v1, v15

    .line 223
    invoke-virtual {v3, v2}, Lcom/zte/camera/ui/b/c/a/f$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 224
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 225
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_1

    move v3, v15

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 226
    :goto_0
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v3, v15

    .line 227
    :goto_1
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 228
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 229
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 230
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_3

    const/4 v15, 0x0

    .line 231
    :cond_3
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 232
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 233
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 234
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 235
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1

    .line 206
    :cond_4
    new-instance v2, Lcom/zte/camera/ui/b/c/a/a$a;

    invoke-direct {v2}, Lcom/zte/camera/ui/b/c/a/a$a;-><init>()V

    aget v3, v1, v15

    .line 207
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/a$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 208
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 209
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_5

    move v3, v15

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 210
    :goto_2
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    move v3, v15

    .line 211
    :goto_3
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 212
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 213
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 214
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_7

    const/4 v15, 0x0

    .line 215
    :cond_7
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 216
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 217
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 218
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 219
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1

    .line 190
    :cond_8
    new-instance v2, Lcom/zte/camera/ui/b/c/a/e$a;

    invoke-direct {v2}, Lcom/zte/camera/ui/b/c/a/e$a;-><init>()V

    aget v3, v1, v15

    .line 191
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/e$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 192
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 193
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_9

    move v3, v15

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    .line 194
    :goto_4
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    move v3, v15

    .line 195
    :goto_5
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 196
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 197
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 198
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_b

    const/4 v15, 0x0

    .line 199
    :cond_b
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 200
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 201
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 202
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 203
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1

    .line 174
    :cond_c
    new-instance v2, Lcom/zte/camera/ui/b/c/a/d$a;

    invoke-direct {v2}, Lcom/zte/camera/ui/b/c/a/d$a;-><init>()V

    aget v3, v1, v15

    .line 175
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/d$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 176
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 177
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_d

    move v3, v15

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    .line 178
    :goto_6
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_7

    :cond_e
    move v3, v15

    .line 179
    :goto_7
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 180
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 181
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 182
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_f

    const/4 v15, 0x0

    .line 183
    :cond_f
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 184
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 185
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 186
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 187
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1

    .line 158
    :cond_10
    new-instance v2, Lcom/zte/camera/ui/b/c/a/g$a;

    invoke-direct {v2}, Lcom/zte/camera/ui/b/c/a/g$a;-><init>()V

    aget v3, v1, v15

    .line 159
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/g$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 160
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 161
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_11

    move v3, v15

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    .line 162
    :goto_8
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_12

    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    move v3, v15

    .line 163
    :goto_9
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 164
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 165
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 166
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_13

    const/4 v15, 0x0

    .line 167
    :cond_13
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 168
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 169
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 170
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 171
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1

    .line 142
    :cond_14
    new-instance v2, Lcom/zte/camera/ui/b/c/a/f$a;

    invoke-direct {v2}, Lcom/zte/camera/ui/b/c/a/f$a;-><init>()V

    aget v3, v1, v15

    .line 143
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/f$a;->a(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v11

    int-to-float v3, v3

    aget v11, v1, v14

    int-to-float v11, v11

    div-float/2addr v3, v11

    .line 144
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v10

    int-to-float v3, v3

    aget v10, v1, v14

    int-to-float v10, v10

    div-float/2addr v3, v10

    .line 145
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(F)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v9

    if-ne v3, v15, :cond_15

    move v3, v15

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    .line 146
    :goto_a
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    if-nez v3, :cond_16

    const/4 v3, 0x0

    goto :goto_b

    :cond_16
    move v3, v15

    .line 147
    :goto_b
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v13

    .line 148
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v8

    .line 149
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v7

    .line 150
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->c(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    if-nez v3, :cond_17

    const/4 v15, 0x0

    .line 151
    :cond_17
    invoke-virtual {v2, v15}, Lcom/zte/camera/ui/b/c/a/c$a;->c(Z)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v12

    .line 152
    invoke-direct {v0, v3}, Lcom/zte/camera/ui/b/c/b;->e(I)Lcom/zte/camera/ui/b/c/a/b$c;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->b(Lcom/zte/camera/ui/b/c/a/b$c;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v6

    .line 153
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->d(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v3, v1, v5

    .line 154
    invoke-virtual {v2, v3}, Lcom/zte/camera/ui/b/c/a/c$a;->e(I)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v2

    aget v1, v1, v4

    .line 155
    invoke-direct {v0, v1}, Lcom/zte/camera/ui/b/c/b;->d(I)Lcom/zte/camera/ui/b/c/a/b$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zte/camera/ui/b/c/a/c$a;->a(Lcom/zte/camera/ui/b/c/a/b$a;)Lcom/zte/camera/ui/b/c/a/c$a;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/zte/camera/ui/b/c/a/c$a;->b()Lcom/zte/camera/ui/b/c/a/c;

    move-result-object v1

    return-object v1
.end method

.method public static a()Lcom/zte/camera/ui/b/c/b;
    .locals 1

    .line 405
    invoke-static {}, Lcom/zte/camera/ui/b/c/b$a;->a()Lcom/zte/camera/ui/b/c/b;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/ui/b/c/b;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lcom/zte/camera/ui/b/c/b;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 7

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 74
    sget-object v0, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template para index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", more than templatecount"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    .line 96
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->a:[[I

    goto :goto_0

    .line 93
    :cond_1
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->f:[[I

    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->e:[[I

    goto :goto_0

    .line 87
    :cond_3
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->d:[[I

    goto :goto_0

    .line 84
    :cond_4
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->c:[[I

    goto :goto_0

    .line 81
    :cond_5
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->b:[[I

    .line 102
    :goto_0
    array-length v2, v0

    .line 104
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_6

    .line 106
    aget-object v6, v0, v4

    invoke-direct {p0, v6}, Lcom/zte/camera/ui/b/c/b;->a([I)Lcom/zte/camera/ui/b/c/a/b;

    move-result-object v6

    .line 107
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    aget-object v6, v0, v4

    aget v6, v6, v1

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    :cond_6
    sget-object v0, Lcom/zte/camera/ui/b/c/a;->g:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 115
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->c(I)I

    move-result v1

    .line 116
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->b(I)I

    move-result v4

    .line 118
    new-instance v6, Lcom/zte/camera/ui/b/c/c$a;

    invoke-direct {v6}, Lcom/zte/camera/ui/b/c/c$a;-><init>()V

    .line 119
    invoke-virtual {v6, v2}, Lcom/zte/camera/ui/b/c/c$a;->b(I)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v5}, Lcom/zte/camera/ui/b/c/c$a;->a(I)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0}, Lcom/zte/camera/ui/b/c/c$a;->a(Ljava/lang/String;)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/b/c/c$a;->c(I)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v4}, Lcom/zte/camera/ui/b/c/c$a;->d(I)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v3}, Lcom/zte/camera/ui/b/c/c$a;->a(Landroid/util/SparseArray;)Lcom/zte/camera/ui/b/c/c$a;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/zte/camera/ui/b/c/c$a;->a()Lcom/zte/camera/ui/b/c/c;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private d(I)Lcom/zte/camera/ui/b/c/a/b$a;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 262
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->a:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 260
    :pswitch_0
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->j:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 258
    :pswitch_1
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->i:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 256
    :pswitch_2
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->h:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 254
    :pswitch_3
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->g:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 252
    :pswitch_4
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->f:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 250
    :pswitch_5
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->e:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 248
    :pswitch_6
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->d:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 246
    :pswitch_7
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->c:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    .line 244
    :pswitch_8
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$a;->b:Lcom/zte/camera/ui/b/c/a/b$a;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)Lcom/zte/camera/ui/b/c/a/b$c;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 280
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->a:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1

    .line 278
    :cond_0
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1

    .line 276
    :cond_1
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1

    .line 274
    :cond_2
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1

    .line 272
    :cond_3
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1

    .line 270
    :cond_4
    sget-object p1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p1
.end method


# virtual methods
.method public a(I)I
    .locals 3

    if-ltz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/b/c/c;

    invoke-virtual {p1}, Lcom/zte/camera/ui/b/c/c;->b()I

    move-result p1

    return p1

    .line 359
    :cond_0
    sget-object v0, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get error by template index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a(II)I
    .locals 2

    if-ltz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/b/c/c;

    invoke-virtual {p1, p2}, Lcom/zte/camera/ui/b/c/c;->a(I)I

    move-result p1

    return p1

    .line 395
    :cond_0
    sget-object p2, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get error by template index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lcom/zte/camera/ui/b/c/c;
    .locals 3

    if-ltz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/zte/camera/ui/b/c/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/camera/ui/b/c/c;

    return-object p1

    .line 377
    :cond_0
    sget-object v0, Lcom/zte/camera/ui/b/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get error by template index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
