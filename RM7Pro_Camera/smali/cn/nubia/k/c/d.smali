.class public Lcn/nubia/k/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcn/nubia/k/c/d;


# instance fields
.field a:Ljava/text/DateFormat;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/k/c/d;->a:Ljava/text/DateFormat;

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public static a()Lcn/nubia/k/c/d;
    .locals 1

    .line 41
    sget-object v0, Lcn/nubia/k/c/d;->b:Lcn/nubia/k/c/d;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcn/nubia/k/c/d;

    invoke-direct {v0}, Lcn/nubia/k/c/d;-><init>()V

    sput-object v0, Lcn/nubia/k/c/d;->b:Lcn/nubia/k/c/d;

    .line 44
    :cond_0
    sget-object v0, Lcn/nubia/k/c/d;->b:Lcn/nubia/k/c/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Landroid/util/SparseArray;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/k/c/e;->a(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 177
    invoke-static {v1, p2}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcn/nubia/k/c/e;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Landroid/util/SparseArray;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p0}, Lcn/nubia/k/c/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 161
    invoke-static {v1, p1}, Lcn/nubia/k/c/d;->a([BLandroid/util/SparseArray;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 162
    invoke-static {p0, p1}, Lcn/nubia/k/c/e;->a(Ljava/lang/String;[B)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static a([BLandroid/util/SparseArray;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 58
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_3

    .line 64
    :cond_1
    new-instance v0, Lcn/nubia/d/a;

    invoke-direct {v0}, Lcn/nubia/d/a;-><init>()V

    .line 66
    :try_start_0
    invoke-virtual {v0, p0}, Lcn/nubia/d/a;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 71
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 72
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcn/nubia/d/a;->a(ILjava/lang/Object;)Lcn/nubia/d/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v0, v1}, Lcn/nubia/d/a;->a(Ljava/util/Collection;)V

    .line 75
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 77
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcn/nubia/d/a;->a([BLjava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string v0, "ExifUtils"

    const-string v1, "Could not write EXIF"

    .line 79
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/k/c/d;->a:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
