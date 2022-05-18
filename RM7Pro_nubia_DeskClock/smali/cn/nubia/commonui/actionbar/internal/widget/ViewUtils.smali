.class public Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 44
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeFitSystemWindows"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    .line 46
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_0
    return-void

    .line 49
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "NubiaWidget"

    const-string v2, "Could not find method computeFitSystemWindows. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineMeasuredStates(II)I
    .locals 1
    .param p0, "curState"    # I
    .param p1, "newState"    # I

    .prologue
    .line 70
    or-int v0, p0, p1

    return v0
.end method

.method public static computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "inoutInsets"    # Landroid/graphics/Rect;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 78
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->sComputeFitSystemWindowsMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NubiaWidget"

    const-string v2, "Could not invoke computeFitSystemWindows"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeOptionalFitsSystemWindows(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "makeOptionalFitsSystemWindows"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 100
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 109
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "NubiaWidget"

    const-string v3, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "NubiaWidget"

    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "NubiaWidget"

    const-string v3, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "useAndroidTheme"    # Z
    .param p3, "useAppTheme"    # Z

    .prologue
    const/4 v4, 0x0

    .line 116
    sget-object v3, Lcn/nubia/commonui/R$styleable;->View:[I

    invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 118
    .local v2, "themeId":I
    if-eqz p2, :cond_0

    .line 120
    sget v3, Lcn/nubia/commonui/R$styleable;->View_android_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 122
    :cond_0
    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    .line 124
    sget v3, Lcn/nubia/commonui/R$styleable;->View_theme:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 126
    if-eqz v2, :cond_1

    .line 127
    const-string v3, "NubiaWidget"

    const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    if-eqz v2, :cond_3

    instance-of v3, p0, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    if-eqz v3, :cond_2

    move-object v3, p0

    check-cast v3, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    .line 133
    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 136
    :cond_2
    new-instance v1, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/internal/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local p0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    move-object p0, v1

    .line 138
    .end local v1    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    return-object p0
.end method
