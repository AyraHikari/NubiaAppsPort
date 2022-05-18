.class public Lcn/nubia/video/commonui/app/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x1

.field private static b:I = -0x1

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = "Utils"

.field private static e:Ljava/lang/String; = "/.VideoReverse"

.field private static f:Ljava/lang/String; = "/.VideoReverse/textFilter"

.field private static g:Ljava/lang/String; = "/VideoEditor"

.field private static h:[J = null

.field private static i:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 1
    sput-object v1, Lcn/nubia/video/commonui/app/c;->h:[J

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-long v3, v2

    move v5, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    long-to-int v6, v3

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    const-wide v8, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    goto :goto_2

    :cond_0
    const-wide/16 v8, 0x0

    :goto_2
    shr-long/2addr v3, v7

    xor-long/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3
    :cond_1
    sget-object v5, Lcn/nubia/video/commonui/app/c;->h:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string p0, "android.os.Environment"

    const-string v1, "getSecondaryStorageDirectory"

    .line 4
    invoke-static {p0, v1}, Lcn/nubia/video/commonui/app/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p0, v0, v1}, Lcn/nubia/video/commonui/app/c;->g(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 3
    :catch_0
    :try_start_1
    sget-object p0, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    move-exception p0

    .line 4
    sget-object p1, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_2
    move-exception p0

    .line 5
    sget-object p1, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->m(Landroid/view/Display;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 9

    .line 1
    sget v0, Lcn/nubia/video/commonui/app/c;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :try_start_0
    const-string v4, "android.view.Display"

    .line 6
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getRealMetrics"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 7
    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 8
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 10
    :goto_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :goto_1
    if-eqz p0, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 17
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v3, p0

    :cond_2
    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    :goto_2
    sput v1, Lcn/nubia/video/commonui/app/c;->c:I

    goto :goto_3

    .line 20
    :cond_3
    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->j(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 21
    :cond_4
    :goto_3
    sget p0, Lcn/nubia/video/commonui/app/c;->c:I

    return p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcn/nubia/video/commonui/app/c;->i:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 4
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 5
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcn/nubia/video/commonui/app/c;->i:F

    :cond_0
    return-void
.end method

.method public static varargs g(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Exception: "

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    :try_start_1
    sget-object p1, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception p0

    .line 3
    sget-object p1, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_2
    move-exception p0

    .line 4
    sget-object p1, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-object v1
.end method

.method public static h(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2
    sput v1, Lcn/nubia/video/commonui/app/c;->a:I

    move v0, v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    sput v0, Lcn/nubia/video/commonui/app/c;->a:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 5
    sput p0, Lcn/nubia/video/commonui/app/c;->a:I

    :goto_0
    return v0

    .line 6
    :cond_2
    sget p0, Lcn/nubia/video/commonui/app/c;->a:I

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static i(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2
    sput v1, Lcn/nubia/video/commonui/app/c;->a:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 4
    sput v0, Lcn/nubia/video/commonui/app/c;->a:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 5
    sput p0, Lcn/nubia/video/commonui/app/c;->a:I

    :goto_0
    return v0

    .line 6
    :cond_2
    sget p0, Lcn/nubia/video/commonui/app/c;->a:I

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "cc_navi_status"

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->l(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "android.os.SystemProperties"

    .line 3
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v2

    aput-object v1, v7, v3

    .line 4
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v2

    const-string v6, "default"

    aput-object v6, v5, v3

    .line 5
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "0"

    .line 6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcn/nubia/video/commonui/app/c;->k()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    if-eqz v1, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    return v3

    :catch_0
    :catchall_0
    :cond_3
    return v2

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 7

    const-string v0, ""

    .line 1
    const-class v1, Ljava/lang/String;

    sget v2, Lcn/nubia/video/commonui/app/c;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "android.os.SystemProperties"

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v1, v6, v3

    aput-object v1, v6, v4

    .line 4
    invoke-virtual {p0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "ro.build.rom.id"

    aput-object v5, v2, v3

    aput-object v0, v2, v4

    .line 5
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7
    sput v3, Lcn/nubia/video/commonui/app/c;->b:I

    goto :goto_0

    .line 8
    :cond_0
    sput v4, Lcn/nubia/video/commonui/app/c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    .line 10
    :cond_1
    :goto_0
    sget p0, Lcn/nubia/video/commonui/app/c;->b:I

    if-ne p0, v4, :cond_2

    move v3, v4

    :cond_2
    return v3
.end method

.method public static m(Landroid/view/Display;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.Display"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFull"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcn/nubia/video/commonui/app/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/nubia/video/commonui/app/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/nubia/video/commonui/app/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcn/nubia/video/commonui/app/c;->f:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    const/16 v3, 0xa

    const-string v4, "create external recycled folder: "

    const/4 v5, 0x0

    if-nez p0, :cond_1

    move p0, v5

    move v6, p0

    :goto_0
    if-nez p0, :cond_0

    if-ge v6, v3, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " | mRemkdirNum = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move p0, v5

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    :goto_2
    if-nez p0, :cond_2

    if-ge v2, v3, :cond_2

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12
    :cond_2
    sget-object v0, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " | mRemkdirNum1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    if-nez p0, :cond_4

    if-ge v5, v3, :cond_4

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 15
    :cond_4
    sget-object v0, Lcn/nubia/video/commonui/app/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " | mRemkdirNum2 = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method
