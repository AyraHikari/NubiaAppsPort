.class public Lcn/nubia/camera/aq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "1:1"

.field public static b:Ljava/lang/String; = "4:3"

.field public static c:Ljava/lang/String; = "16:9"

.field public static d:Ljava/lang/String; = "full"

.field public static e:Ljava/lang/String; = "qcfa"

.field public static f:Landroid/graphics/Point;

.field public static final g:Landroid/util/Size;

.field public static final h:J

.field private static i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    invoke-static {}, Lcn/nubia/camera/aq/f;->a()Landroid/graphics/Point;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/aq/f;->f:Landroid/graphics/Point;

    .line 52
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1e00

    const/16 v2, 0x10e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcn/nubia/camera/aq/f;->g:Landroid/util/Size;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcn/nubia/camera/aq/f;->i:Ljava/util/HashMap;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    .line 58
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcn/nubia/camera/aq/f;->h:J

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/aq/f;->j:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Landroid/hardware/camera2/CameraCharacteristics;I)I
    .locals 2

    .line 86
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 89
    invoke-static {p0}, Lcn/nubia/camera/ba/b;->b(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-eqz p0, :cond_0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    .line 90
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    .line 92
    rem-int/lit16 v0, v0, 0x168

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Lcn/nubia/camera/af/a;)I
    .locals 1

    .line 138
    sget-object v0, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    const/16 p0, -0xc

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a()Landroid/graphics/Point;
    .locals 2

    .line 76
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 78
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v1
.end method

.method public static a([Landroid/util/Size;Ljava/lang/String;)Landroid/util/Size;
    .locals 7

    .line 119
    sget-object v0, Lcn/nubia/camera/aq/f;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-nez v0, :cond_1

    .line 123
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p0, v2

    .line 124
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    .line 125
    invoke-static {v4, p1}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ge v3, v5, :cond_0

    .line 126
    invoke-static {v5}, Lcn/nubia/camera/ba/b;->a(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcn/nubia/camera/aq/f;->a(Landroid/util/Size;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v4

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static a(F)Ljava/lang/String;
    .locals 1

    .line 185
    invoke-static {}, Lcn/nubia/camera/ba/a;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 187
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 189
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    .line 191
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_2
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :cond_3
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_4

    .line 197
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 199
    :cond_4
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 169
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display"

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length p0, p0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static a(Landroid/util/Size;)Z
    .locals 8

    .line 146
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 147
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    float-to-double v2, v1

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v4, v2, v4

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p0, v4, v6

    if-ltz p0, :cond_1

    const-wide v4, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v2, v4

    .line 149
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double p0, v2, v6

    if-ltz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float p0, v1, p0

    .line 150
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v2, p0

    cmpg-double p0, v2, v6

    if-ltz p0, :cond_1

    sub-float/2addr v1, v0

    .line 151
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    cmpg-double p0, v0, v6

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Landroid/util/Size;II)Z
    .locals 6

    .line 63
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    return v3

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    int-to-float p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    sub-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p0, p0, v4

    if-gez p0, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v3

    :goto_2
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    return v2
.end method

.method public static a(Landroid/util/Size;Ljava/lang/String;)Z
    .locals 2

    .line 156
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 157
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcn/nubia/b/b;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lcn/nubia/b/b;->n()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-le p1, v1, :cond_1

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/16 v0, 0xfa0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/16 p1, 0xbb8

    if-le p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;)Z
    .locals 1

    const v0, 0x7f0f028d

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_raw_key"

    invoke-virtual {p0, v0, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
