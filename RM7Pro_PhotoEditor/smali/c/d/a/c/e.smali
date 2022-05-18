.class public final Lc/d/a/c/e;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc/d/a/c/e;->b(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1

    const-string v0, ""

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_0

    const-string p1, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lc/d/a/c/e;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lc/d/a/c/e;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string v0, "Can\'t define system cache directory! \'%s\' will be used."

    invoke-static {v0, p1}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "cache"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "Unable to create external cache directory"

    invoke-static {v0, p0}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    const-string v0, "Can\'t create \".nomedia\" file in application external cache directory"

    invoke-static {v0, p0}, Lc/d/a/c/c;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "uil-images"

    invoke-static {p0, v0}, Lc/d/a/c/e;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lc/d/a/c/e;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
