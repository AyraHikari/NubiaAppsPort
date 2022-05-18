.class public Lcn/nubia/camera/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/res/Resources;)V
    .locals 4

    .line 23
    sget-boolean v0, Lcn/nubia/camera/n/c;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/nubiaeffect"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 28
    invoke-static {p0, v1}, Lcn/nubia/camera/n/c;->a(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 29
    sput-boolean v2, Lcn/nubia/camera/n/c;->a:Z

    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.android.camera/effect"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    invoke-static {v0}, Lcn/nubia/camera/n/c;->a(Ljava/io/File;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    invoke-static {v0}, Lcn/nubia/camera/n/c;->a(Ljava/io/File;)V

    .line 39
    :cond_3
    :goto_0
    invoke-static {p0, v1}, Lcn/nubia/camera/n/c;->a(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 40
    sput-boolean v2, Lcn/nubia/camera/n/c;->a:Z

    return-void
.end method

.method private static a(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 11

    const-string v0, "EffectUtil"

    const v1, 0x7f030050

    .line 50
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030051

    .line 51
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 52
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 53
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 56
    :try_start_0
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 57
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v8, 0xfa000

    new-array v8, v8, [B

    .line 60
    :goto_1
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 61
    invoke-virtual {v7, v8, v3, v9}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 64
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    const/4 v6, 0x1

    .line 65
    invoke-virtual {v5, v6, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 66
    invoke-virtual {v5, v6, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 67
    invoke-virtual {v5, v6, v3}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 75
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 81
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 82
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method
