.class public Lcn/nubia/m/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/m/c$b;,
        Lcn/nubia/m/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcn/nubia/m/c;


# instance fields
.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Lcn/nubia/m/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const-string v0, "/data/nubiaeffect"

    goto :goto_0

    :cond_0
    const-string v0, "/data/data/com.android.camera/effect"

    :goto_0
    sput-object v0, Lcn/nubia/m/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcn/nubia/m/c;->b:Lcn/nubia/m/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcn/nubia/m/c;->c:Ljava/lang/ref/WeakReference;

    .line 915
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/m/c;->e:Landroid/os/Handler;

    return-void
.end method

.method private a(II)F
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    int-to-float p1, p1

    const/high16 p2, 0x45430000    # 3120.0f

    div-float/2addr p1, p2

    return p1
.end method

.method private a(Landroid/content/Context;F)I
    .locals 0

    .line 852
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;I)I
    .locals 3

    .line 791
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 792
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 793
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0xa

    return p3
.end method

.method private a([BI)I
    .locals 3

    .line 149
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/high16 v2, 0x10000

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/high16 p2, 0x1000000

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    return v0
.end method

.method private a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 326
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 327
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 328
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    iget v0, v0, Landroid/util/TypedValue;->density:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 330
    invoke-static {p1, p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 385
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3ccc0000    # -180.0f

    .line 394
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_2
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :goto_0
    if-eqz p2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    .line 402
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private a(Z)Landroid/graphics/Bitmap;
    .locals 11

    .line 877
    iget-object v0, p0, Lcn/nubia/m/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "WaterMarkUtil"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "water_mark_drawable_black.png"

    goto :goto_0

    :cond_0
    const-string v3, "water_mark_drawable_white.png"

    .line 879
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 880
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 881
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    .line 882
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 883
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    .line 884
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodePngToBitmap: scale = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v6, v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v7, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 888
    invoke-static {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 889
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 897
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 900
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_8

    :catch_1
    move-exception v4

    move-object v10, v3

    move-object v3, v1

    move-object v1, v10

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    .line 893
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodePngToBitmap: Failed to decodeStream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    .line 897
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 900
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    move-object v4, v3

    :cond_3
    :goto_4
    if-nez v4, :cond_7

    const-string v1, "decodePngToBitmap: use default logo..."

    .line 905
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-direct {p0}, Lcn/nubia/m/c;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 907
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_4

    sget p1, Lcn/nubia/m/a$c;->d:I

    goto :goto_5

    :cond_4
    sget p1, Lcn/nubia/m/a$c;->b:I

    :goto_5
    invoke-direct {p0, v0, p1}, Lcn/nubia/m/c;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_7

    .line 909
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    sget p1, Lcn/nubia/m/a$c;->c:I

    goto :goto_6

    :cond_6
    sget p1, Lcn/nubia/m/a$c;->a:I

    :goto_6
    invoke-direct {p0, v0, p1}, Lcn/nubia/m/c;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_7
    :goto_7
    return-object v4

    :goto_8
    if-eqz v1, :cond_8

    .line 897
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    .line 900
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 902
    :cond_8
    :goto_9
    throw p1
.end method

.method static synthetic a(Lcn/nubia/m/c;)Lcn/nubia/m/c$b;
    .locals 0

    .line 45
    iget-object p0, p0, Lcn/nubia/m/c;->f:Lcn/nubia/m/c$b;

    return-object p0
.end method

.method public static a()Lcn/nubia/m/c;
    .locals 1

    .line 85
    sget-object v0, Lcn/nubia/m/c;->b:Lcn/nubia/m/c;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcn/nubia/m/c;

    invoke-direct {v0}, Lcn/nubia/m/c;-><init>()V

    sput-object v0, Lcn/nubia/m/c;->b:Lcn/nubia/m/c;

    .line 88
    :cond_0
    sget-object v0, Lcn/nubia/m/c;->b:Lcn/nubia/m/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 104
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "pref_water_mark_custom_hal_file_key"

    const/4 v1, 0x0

    .line 105
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache logo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterMarkUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "getHALLogoName fail: "

    const-string v1, "WaterMarkUtil"

    const/4 v2, 0x0

    .line 115
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p1

    if-lez p1, :cond_0

    const/16 v4, 0x8

    new-array v5, v4, [B

    .line 120
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    const/4 v6, 0x0

    .line 121
    invoke-direct {p0, v5, v6}, Lcn/nubia/m/c;->a([BI)I

    move-result v6

    const/4 v7, 0x4

    .line 122
    invoke-direct {p0, v5, v7}, Lcn/nubia/m/c;->a([BI)I

    move-result v5

    mul-int v8, v6, v5

    mul-int/2addr v8, v7

    sub-int/2addr p1, v8

    sub-int/2addr p1, v4

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "width: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", height: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; logoLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-array p1, p1, [B

    int-to-long v4, v8

    .line 127
    invoke-virtual {v3, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    .line 128
    invoke-virtual {v3, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 129
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hal logoName: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 139
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v4, v2

    :goto_1
    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception p1

    move-object v4, v2

    :goto_2
    move-object v2, v3

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    move-object v4, v2

    .line 135
    :goto_3
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    .line 139
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_5

    :catch_7
    move-exception p1

    move-object v4, v2

    .line 133
    :goto_4
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_1

    .line 139
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_6

    :catch_8
    move-exception p1

    .line 141
    :goto_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_6
    move-object v2, v4

    :goto_7
    return-object v2

    :goto_8
    if-eqz v2, :cond_2

    .line 139
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    :cond_2
    :goto_9
    throw p1
.end method

.method private a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcn/nubia/m/c$a;)V
    .locals 7

    .line 160
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .line 161
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 162
    invoke-direct {p0, p4, v0}, Lcn/nubia/m/c;->a(II)F

    move-result p4

    .line 165
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v5, v0

    .line 166
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-int v6, v0

    .line 168
    invoke-direct {p0, p3, p1}, Lcn/nubia/m/c;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 170
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p0

    move v2, p1

    .line 169
    invoke-direct/range {v1 .. v6}, Lcn/nubia/m/c;->a(IIIII)[I

    move-result-object p1

    .line 173
    new-instance p4, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-direct {p4, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 176
    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {p2, v0, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 p2, 0x0

    .line 177
    invoke-virtual {p1, p3, p2, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez p3, :cond_0

    .line 178
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 179
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p4

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 252
    invoke-direct {v6, v9, v10}, Lcn/nubia/m/c;->a(II)F

    move-result v11

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v4, v0

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v12, v0

    move-object/from16 v0, p3

    .line 257
    invoke-direct {v6, v0, v7}, Lcn/nubia/m/c;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v9

    move v3, v10

    move v5, v12

    .line 258
    invoke-direct/range {v0 .. v5}, Lcn/nubia/m/c;->a(IIIII)[I

    move-result-object v0

    .line 262
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 264
    new-instance v2, Landroid/graphics/Rect;

    aget v5, v0, v3

    const/4 v14, 0x1

    aget v15, v0, v14

    const/16 v16, 0x2

    aget v3, v0, v16

    aget v0, v0, v4

    invoke-direct {v2, v5, v15, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    .line 266
    invoke-virtual {v1, v13, v0, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez v13, :cond_0

    .line 267
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 273
    :cond_1
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 274
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0xad

    const/16 v2, 0xff

    .line 275
    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v0, 0x42a00000    # 80.0f

    mul-float/2addr v11, v0

    .line 276
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 277
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 278
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    const/high16 v3, 0x40000000    # 2.0f

    .line 279
    invoke-virtual {v5, v0, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 280
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x42c80000    # 100.0f

    int-to-float v2, v9

    mul-float/2addr v0, v2

    const/high16 v3, 0x45430000    # 3120.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 286
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 287
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 288
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 289
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 290
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v11, v12

    const-wide v13, 0x3fdd70a3d70a3d71L    # 0.46

    mul-double/2addr v11, v13

    double-to-int v11, v11

    .line 292
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->c()Z

    move-result v12

    if-eqz v12, :cond_3

    if-ge v9, v10, :cond_2

    move v0, v9

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    mul-int/lit8 v0, v0, 0x39

    .line 293
    div-int/lit16 v0, v0, 0x438

    move v11, v0

    :cond_3
    if-eqz v7, :cond_7

    const/16 v9, 0x5a

    const/4 v11, 0x0

    if-eq v7, v9, :cond_6

    const/16 v2, 0xb4

    if-eq v7, v2, :cond_5

    const/16 v2, 0x10e

    if-eq v7, v2, :cond_4

    goto :goto_1

    .line 314
    :cond_4
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    sub-int v4, v10, v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 315
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v10

    .line 316
    invoke-virtual {v2, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    neg-int v0, v3

    int-to-float v7, v0

    move-object v0, v1

    move-object/from16 v1, p4

    move v3, v4

    move v4, v7

    .line 317
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 308
    :cond_5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    add-int/2addr v4, v0

    int-to-float v0, v4

    .line 309
    invoke-virtual {v2, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 310
    invoke-virtual {v2, v11, v11}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    neg-int v0, v3

    int-to-float v7, v0

    move-object v0, v1

    move-object/from16 v1, p4

    move v3, v4

    move v4, v7

    .line 311
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 302
    :cond_6
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    add-int/2addr v4, v0

    int-to-float v0, v4

    .line 303
    invoke-virtual {v7, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 304
    invoke-virtual {v7, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    neg-int v0, v3

    int-to-float v9, v0

    move-object v0, v1

    move-object/from16 v1, p4

    move-object v2, v7

    move v3, v4

    move v4, v9

    .line 305
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_7
    sub-int/2addr v9, v4

    sub-int/2addr v9, v0

    int-to-float v0, v9

    sub-int/2addr v10, v11

    int-to-float v2, v10

    .line 298
    invoke-virtual {v1, v8, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method private a(ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/nubia/m/c$a;)V
    .locals 9

    .line 423
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .line 424
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 425
    invoke-direct {p0, p4, v0}, Lcn/nubia/m/c;->a(II)F

    move-result v1

    .line 427
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ""

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 432
    :cond_0
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 433
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xad

    const/16 v3, 0xff

    .line 434
    invoke-virtual {v8, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    .line 435
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v1, 0x1

    .line 436
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    const/high16 v3, 0x40000000    # 2.0f

    .line 438
    invoke-virtual {v8, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 439
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v2, p4

    mul-float/2addr v1, v2

    const/high16 v3, 0x45430000    # 3120.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 443
    invoke-virtual {v8, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 444
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    .line 445
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v8, p3, v5, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 446
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 447
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 448
    invoke-direct {p0}, Lcn/nubia/m/c;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    if-ge p4, v0, :cond_1

    move v1, p4

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x39

    .line 449
    div-int/lit16 v1, v1, 0x438

    sub-int v3, v1, v4

    .line 452
    :cond_2
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_6

    const/16 p2, 0x5a

    const/4 p4, 0x0

    if-eq p1, p2, :cond_5

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_4

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 471
    :cond_3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sub-int p2, v0, v5

    sub-int/2addr p2, v1

    int-to-float p2, p2

    .line 472
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float p2, v0

    .line 473
    invoke-virtual {p1, p4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p2, 0x0

    neg-int p4, v4

    int-to-float v7, p4

    move-object v3, v6

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    .line 474
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 465
    :cond_4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    add-int/2addr v5, v1

    int-to-float p2, v5

    .line 466
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 467
    invoke-virtual {p1, p4, p4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p2, 0x0

    neg-int p4, v4

    int-to-float v7, p4

    move-object v3, v6

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    .line 468
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 459
    :cond_5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    add-int/2addr v5, v1

    int-to-float p2, v5

    .line 460
    invoke-virtual {p1, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 461
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p2, 0x0

    neg-int p4, v4

    int-to-float v7, p4

    move-object v3, v6

    move-object v4, p3

    move-object v5, p1

    move v6, p2

    .line 462
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    sub-int/2addr p4, v5

    sub-int/2addr p4, v1

    int-to-float p1, p4

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    int-to-float p2, v0

    .line 455
    invoke-virtual {v6, p3, p1, p2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "WaterMarkUtil"

    if-eqz p2, :cond_1

    .line 857
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 862
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 863
    invoke-virtual {p1, p3, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 864
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p3, p4, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 865
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 866
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 867
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bitmap2jpeg compress time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 869
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "compress bitmap to png fail!"

    .line 870
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 858
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcn/nubia/m/c;Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcn/nubia/m/c;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 488
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 489
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 490
    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method private a([B[BLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 934
    iget-boolean v0, p0, Lcn/nubia/m/c;->d:Z

    if-nez v0, :cond_0

    .line 935
    invoke-virtual {p0, p3, p4}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 938
    :cond_0
    iget-object p4, p0, Lcn/nubia/m/c;->f:Lcn/nubia/m/c$b;

    if-eqz p4, :cond_1

    .line 939
    iget-object p4, p0, Lcn/nubia/m/c;->e:Landroid/os/Handler;

    new-instance v0, Lcn/nubia/m/c$3;

    invoke-direct {v0, p0, p2, p1, p3}, Lcn/nubia/m/c$3;-><init>(Lcn/nubia/m/c;[B[BLjava/lang/String;)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "pref_logo_water_mark_update_key"

    .line 538
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private a(Landroid/graphics/Bitmap;)Z
    .locals 14

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/m/c;->a(II)F

    move-result v0

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    .line 219
    invoke-static {p1, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, v1

    .line 225
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMeteringArea length:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WaterMarkUtil"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x0

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 230
    aget v7, v1, v2

    const/high16 v8, 0xff0000

    and-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x10

    const v9, 0xff00

    and-int/2addr v9, v7

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-double v10, v8

    const-wide v12, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v10, v12

    int-to-double v8, v9

    const-wide v12, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v8, v12

    add-double/2addr v10, v8

    int-to-double v7, v7

    const-wide v12, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v7, v12

    add-double/2addr v10, v7

    add-double/2addr v5, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "average is :"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-double v0, v0

    div-double/2addr v5, v0

    double-to-int v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb4

    if-le v0, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private a(Landroid/graphics/Bitmap;[B)[B
    .locals 13

    .line 494
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    add-int/lit8 v10, v0, 0x2

    .line 496
    new-array v11, v10, [I

    const/4 v12, 0x0

    .line 497
    aput v8, v11, v12

    const/4 v0, 0x1

    .line 498
    aput v9, v11, v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 499
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 p1, v10, 0x4

    .line 500
    array-length v0, p2

    add-int/2addr v0, p1

    new-array v0, v0, [B

    move v1, v12

    :goto_0
    if-ge v1, v10, :cond_0

    mul-int/lit8 v2, v1, 0x4

    .line 502
    aget v3, v11, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v12

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v3, v2, 0x1

    .line 503
    aget v4, v11, v1

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v2, 0x2

    .line 504
    aget v4, v11, v1

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x3

    .line 505
    aget v3, v11, v1

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    :cond_0
    array-length v1, p2

    invoke-static {p2, v12, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "width: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; height: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WaterMarkUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private a(IIIII)[I
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const/16 v5, 0x5a

    if-eq p1, v5, :cond_2

    const/16 p3, 0xb4

    if-eq p1, p3, :cond_1

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    aput v4, v0, v4

    aput v4, v0, v3

    aput p5, v0, v2

    aput p4, v0, v1

    goto :goto_0

    :cond_1
    sub-int p1, p2, p4

    aput p1, v0, v4

    aput v4, v0, v3

    aput p2, v0, v2

    aput p5, v0, v1

    goto :goto_0

    :cond_2
    sub-int p1, p2, p5

    aput p1, v0, v4

    sub-int p1, p3, p4

    aput p1, v0, v3

    aput p2, v0, v2

    aput p3, v0, v1

    goto :goto_0

    :cond_3
    aput v4, v0, v4

    sub-int p1, p3, p5

    aput p1, v0, v3

    aput p4, v0, v2

    aput p3, v0, v1

    :goto_0
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 480
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 481
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 4

    .line 526
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "water_mark_drawable_black.png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "water_mark_drawable_white.png"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 566
    iget-boolean v0, p0, Lcn/nubia/m/c;->d:Z

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/m/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "water_mark_drawable_white.argb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "water_mark_drawable_black.argb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v0, "data/vendor/camera/water_mark_drawable_white.argb"

    const-string v1, "data/vendor/camera/water_mark_drawable_black.argb"

    .line 575
    :goto_0
    invoke-direct {p0, p2}, Lcn/nubia/m/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 577
    invoke-direct {p0, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-direct {p0, v1}, Lcn/nubia/m/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    .line 583
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentLogoName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; customWaterMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterMarkUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveCustomLogoString "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterMarkUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_water_mark_custom_file_key"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private c()Z
    .locals 4

    .line 799
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX629J_V1S"

    .line 800
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX629J"

    .line 801
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX659J"

    .line 802
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX669"

    .line 803
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/m/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "NX666"

    .line 804
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 805
    invoke-direct {p0}, Lcn/nubia/m/c;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method private c(Landroid/content/Context;)Z
    .locals 7

    .line 547
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 548
    invoke-direct {p0, v0}, Lcn/nubia/m/c;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    const-string v2, "pref_water_mark_custom_file_key"

    const-string v3, ""

    .line 549
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-static {p1}, Lcom/android/setting/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_water_mark_custom_key"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-direct {p0, p1}, Lcn/nubia/m/c;->b(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 553
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 559
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needChangeWaterMark update:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " isNeedChange:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "WaterMarkUtil"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 560
    invoke-direct {p0, v0, p1}, Lcn/nubia/m/c;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    return v4
.end method

.method private d(Landroid/content/Context;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 592
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 593
    invoke-static/range {p1 .. p1}, Lcom/android/setting/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "pref_water_mark_custom_key"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->l()V

    .line 599
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->g:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 601
    sget v6, Lcn/nubia/m/a$d;->a:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_1

    .line 602
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->g:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    const/4 v7, 0x0

    goto :goto_1

    .line 605
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->f:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 607
    sget v6, Lcn/nubia/m/a$d;->b:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 608
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->h:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    sget v6, Lcn/nubia/m/a$d;->d:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 611
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->i:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 613
    sget v6, Lcn/nubia/m/a$d;->a:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 614
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 616
    sget v0, Lcn/nubia/m/a$d;->c:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_1

    .line 618
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/nubia/m/a$c;->e:I

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 619
    sget v6, Lcn/nubia/m/a$d;->a:I

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 621
    :goto_1
    new-instance v8, Landroid/text/TextPaint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    .line 622
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 623
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 624
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 626
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 627
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 628
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 630
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->j()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v0, 0x14a

    :goto_3
    const/16 v10, 0xc30

    .line 631
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v0, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 632
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 633
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-direct {v0, v13, v12}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v12, 0x2

    new-array v14, v12, [[B

    move v15, v13

    :goto_4
    if-ge v15, v12, :cond_14

    const-string v0, "/"

    if-eqz v15, :cond_9

    if-eq v15, v9, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    .line 645
    :cond_8
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcn/nubia/m/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "water_mark_drawable_black.argb"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v11, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 647
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$a;->a:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v9, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_5

    .line 640
    :cond_9
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcn/nubia/m/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "water_mark_drawable_white.argb"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v11, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 642
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$a;->b:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v9, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 650
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->c()Z

    move-result v0

    const-string v9, "sans-serif"

    const/high16 v13, 0x41d00000    # 26.0f

    const/4 v12, 0x0

    if-eqz v0, :cond_a

    .line 651
    invoke-virtual {v11, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 652
    invoke-direct {v1, v2, v13}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x3d4ccccd    # 0.05f

    .line 653
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v12, 0x0

    .line 654
    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lcn/nubia/m/a$b;->b:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v9, v0

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcn/nubia/m/a$b;->g:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    .line 656
    invoke-virtual {v11, v4, v9, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 658
    invoke-direct {v1, v4, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v12

    const/high16 v13, 0x41d00000    # 26.0f

    .line 659
    invoke-direct {v1, v2, v13}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 661
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v17, v3

    sget v3, Lcn/nubia/m/a$b;->j:I

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 660
    invoke-virtual {v11, v7, v9, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 662
    invoke-direct {v1, v7, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_6
    move-object/from16 v18, v5

    const/16 v16, 0x2

    goto/16 :goto_7

    :cond_a
    move-object/from16 v17, v3

    .line 663
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 664
    invoke-virtual {v11, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 665
    invoke-direct {v1, v2, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x3d4ccccd    # 0.05f

    .line 666
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v3, 0x0

    .line 667
    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 668
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/m/a$b;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$b;->h:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 669
    invoke-virtual {v11, v4, v3, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 671
    invoke-direct {v1, v4, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    goto :goto_6

    .line 672
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 673
    invoke-virtual {v11, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41d00000    # 26.0f

    .line 674
    invoke-direct {v1, v2, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v0, v3

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x3d4ccccd    # 0.05f

    .line 675
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v3, 0x0

    .line 676
    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 677
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/m/a$b;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$b;->g:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 678
    invoke-virtual {v11, v4, v3, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 680
    invoke-direct {v1, v4, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v9

    const/high16 v12, 0x41d00000    # 26.0f

    .line 681
    invoke-direct {v1, v2, v12}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcn/nubia/m/a$b;->j:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    .line 682
    invoke-virtual {v11, v7, v3, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 684
    invoke-direct {v1, v7, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_6

    .line 685
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 686
    invoke-virtual {v11, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v0, 0x41d00000    # 26.0f

    .line 687
    invoke-direct {v1, v2, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v0, v3

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x3d4ccccd    # 0.05f

    .line 688
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v3, 0x0

    .line 689
    invoke-static {v9, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/m/a$b;->c:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$b;->f:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 691
    invoke-virtual {v11, v4, v3, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 693
    invoke-direct {v1, v4, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v9

    const/high16 v12, 0x41d00000    # 26.0f

    .line 694
    invoke-direct {v1, v2, v12}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcn/nubia/m/a$b;->i:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    .line 695
    invoke-virtual {v11, v7, v3, v12, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 697
    invoke-direct {v1, v7, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_6

    .line 698
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->j()Z

    move-result v0

    const/16 v3, 0xa0

    if-eqz v0, :cond_e

    .line 705
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    sub-int/2addr v0, v12

    add-int/lit8 v0, v0, -0x50

    int-to-float v12, v3

    int-to-float v13, v0

    .line 707
    invoke-virtual {v11, v6, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v12, 0x41d00000    # 26.0f

    .line 708
    invoke-direct {v1, v2, v12}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v13

    int-to-float v12, v13

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    const v12, 0x3d4ccccd    # 0.05f

    .line 709
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v12, 0x0

    .line 710
    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 712
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x41

    .line 714
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 715
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8, v4, v12, v13, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 716
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v18, v5

    .line 717
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v7, v12, v5, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 719
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v12, 0x2

    div-int/2addr v5, v12

    add-int/2addr v5, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/lit8 v12, v12, 0x16

    sub-int/2addr v5, v12

    int-to-float v12, v9

    .line 720
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v5, v3

    int-to-float v3, v5

    invoke-virtual {v11, v4, v12, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 721
    invoke-direct {v1, v4, v8, v9}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v3

    .line 723
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/16 v16, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x16

    const/high16 v5, 0x41d00000    # 26.0f

    .line 724
    invoke-direct {v1, v2, v5}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 726
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 725
    invoke-virtual {v11, v7, v12, v0, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 727
    invoke-direct {v1, v7, v8, v9}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_7

    :cond_e
    move-object/from16 v18, v5

    const/16 v16, 0x2

    .line 728
    invoke-direct/range {p0 .. p0}, Lcn/nubia/m/c;->k()Z

    move-result v0

    if-eqz v0, :cond_f

    const/high16 v0, 0x41d00000    # 26.0f

    .line 729
    invoke-direct {v1, v2, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const v0, 0x3d4ccccd    # 0.05f

    .line 730
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    const/4 v5, 0x0

    .line 731
    invoke-static {v9, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v0, v3

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcn/nubia/m/a$b;->g:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v11, v4, v0, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 734
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcn/nubia/m/a$b;->j:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v11, v7, v0, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 735
    invoke-direct {v1, v4, v8, v3}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-direct {v1, v7, v8, v3}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_7

    .line 737
    :cond_f
    invoke-virtual {v11, v6, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const v0, 0x41926666    # 18.3f

    .line 738
    invoke-direct {v1, v2, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/nubia/m/a$b;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Lcn/nubia/m/a$b;->d:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 740
    invoke-virtual {v11, v4, v3, v5, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 742
    invoke-direct {v1, v4, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v5

    const/high16 v9, 0x41a00000    # 20.0f

    .line 743
    invoke-direct {v1, v2, v9}, Lcn/nubia/m/c;->a(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcn/nubia/m/a$b;->e:I

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    .line 744
    invoke-virtual {v11, v7, v3, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 746
    invoke-direct {v1, v7, v8, v0}, Lcn/nubia/m/c;->a(Ljava/lang/String;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 748
    :goto_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v10, v5, v5, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 749
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcn/nubia/m/c;->a(Landroid/graphics/Bitmap;[B)[B

    move-result-object v0

    aput-object v0, v14, v15

    const/16 v0, 0x64

    if-eqz v15, :cond_11

    const/4 v3, 0x1

    if-eq v15, v3, :cond_10

    goto :goto_8

    :cond_10
    const-string v3, "water_mark_drawable_black.png"

    .line 756
    invoke-direct {v1, v2, v10, v3, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    goto :goto_8

    :cond_11
    const-string v3, "water_mark_drawable_white.png"

    .line 753
    invoke-direct {v1, v2, v10, v3, v0}, Lcn/nubia/m/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 760
    :goto_8
    iget-boolean v0, v1, Lcn/nubia/m/c;->d:Z

    if-nez v0, :cond_13

    .line 762
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    aget-object v3, v14, v15

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 763
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v5, v18

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v9, 0xfa000

    new-array v9, v9, [B

    .line 766
    :goto_9
    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_12

    const/4 v13, 0x0

    .line 767
    invoke-virtual {v3, v9, v13, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_9

    .line 769
    :cond_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 770
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 771
    invoke-direct {v1, v5}, Lcn/nubia/m/c;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create water effect file fail!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WaterMarkUtil"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    move-object/from16 v3, v17

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_14
    move-object/from16 v17, v3

    .line 777
    invoke-direct {v1, v4, v2}, Lcn/nubia/m/c;->c(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 779
    aget-object v0, v14, v3

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-direct {v1, v0, v3, v4, v2}, Lcn/nubia/m/c;->a([B[BLjava/lang/String;Landroid/content/Context;)V

    if-eqz v10, :cond_15

    .line 780
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 781
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    move-object/from16 v2, v17

    .line 784
    invoke-direct {v1, v2}, Lcn/nubia/m/c;->a(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 785
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_logo_water_mark_update_key"

    const/4 v3, 0x0

    .line 786
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_16
    return-void
.end method

.method private d()Z
    .locals 2

    .line 809
    invoke-static {}, Lcom/android/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Red Magic 5G lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 813
    invoke-static {}, Lcom/android/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nubia Play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 2

    .line 817
    invoke-static {}, Lcom/android/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REDMAGIC 6 lite"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 2

    .line 821
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    .line 825
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "667"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 2

    .line 830
    invoke-static {}, Lcom/android/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 1

    .line 836
    invoke-direct {p0}, Lcn/nubia/m/c;->h()Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 1

    .line 841
    invoke-direct {p0}, Lcn/nubia/m/c;->i()Z

    move-result v0

    return v0
.end method

.method private l()V
    .locals 2

    .line 918
    iget-boolean v0, p0, Lcn/nubia/m/c;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcn/nubia/m/c;->f:Lcn/nubia/m/c$b;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcn/nubia/m/c;->e:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/m/c$2;

    invoke-direct {v1, p0}, Lcn/nubia/m/c$2;-><init>(Lcn/nubia/m/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap;)V
    .locals 3

    .line 193
    invoke-direct {p0, p3}, Lcn/nubia/m/c;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addGeneralWaterMarkWithOrientation watermarktype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNeedToUseDarkLogo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WaterMarkUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0}, Lcn/nubia/m/c;->b()Ljava/lang/String;

    move-result-object p2

    .line 212
    invoke-direct {p0, v0}, Lcn/nubia/m/c;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0, p2}, Lcn/nubia/m/c;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-direct {p0}, Lcn/nubia/m/c;->b()Ljava/lang/String;

    move-result-object p2

    .line 206
    sget-object v0, Lcn/nubia/m/c$a;->b:Lcn/nubia/m/c$a;

    invoke-direct {p0, p1, p3, p2, v0}, Lcn/nubia/m/c;->a(ILandroid/graphics/Bitmap;Ljava/lang/String;Lcn/nubia/m/c$a;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/m/c;->a(Z)Landroid/graphics/Bitmap;

    move-result-object p2

    sget-object v0, Lcn/nubia/m/c$a;->a:Lcn/nubia/m/c$a;

    invoke-direct {p0, p1, p3, p2, v0}, Lcn/nubia/m/c;->a(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcn/nubia/m/c$a;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcn/nubia/m/c$b;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1, p2}, Lcn/nubia/m/c;->b(Landroid/content/Context;Lcn/nubia/m/c$b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/m/c;->c:Ljava/lang/ref/WeakReference;

    .line 93
    iput-boolean p2, p0, Lcn/nubia/m/c;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeLogoToCameraCache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WaterMarkUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pref_water_mark_custom_hal_file_key"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Landroid/content/Context;Lcn/nubia/m/c$b;)V
    .locals 1

    .line 514
    invoke-direct {p0, p1}, Lcn/nubia/m/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    iput-object p2, p0, Lcn/nubia/m/c;->f:Lcn/nubia/m/c$b;

    .line 516
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Lcn/nubia/m/c$1;

    invoke-direct {v0, p0, p1}, Lcn/nubia/m/c$1;-><init>(Lcn/nubia/m/c;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
