.class public Lcn/nubia/l/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Environment"

    .line 125
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOtgStorageDirectory"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 28
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p0}, Lcn/nubia/l/c/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "StorageUtils"

    const-string v1, "getPhoneStoragePath fail"

    .line 33
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {p0}, Lcn/nubia/l/c/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {p0}, Lcn/nubia/l/c/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 0

    .line 59
    invoke-static {p0}, Lcn/nubia/l/c/b;->e(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.Environment"

    .line 65
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSecondaryStorageDirectory"

    new-array v4, v1, [Ljava/lang/Class;

    .line 66
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 69
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_2

    const-string v3, "storage"

    .line 76
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 78
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumePaths"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    .line 79
    array-length v3, p0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p0, v1

    .line 80
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    move-object v0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "storage"

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 105
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumePaths"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    .line 106
    array-length v1, p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    :try_start_1
    aget-object v4, p0, v2

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcn/nubia/l/c/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    move v3, v0

    .line 117
    :goto_1
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception p0

    move v3, v0

    .line 115
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception p0

    move v3, v0

    .line 113
    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception p0

    move v3, v0

    .line 111
    :goto_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_5
    const/4 p0, 0x1

    if-le v3, p0, :cond_3

    move v0, p0

    :cond_3
    return v0
.end method
