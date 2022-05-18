.class public Lcom/huanju/ssp/base/utils/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static final VIVO_FILLET:I = 0x8

.field public static final VIVO_NOTCH:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeight(Landroid/app/Activity;)F
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 36
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    .line 37
    .local v1, "realHeight":I
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    int-to-float v2, v1

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->getStatusBarHeight(Landroid/content/Context;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {p0, v2}, Lcom/huanju/ssp/base/utils/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v2

    int-to-float v0, v2

    .line 42
    .local v0, "height":F
    :goto_0
    return v0

    .line 40
    .end local v0    # "height":F
    :cond_0
    int-to-float v2, v1

    invoke-static {p0, v2}, Lcom/huanju/ssp/base/utils/UIUtils;->px2dip(Landroid/content/Context;F)I

    move-result v2

    int-to-float v0, v2

    .restart local v0    # "height":F
    goto :goto_0
.end method

.method public static getInt(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 140
    const/4 v6, 0x0

    .line 141
    .local v6, "result":I
    invoke-static {}, Lcom/huanju/ssp/base/utils/UIUtils;->isMiui()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 145
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v7, "android.os.SystemProperties"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 148
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Class;

    .line 149
    .local v4, "paramTypes":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 150
    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v7

    .line 151
    const-string v7, "getInt"

    invoke-virtual {v0, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 153
    .local v3, "getInt":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/Object;

    .line 154
    .local v5, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    .line 155
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v5, v7

    .line 156
    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v6

    .line 170
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "getInt":Ljava/lang/reflect/Method;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "params":[Ljava/lang/Object;
    :cond_0
    :goto_0
    return v6

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getRealHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 74
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 75
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    .local v2, "realHeight":I
    return v2

    .line 79
    .end local v2    # "realHeight":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public static getScreenHeightDp(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v2

    .line 29
    .local v1, "width":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v0    # "scale":F
    :cond_0
    div-float v2, v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    return v2
.end method

.method public static getScreenWidthDp(Landroid/content/Context;)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .local v0, "scale":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v2

    .line 23
    .local v1, "width":F
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v0    # "scale":F
    :cond_0
    div-float v2, v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    return v2
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)F
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "height":F
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v0, v2

    .line 92
    :cond_0
    return v0
.end method

.method public static hasNotchAtHuawei(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 180
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 181
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v5, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v5, "hasNotchInScreen"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 183
    .local v2, "get":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move v4, v3

    .line 188
    .end local v0    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "get":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 184
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :catch_0
    move-exception v5

    move v4, v3

    .line 188
    .restart local v4    # "ret":I
    goto :goto_0

    .line 185
    .end local v4    # "ret":I
    :catch_1
    move-exception v5

    move v4, v3

    .line 188
    .restart local v4    # "ret":I
    goto :goto_0

    .line 186
    .end local v4    # "ret":I
    :catch_2
    move-exception v5

    move v4, v3

    .line 188
    .restart local v4    # "ret":I
    goto :goto_0

    .end local v4    # "ret":I
    :catchall_0
    move-exception v5

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public static hasNotchAtOPPO(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNotchAtVivo(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 202
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 203
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v5, "android.util.FtFeature"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    .local v0, "FtFeature":Ljava/lang/Class;
    const-string v5, "isFeatureSupport"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 205
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    move v4, v3

    .line 210
    .end local v0    # "FtFeature":Ljava/lang/Class;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 206
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :catch_0
    move-exception v5

    move v4, v3

    .line 210
    .restart local v4    # "ret":I
    goto :goto_0

    .line 207
    .end local v4    # "ret":I
    :catch_1
    move-exception v5

    move v4, v3

    .line 210
    .restart local v4    # "ret":I
    goto :goto_0

    .line 208
    .end local v4    # "ret":I
    :catch_2
    move-exception v5

    move v4, v3

    .line 210
    .restart local v4    # "ret":I
    goto :goto_0

    .end local v4    # "ret":I
    :catchall_0
    move-exception v5

    move v4, v3

    .restart local v4    # "ret":I
    goto :goto_0
.end method

.method public static hasNotchScreen(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x1

    .line 104
    const-string v1, "ro.miui.notch"

    invoke-static {v1, p0}, Lcom/huanju/ssp/base/utils/UIUtils;->getInt(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->hasNotchAtHuawei(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->hasNotchAtOPPO(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->hasNotchAtVivo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/huanju/ssp/base/utils/UIUtils;->isAndroidPHasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideBottomUIMenu(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v6, 0x13

    .line 46
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-le v4, v5, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_2

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 53
    .local v3, "v":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_0

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "decorView":Landroid/view/View;
    const/16 v2, 0xf02

    .line 63
    .local v2, "uiOptions":I
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static isAndroidPHasNotch(Landroid/app/Activity;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    const/4 v3, 0x0

    .line 119
    .local v3, "ret":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_0

    .line 121
    :try_start_0
    const-string v5, "android.view.WindowInsets"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 122
    .local v4, "windowInsets":Ljava/lang/Class;
    const-string v5, "getDisplayCutout"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 123
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    .local v0, "displayCutout":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 125
    const/4 v3, 0x1

    .line 131
    .end local v0    # "displayCutout":Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "windowInsets":Ljava/lang/Class;
    :cond_0
    :goto_0
    return v3

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isMiui()Z
    .locals 3

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "sIsMiui":Z
    :try_start_0
    const-string v2, "miui.os.Build"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 233
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 97
    .local v0, "scale":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .end local v0    # "scale":F
    :cond_0
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
