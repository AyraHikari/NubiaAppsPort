.class public Lcn/nubia/camera/n/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/al/c$a;
.implements Lcom/android/common/c/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/n/f$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Z

.field private L:Lcom/android/common/b/a;

.field private final M:I

.field private final N:I

.field private final O:I

.field private P:Lcom/android/common/b/l;

.field private Q:Lcom/android/common/b/l;

.field private R:I

.field private S:[Ljava/lang/CharSequence;

.field private T:[Ljava/lang/CharSequence;

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/common/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private V:Landroid/graphics/Bitmap;

.field private volatile W:Z

.field private X:Lcn/nubia/camera/n/g;

.field private Y:Lcom/android/common/b/l;

.field private Z:Z

.field private aa:Lcom/android/common/b/a;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:I

.field private f:I

.field private g:[F

.field private h:[F

.field private i:[F

.field private j:Ljava/nio/FloatBuffer;

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:[Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:[Lcom/android/common/a/c;

.field private v:Z

.field private w:F

.field private x:Lcn/nubia/camera/n/f$a;

.field private y:Z

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FunEffectGridRender"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/n/f;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/preference/ListPreference;IILandroid/graphics/Rect;Lcn/nubia/camera/n/g;Z)V
    .locals 4

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 53
    iput-object v1, p0, Lcn/nubia/camera/n/f;->g:[F

    new-array v1, v0, [F

    .line 54
    iput-object v1, p0, Lcn/nubia/camera/n/f;->h:[F

    new-array v0, v0, [F

    .line 55
    iput-object v0, p0, Lcn/nubia/camera/n/f;->i:[F

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcn/nubia/camera/n/f;->k:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    const-string v1, "negative-effect"

    .line 59
    iput-object v1, p0, Lcn/nubia/camera/n/f;->m:Ljava/lang/String;

    const/16 v1, 0xde1

    .line 60
    iput v1, p0, Lcn/nubia/camera/n/f;->n:I

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcn/nubia/camera/n/f;->o:I

    .line 69
    iput v1, p0, Lcn/nubia/camera/n/f;->q:I

    .line 70
    iput v1, p0, Lcn/nubia/camera/n/f;->r:I

    .line 74
    iput v1, p0, Lcn/nubia/camera/n/f;->s:I

    .line 77
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    .line 80
    iput-boolean v0, p0, Lcn/nubia/camera/n/f;->v:Z

    const v2, 0x3faaaaab

    .line 82
    iput v2, p0, Lcn/nubia/camera/n/f;->w:F

    const/4 v2, 0x0

    .line 83
    iput-object v2, p0, Lcn/nubia/camera/n/f;->x:Lcn/nubia/camera/n/f$a;

    .line 85
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->y:Z

    .line 87
    iput-object v2, p0, Lcn/nubia/camera/n/f;->z:Landroid/graphics/Rect;

    .line 88
    iput v1, p0, Lcn/nubia/camera/n/f;->A:I

    .line 89
    iput v1, p0, Lcn/nubia/camera/n/f;->B:I

    .line 90
    iput v1, p0, Lcn/nubia/camera/n/f;->C:I

    const/4 v3, -0x1

    .line 91
    iput v3, p0, Lcn/nubia/camera/n/f;->D:I

    .line 92
    iput v3, p0, Lcn/nubia/camera/n/f;->E:I

    .line 93
    iput v1, p0, Lcn/nubia/camera/n/f;->F:I

    .line 94
    iput v1, p0, Lcn/nubia/camera/n/f;->G:I

    .line 95
    iput v1, p0, Lcn/nubia/camera/n/f;->H:I

    .line 96
    iput v1, p0, Lcn/nubia/camera/n/f;->I:I

    .line 97
    iput v1, p0, Lcn/nubia/camera/n/f;->J:I

    .line 98
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->K:Z

    .line 99
    iput-object v2, p0, Lcn/nubia/camera/n/f;->L:Lcom/android/common/b/a;

    .line 103
    iput-object v2, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    .line 104
    iput-object v2, p0, Lcn/nubia/camera/n/f;->Q:Lcom/android/common/b/l;

    .line 105
    iput v1, p0, Lcn/nubia/camera/n/f;->R:I

    .line 109
    iput-object v2, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    .line 110
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->W:Z

    .line 112
    iput-object v2, p0, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    .line 114
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->Z:Z

    .line 115
    iput-object v2, p0, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    .line 134
    iput-object p1, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    .line 135
    iput p3, p0, Lcn/nubia/camera/n/f;->e:I

    .line 136
    iput p4, p0, Lcn/nubia/camera/n/f;->f:I

    .line 137
    iput-object p5, p0, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    .line 138
    iput-object p6, p0, Lcn/nubia/camera/n/f;->X:Lcn/nubia/camera/n/g;

    .line 139
    iput-boolean p7, p0, Lcn/nubia/camera/n/f;->Z:Z

    .line 140
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    iput-boolean p1, p0, Lcn/nubia/camera/n/f;->d:Z

    const/16 p1, 0x14

    new-array p1, p1, [F

    .line 141
    fill-array-data p1, :array_0

    .line 148
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07010d

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/n/f;->F:I

    .line 149
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f07012c

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/n/f;->G:I

    .line 150
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070119

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/n/f;->A:I

    .line 151
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f070120

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/n/f;->H:I

    .line 152
    iget p3, p0, Lcn/nubia/camera/n/f;->A:I

    iget p5, p0, Lcn/nubia/camera/n/f;->F:I

    add-int/2addr p3, p5

    iput p3, p0, Lcn/nubia/camera/n/f;->I:I

    .line 154
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x7f0701e5

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p3, v1

    .line 155
    iget-object p5, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x7f070186

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    add-int/2addr p3, p5

    .line 156
    iget-object p5, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p3, p4

    .line 157
    iget-object p4, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070141

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    sub-int p4, p3, p4

    .line 158
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5, v1, p4, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p5, p0, Lcn/nubia/camera/n/f;->z:Landroid/graphics/Rect;

    const/16 p3, 0x50

    .line 160
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 161
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/camera/n/f;->j:Ljava/nio/FloatBuffer;

    .line 162
    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iget-object p1, p0, Lcn/nubia/camera/n/f;->g:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 165
    iget-object p1, p0, Lcn/nubia/camera/n/f;->i:[F

    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 168
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/f;->a([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    .line 169
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/n/f;->S:[Ljava/lang/CharSequence;

    .line 170
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/n/f;->T:[Ljava/lang/CharSequence;

    .line 171
    iget p1, p0, Lcn/nubia/camera/n/f;->G:I

    iget p3, p0, Lcn/nubia/camera/n/f;->A:I

    iget-object p4, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length p5, p4

    mul-int/2addr p3, p5

    add-int/2addr p3, p1

    iget p5, p0, Lcn/nubia/camera/n/f;->F:I

    array-length p4, p4

    sub-int/2addr p4, v0

    mul-int/2addr p5, p4

    add-int/2addr p3, p5

    add-int/2addr p3, p1

    iput p3, p0, Lcn/nubia/camera/n/f;->J:I

    .line 173
    invoke-virtual {p2}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/n/f;->a(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const p2, 0x7f060021

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/camera/n/f;->M:I

    .line 175
    iget-object p1, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p1

    .line 176
    iget-object p3, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const/16 p4, 0x8

    invoke-static {p3, p4}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p3

    .line 178
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p4

    const-string p5, "zh"

    .line 179
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 180
    iget-object p4, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const/16 p5, 0xc

    invoke-static {p4, p5}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p1

    .line 181
    iget-object p4, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-static {p4, p2}, Lcom/android/common/ui/i;->a(Landroid/content/Context;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move p3, p2

    .line 185
    :catch_0
    :cond_0
    iput p1, p0, Lcn/nubia/camera/n/f;->N:I

    .line 186
    iput p3, p0, Lcn/nubia/camera/n/f;->O:I

    .line 187
    invoke-virtual {p0}, Lcn/nubia/camera/n/f;->a()V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;
    .locals 1

    .line 596
    invoke-virtual {p1}, Lcom/android/common/c/f;->u()Lcom/android/common/a/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    invoke-direct {p0, p4}, Lcn/nubia/camera/n/f;->d(I)I

    move-result p4

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/android/common/a/b;->a(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/common/a/a;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/android/common/b/a;Ljava/lang/String;Lcom/android/common/a/c;Lcom/android/common/b/g;Lcom/android/common/c/f;[FIIII)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    if-eqz v1, :cond_0

    .line 540
    iget v2, v0, Lcn/nubia/camera/n/f;->o:I

    invoke-direct {p0, v2}, Lcn/nubia/camera/n/f;->d(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p3, v2, v3}, Lcom/android/common/a/c;->a(IZ)V

    .line 541
    iget-object v2, v0, Lcn/nubia/camera/n/f;->h:[F

    iget-object v4, v0, Lcn/nubia/camera/n/f;->j:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    move-object v1, p3

    move-object/from16 v3, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object v9, p1

    move-object/from16 v11, p4

    invoke-interface/range {v1 .. v11}, Lcom/android/common/a/c;->a([F[FLjava/nio/FloatBuffer;IIIILcom/android/common/b/a;Lcom/android/common/b/l;Lcom/android/common/b/g;)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/common/b/g;->f()V

    move-object/from16 v1, p4

    move-object v2, p1

    move-object/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 546
    invoke-virtual/range {v1 .. v7}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 547
    invoke-virtual/range {p4 .. p4}, Lcom/android/common/b/g;->g()V

    :goto_0
    return-void
.end method

.method private a(Lcom/android/common/b/a;Ljava/lang/String;Lcom/android/common/a/c;Lcom/android/common/c/f;Lcom/android/common/b/g;[FIIII)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 473
    invoke-direct/range {v0 .. v10}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/b/a;Ljava/lang/String;Lcom/android/common/a/c;Lcom/android/common/b/g;Lcom/android/common/c/f;[FIIII)V

    return-void
.end method

.method private a(Lcom/android/common/b/g;)V
    .locals 3

    .line 604
    iget-object v0, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    const-string v0, "FunEffectGridRender"

    const-string v1, "createSelectedCoverTexture"

    .line 605
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v0, Lcom/android/common/b/l;

    iget v1, p0, Lcn/nubia/camera/n/f;->H:I

    invoke-direct {v0, v1, v1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    .line 607
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    .line 608
    iget-object p1, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    iget-object v0, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->a()I

    move-result v0

    const v1, 0x7f0802ba

    iget v2, p0, Lcn/nubia/camera/n/f;->H:I

    invoke-static {p1, v0, v1, v2, v2}, Lcom/android/common/b/n;->a(Landroid/content/Context;IIII)V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/common/c/f;)V
    .locals 6

    .line 480
    iget-object v0, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/common/a/c;

    iput-object v0, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    const/4 v0, 0x0

    .line 482
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v1, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    if-eqz v0, :cond_7

    iget v0, p0, Lcn/nubia/camera/n/f;->q:I

    iget-object v1, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 488
    iget v2, p0, Lcn/nubia/camera/n/f;->s:I

    if-nez v2, :cond_4

    add-int/lit8 v2, v0, 0x2

    .line 490
    array-length v3, v1

    if-le v2, v3, :cond_1

    .line 491
    array-length v2, v1

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_3

    .line 494
    iget-object v1, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    .line 495
    iget-object v3, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    aget-object v1, v1, v0

    iget v4, p0, Lcn/nubia/camera/n/f;->n:I

    iget v5, p0, Lcn/nubia/camera/n/f;->o:I

    invoke-direct {p0, p1, v1, v4, v5}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;

    move-result-object v1

    aput-object v1, v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    :cond_3
    iget p1, p0, Lcn/nubia/camera/n/f;->q:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/nubia/camera/n/f;->q:I

    goto :goto_3

    .line 500
    :cond_4
    :goto_2
    iget-object v1, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 501
    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    .line 502
    iget-object v2, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    aget-object v1, v1, v0

    iget v3, p0, Lcn/nubia/camera/n/f;->n:I

    iget v4, p0, Lcn/nubia/camera/n/f;->o:I

    invoke-direct {p0, p1, v1, v3, v4}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;

    move-result-object v1

    aput-object v1, v2, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 505
    :cond_6
    array-length p1, v1

    iput p1, p0, Lcn/nubia/camera/n/f;->q:I

    .line 509
    :cond_7
    :goto_3
    iget-object p1, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    if-eqz p1, :cond_b

    iget p1, p0, Lcn/nubia/camera/n/f;->q:I

    iget-object v0, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_b

    iget p1, p0, Lcn/nubia/camera/n/f;->r:I

    array-length v1, v0

    if-ge p1, v1, :cond_b

    .line 512
    iget v1, p0, Lcn/nubia/camera/n/f;->s:I

    if-nez v1, :cond_b

    add-int/lit8 v1, p1, 0x2

    .line 514
    array-length v2, v0

    if-le v1, v2, :cond_8

    .line 515
    array-length v1, v0

    :cond_8
    :goto_4
    if-ge p1, v1, :cond_a

    .line 518
    iget-object v0, p0, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    aget-object v2, v0, p1

    if-eqz v2, :cond_9

    .line 519
    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/common/a/c;->c()V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 522
    :cond_a
    iget p1, p0, Lcn/nubia/camera/n/f;->r:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/nubia/camera/n/f;->r:I

    :cond_b
    return-void
.end method

.method private a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/a;)V
    .locals 18

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 382
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 383
    iget v1, v11, Lcn/nubia/camera/n/f;->B:I

    iget v2, v11, Lcn/nubia/camera/n/f;->R:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v3

    iget-object v0, v11, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, v11, Lcn/nubia/camera/n/f;->M:I

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/b/g;->a(IIIII)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 391
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 392
    iget-object v0, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    invoke-virtual {v12, v0}, Lcom/android/common/b/g;->a(Lcom/android/common/b/l;)V

    .line 394
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->b()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->c()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 395
    iget-object v0, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    int-to-float v1, v0

    .line 396
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v6, v0

    move v5, v1

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    int-to-float v1, v0

    .line 399
    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->c()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/common/b/a;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v5, v0

    move v6, v1

    .line 401
    :goto_0
    iget-object v2, v11, Lcn/nubia/camera/n/f;->i:[F

    iget-object v0, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->b()I

    move-result v0

    sub-int/2addr v0, v5

    div-int/lit8 v3, v0, 0x2

    iget-object v0, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    invoke-virtual {v0}, Lcom/android/common/b/l;->c()I

    move-result v0

    sub-int/2addr v0, v6

    div-int/lit8 v4, v0, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->a()V

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    const/4 v13, 0x0

    move v14, v13

    .line 407
    :goto_1
    iget-object v0, v11, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    array-length v1, v0

    const/16 v2, 0xc

    if-ge v14, v1, :cond_6

    .line 409
    iget-object v0, v11, Lcn/nubia/camera/n/f;->T:[Ljava/lang/CharSequence;

    aget-object v0, v0, v14

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Effect_CTF_CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move v2, v13

    .line 411
    :goto_2
    iget-boolean v0, v11, Lcn/nubia/camera/n/f;->d:Z

    if-eqz v0, :cond_2

    .line 412
    iget v0, v11, Lcn/nubia/camera/n/f;->D:I

    iget v1, v11, Lcn/nubia/camera/n/f;->I:I

    mul-int/2addr v1, v14

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_3

    .line 414
    :cond_2
    iget v0, v11, Lcn/nubia/camera/n/f;->D:I

    iget v1, v11, Lcn/nubia/camera/n/f;->I:I

    mul-int/2addr v1, v14

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    :goto_3
    move v15, v0

    .line 416
    iget v10, v11, Lcn/nubia/camera/n/f;->E:I

    .line 417
    iget-object v0, v11, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    aget-object v1, v0, v14

    if-eqz v1, :cond_4

    aget-object v0, v0, v14

    invoke-interface {v0}, Lcom/android/common/a/c;->a()I

    move-result v0

    iget v1, v11, Lcn/nubia/camera/n/f;->n:I

    if-eq v0, v1, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v9, p1

    goto :goto_5

    .line 418
    :cond_4
    :goto_4
    iget-object v0, v11, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    iget-object v1, v11, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    aget-object v1, v1, v14

    iget v2, v11, Lcn/nubia/camera/n/f;->n:I

    iget v3, v11, Lcn/nubia/camera/n/f;->o:I

    move-object/from16 v9, p1

    invoke-direct {v11, v9, v1, v2, v3}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/c/f;Ljava/lang/String;II)Lcom/android/common/a/c;

    move-result-object v1

    aput-object v1, v0, v14

    .line 421
    :goto_5
    iget-object v1, v11, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    iget-object v0, v11, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    aget-object v2, v0, v14

    iget-object v0, v11, Lcn/nubia/camera/n/f;->u:[Lcom/android/common/a/c;

    aget-object v3, v0, v14

    iget-object v6, v11, Lcn/nubia/camera/n/f;->g:[F

    iget v8, v11, Lcn/nubia/camera/n/f;->A:I

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v7, v15

    move/from16 v16, v8

    move v8, v10

    move/from16 v9, v16

    move/from16 v17, v10

    move/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/b/a;Ljava/lang/String;Lcom/android/common/a/c;Lcom/android/common/c/f;Lcom/android/common/b/g;[FIIII)V

    .line 426
    iget-object v0, v11, Lcn/nubia/camera/n/f;->p:[Ljava/lang/String;

    aget-object v0, v0, v14

    iget-object v1, v11, Lcn/nubia/camera/n/f;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 427
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 428
    iget-object v1, v11, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    iget-object v2, v11, Lcn/nubia/camera/n/f;->g:[F

    iget v6, v11, Lcn/nubia/camera/n/f;->H:I

    iget v0, v11, Lcn/nubia/camera/n/f;->A:I

    sub-int v3, v6, v0

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v15, v3

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v4, v17, v0

    move-object/from16 v0, p2

    move v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    .line 432
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->f()V

    .line 433
    iget-object v0, v11, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/b/m;

    add-int/lit8 v15, v15, -0x2

    add-int/lit8 v10, v17, -0x2

    .line 436
    invoke-virtual {v0, v12, v15, v10}, Lcom/android/common/b/m;->a(Lcom/android/common/b/g;II)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/b/g;->g()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 439
    :cond_6
    iget-boolean v1, v11, Lcn/nubia/camera/n/f;->Z:Z

    if-eqz v1, :cond_8

    .line 441
    iget-boolean v1, v11, Lcn/nubia/camera/n/f;->d:Z

    if-eqz v1, :cond_7

    .line 442
    iget v1, v11, Lcn/nubia/camera/n/f;->D:I

    iget v3, v11, Lcn/nubia/camera/n/f;->I:I

    array-length v0, v0

    mul-int/2addr v3, v0

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    goto :goto_6

    .line 444
    :cond_7
    iget v1, v11, Lcn/nubia/camera/n/f;->D:I

    iget v3, v11, Lcn/nubia/camera/n/f;->I:I

    array-length v0, v0

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    .line 446
    :goto_6
    iget v0, v11, Lcn/nubia/camera/n/f;->E:I

    .line 447
    iget-object v2, v11, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    iget-object v3, v11, Lcn/nubia/camera/n/f;->g:[F

    iget v6, v11, Lcn/nubia/camera/n/f;->H:I

    iget v4, v11, Lcn/nubia/camera/n/f;->A:I

    sub-int v5, v6, v4

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    sub-int v1, v6, v4

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    move-object/from16 v0, p2

    move-object v1, v2

    move-object v2, v3

    move v3, v5

    move v5, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/common/b/g;->a(Lcom/android/common/b/a;[FIIII)V

    :cond_8
    return-void
.end method

.method private a([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 4

    .line 463
    array-length v0, p1

    .line 464
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 466
    aget-object v3, p1, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 3

    .line 217
    iget v0, p0, Lcn/nubia/camera/n/f;->B:I

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/nubia/camera/n/f;->B:I

    .line 219
    iget v1, p0, Lcn/nubia/camera/n/f;->D:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 220
    iget-boolean v0, p0, Lcn/nubia/camera/n/f;->d:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result p1

    iget v0, p0, Lcn/nubia/camera/n/f;->B:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/n/f;->G:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/n/f;->A:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/n/f;->D:I

    goto :goto_0

    .line 223
    :cond_0
    iget v0, p0, Lcn/nubia/camera/n/f;->G:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/camera/n/f;->D:I

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 226
    iput v1, p0, Lcn/nubia/camera/n/f;->D:I

    .line 228
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateRenderAreaInfo: mDefaultMarginX = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/n/f;->B:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDefaultMarginY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/n/f;->C:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFunEffectThumbArea: bottom = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/f;->z:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/n/f;->z:Landroid/graphics/Rect;

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFirstItemPositionX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/n/f;->D:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mFirstItemPositionY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/n/f;->E:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FunEffectGridRender"

    .line 228
    invoke-static {v0, p1}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/android/common/b/g;)V
    .locals 3

    .line 614
    iget-object p1, p0, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    if-nez p1, :cond_0

    const-string p1, "FunEffectGridRender"

    const-string v0, "createAddEffectButtonTexture"

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object p1, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const v0, 0x7f08005c

    invoke-static {p1, v0}, Lcom/android/common/b/n;->a(Landroid/content/Context;I)I

    move-result p1

    .line 617
    new-instance v0, Lcom/android/common/b/e;

    const/16 v1, 0xde1

    iget v2, p0, Lcn/nubia/camera/n/f;->H:I

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/android/common/b/e;-><init>(IIII)V

    iput-object v0, p0, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    :cond_0
    return-void
.end method

.method private b(Lcom/android/common/c/f;)V
    .locals 1

    .line 528
    iget-boolean v0, p0, Lcn/nubia/camera/n/f;->v:Z

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/android/common/c/f;->s()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/n/f;->b(Landroid/graphics/Rect;)V

    .line 532
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/c/f;)V

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lcn/nubia/camera/n/f;->v:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 571
    sget-boolean v0, Lcn/nubia/camera/n/f;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FunEffectGridRender"

    .line 572
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private c(Lcom/android/common/b/g;)V
    .locals 2

    .line 630
    iget-object v0, p0, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/android/common/b/l;

    const/16 v1, 0x280

    invoke-direct {v0, v1, v1}, Lcom/android/common/b/l;-><init>(II)V

    iput-object v0, p0, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    .line 632
    invoke-virtual {v0, p1}, Lcom/android/common/b/l;->c(Lcom/android/common/b/g;)V

    :cond_0
    return-void
.end method

.method private d(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x5a

    return p1
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 557
    iput-boolean v0, p0, Lcn/nubia/camera/n/f;->K:Z

    .line 558
    iget-object v0, p0, Lcn/nubia/camera/n/f;->x:Lcn/nubia/camera/n/f$a;

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Lcn/nubia/camera/n/f$a;->a()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lcn/nubia/camera/n/f;->K:Z

    .line 565
    iget-object v0, p0, Lcn/nubia/camera/n/f;->x:Lcn/nubia/camera/n/f$a;

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0}, Lcn/nubia/camera/n/f$a;->b()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "FunEffectGridRender"

    const-string v1, "createcreateEffectBoundBitmap"

    .line 623
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcn/nubia/camera/n/f;->c:Landroid/content/Context;

    const v1, 0x7f0800f4

    iget v2, p0, Lcn/nubia/camera/n/f;->A:I

    add-int/lit8 v3, v2, 0x4

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v1, v3, v2}, Lcom/android/common/b/n;->a(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 637
    iget-object v0, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 639
    iput-object v1, p0, Lcn/nubia/camera/n/f;->P:Lcom/android/common/b/l;

    .line 642
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/f;->Q:Lcom/android/common/b/l;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 644
    iput-object v1, p0, Lcn/nubia/camera/n/f;->Q:Lcom/android/common/b/l;

    .line 647
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 649
    iput-object v1, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    .line 652
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    if-eqz v0, :cond_3

    .line 653
    invoke-virtual {v0}, Lcom/android/common/b/l;->j()V

    .line 654
    iput-object v1, p0, Lcn/nubia/camera/n/f;->Y:Lcom/android/common/b/l;

    .line 657
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    if-eqz v0, :cond_4

    .line 658
    invoke-virtual {v0}, Lcom/android/common/b/a;->j()V

    .line 659
    iput-object v1, p0, Lcn/nubia/camera/n/f;->aa:Lcom/android/common/b/a;

    :cond_4
    return-void
.end method

.method private k()V
    .locals 12

    .line 664
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->i()V

    .line 665
    iget-object v0, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    .line 668
    iget-object v0, p0, Lcn/nubia/camera/n/f;->S:[Ljava/lang/CharSequence;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 669
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v3, p0, Lcn/nubia/camera/n/f;->O:I

    int-to-float v5, v3

    const/4 v6, -0x1

    iget v3, p0, Lcn/nubia/camera/n/f;->A:I

    add-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v3, 0x4

    iget-object v9, p0, Lcn/nubia/camera/n/f;->V:Landroid/graphics/Bitmap;

    iget v10, p0, Lcn/nubia/camera/n/f;->M:I

    iget v11, p0, Lcn/nubia/camera/n/f;->N:I

    invoke-static/range {v4 .. v11}, Lcom/android/common/b/f;->a(Ljava/lang/String;FIIILandroid/graphics/Bitmap;II)Lcom/android/common/b/f;

    move-result-object v3

    .line 671
    iget-object v4, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 677
    iget-object v0, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 678
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/b/m;

    .line 679
    invoke-virtual {v1}, Lcom/android/common/b/m;->j()V

    .line 680
    invoke-virtual {v1}, Lcom/android/common/b/m;->h()V

    goto :goto_0

    .line 682
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lcn/nubia/camera/n/f;->U:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/n/f;->A:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/n/f;->C:I

    .line 198
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/n/f;->C:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/n/f;->E:I

    .line 199
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/n/f;->R:I

    return-void
.end method

.method public a(F)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "FunEffectGridRender"

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreviewRatioChanged] ratio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput p1, p0, Lcn/nubia/camera/n/f;->w:F

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcn/nubia/camera/n/f;->v:Z

    .line 210
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)V
    .locals 0

    .line 323
    iput p1, p0, Lcn/nubia/camera/n/f;->o:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcn/nubia/camera/n/f;->b:Landroid/graphics/Rect;

    .line 192
    invoke-virtual {p0}, Lcn/nubia/camera/n/f;->a()V

    return-void
.end method

.method public a(Lcn/nubia/camera/n/f$a;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcn/nubia/camera/n/f;->x:Lcn/nubia/camera/n/f$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug, changeEffectID, effectName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/n/f;->b(Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/n/f;->m:Ljava/lang/String;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcn/nubia/camera/n/f;->k:Z

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->g()V

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->h()V

    .line 261
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 5

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->y:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p2, "FunEffectGridRender"

    const-string v1, "release"

    .line 336
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->l()V

    .line 338
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->j()V

    .line 339
    invoke-virtual {p1, v2}, Lcom/android/common/c/f;->a(Z)V

    .line 340
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    .line 341
    monitor-exit v0

    return v2

    :cond_0
    const/16 v1, 0xde1

    .line 344
    iput v1, p0, Lcn/nubia/camera/n/f;->n:I

    .line 346
    invoke-direct {p0, p1}, Lcn/nubia/camera/n/f;->b(Lcom/android/common/c/f;)V

    .line 348
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->K:Z

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 349
    monitor-exit v0

    return v3

    .line 352
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/common/c/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    invoke-virtual {p1, v3}, Lcom/android/common/c/f;->a(Z)V

    goto :goto_0

    .line 354
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    if-nez v1, :cond_3

    .line 355
    invoke-virtual {p1, v2}, Lcom/android/common/c/f;->a(Z)V

    .line 358
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->k()V

    .line 359
    invoke-direct {p0, p2}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/b/g;)V

    .line 360
    invoke-direct {p0, p2}, Lcn/nubia/camera/n/f;->c(Lcom/android/common/b/g;)V

    .line 361
    invoke-direct {p0, p2}, Lcn/nubia/camera/n/f;->b(Lcom/android/common/b/g;)V

    .line 363
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->K:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->W:Z

    if-nez v1, :cond_5

    .line 364
    iget-object v1, p0, Lcn/nubia/camera/n/f;->X:Lcn/nubia/camera/n/g;

    invoke-virtual {v1}, Lcn/nubia/camera/n/g;->a()Lcom/android/common/b/l;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/n/f;->L:Lcom/android/common/b/a;

    .line 365
    invoke-virtual {p1}, Lcom/android/common/c/f;->o()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/n/f;->g:[F

    invoke-virtual {v1, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 366
    iget-object v1, p0, Lcn/nubia/camera/n/f;->L:Lcom/android/common/b/a;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/common/c/f;->q()Lcom/android/common/b/e;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p1, p2, v1}, Lcn/nubia/camera/n/f;->a(Lcom/android/common/c/f;Lcom/android/common/b/g;Lcom/android/common/b/a;)V

    .line 368
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/camera/n/f;->W:Z

    if-eqz p1, :cond_6

    .line 369
    iput-boolean v3, p0, Lcn/nubia/camera/n/f;->W:Z

    .line 371
    :cond_6
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcn/nubia/camera/n/f;->W:Z

    return-void
.end method

.method public b(I)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->d:Z

    if-eqz v1, :cond_1

    .line 285
    iget v1, p0, Lcn/nubia/camera/n/f;->J:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    sub-int/2addr v1, v2

    .line 286
    iget-boolean v2, p0, Lcn/nubia/camera/n/f;->Z:Z

    if-eqz v2, :cond_0

    .line 287
    iget v2, p0, Lcn/nubia/camera/n/f;->I:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0xc

    .line 289
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/n/f;->B:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/n/f;->G:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/n/f;->A:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/camera/n/f;->D:I

    goto :goto_0

    .line 291
    :cond_1
    iget v1, p0, Lcn/nubia/camera/n/f;->B:I

    iget v2, p0, Lcn/nubia/camera/n/f;->G:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    iput v1, p0, Lcn/nubia/camera/n/f;->D:I

    .line 293
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/android/common/c/f;Lcom/android/common/b/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public c(I)V
    .locals 4

    .line 307
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 308
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    .line 309
    iget-boolean v1, p0, Lcn/nubia/camera/n/f;->d:Z

    if-eqz v1, :cond_1

    .line 310
    iget v1, p0, Lcn/nubia/camera/n/f;->J:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v2

    sub-int/2addr v1, v2

    .line 311
    iget-boolean v2, p0, Lcn/nubia/camera/n/f;->Z:Z

    if-eqz v2, :cond_0

    .line 312
    iget v2, p0, Lcn/nubia/camera/n/f;->I:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, -0xc

    .line 314
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v2

    iget v3, p0, Lcn/nubia/camera/n/f;->B:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/n/f;->G:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/n/f;->A:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, p1

    add-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/camera/n/f;->D:I

    goto :goto_0

    .line 316
    :cond_1
    iget v1, p0, Lcn/nubia/camera/n/f;->B:I

    iget v2, p0, Lcn/nubia/camera/n/f;->G:I

    add-int/2addr v1, v2

    sub-int/2addr v1, p1

    iput v1, p0, Lcn/nubia/camera/n/f;->D:I

    .line 318
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/android/common/c/f;Lcom/android/common/b/g;)V
    .locals 4

    .line 578
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/common/c/f;->getId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "FunEffectGridRender"

    const-string v0, "onRelease"

    .line 581
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->l()V

    .line 584
    invoke-direct {p0}, Lcn/nubia/camera/n/f;->j()V

    .line 586
    iget-object p2, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter p2

    .line 587
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/n/f;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p1, v0}, Lcom/android/common/c/f;->a(Z)V

    .line 589
    invoke-virtual {p1, p0}, Lcom/android/common/c/f;->b(Lcom/android/common/c/f$a;)V

    const/4 p1, 0x0

    .line 590
    iput-boolean p1, p0, Lcn/nubia/camera/n/f;->y:Z

    .line 592
    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 269
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->y:Z

    .line 270
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 275
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcn/nubia/camera/n/f;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 298
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/camera/n/f;->t:Z

    .line 299
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
