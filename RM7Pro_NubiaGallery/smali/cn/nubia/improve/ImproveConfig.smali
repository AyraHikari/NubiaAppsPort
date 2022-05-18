.class public Lcn/nubia/improve/ImproveConfig;
.super Ljava/lang/Object;
.source "ImproveConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDrm(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 55
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "persist.private.switch"

    aput-object v3, v2, v0

    const-string v3, "on"

    aput-object v3, v2, v5

    .line 56
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "1"

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isNoJigSaw_New(Landroid/content/Context;)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSupportCategory(Landroid/content/Context;)Z
    .locals 0

    .line 144
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportCloud(Landroid/content/Context;)Z
    .locals 0

    .line 65
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportCutoutMode(Landroid/app/Activity;)Z
    .locals 2

    .line 152
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportDTS(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 119
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "audio.effect.name"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v5

    .line 120
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "srs"

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v5

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isSupportDolby(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 101
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "audio.effect.name"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v5

    .line 102
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "dolby"

    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v5

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isSupportFaceClassify()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportHPX(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 84
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "audio.effect.name"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v5

    .line 85
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "hpx"

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v5

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isSupportPrivate(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 28
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "persist.private.switch"

    aput-object v3, v2, v0

    const-string v3, "on"

    aput-object v3, v2, v5

    .line 29
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v1, "off"

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v5

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isSupportRename()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSlideShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSortByASC()Z
    .locals 1

    .line 132
    invoke-static {}, Lcn/nubia/gallery3d/data/DataManager;->isSortByASC()Z

    move-result v0

    return v0
.end method

.method public static isSupportThingsGroup()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportZtouch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
