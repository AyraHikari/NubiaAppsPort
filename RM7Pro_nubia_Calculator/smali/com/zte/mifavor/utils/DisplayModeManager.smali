.class public Lcom/zte/mifavor/utils/DisplayModeManager;
.super Ljava/lang/Object;
.source "DisplayModeManager.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.zte.dualLcdManager.DisplayModeManager"

.field public static final DISPLAY_MODE_DOCKED:I = 0x4

.field public static final DISPLAY_MODE_MIRROR:I = 0x8

.field public static final DISPLAY_MODE_SINGLE:I = 0x1

.field public static final DISPLAY_MODE_ZOOM:I = 0x2

.field private static final GET_CURRENT_MODE:Ljava/lang/String; = "getCurrentMode"

.field private static final GET_FOCUS_DISPLAY_ID:Ljava/lang/String; = "getFocusDisplayId"

.field private static final TAG:Ljava/lang/String; = "DisplayModeManager"

.field private static sEnsured:Z

.field private static sMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sRealInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/zte/mifavor/utils/DisplayModeManager;->sEnsured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureInstance(Landroid/content/Context;)Z
    .locals 5

    .line 92
    sget-boolean v0, Lcom/zte/mifavor/utils/DisplayModeManager;->sEnsured:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 93
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    :try_start_0
    const-string v0, "com.zte.dualLcdManager.DisplayModeManager"

    .line 97
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-string v4, "getInstance"

    .line 100
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 101
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 p0, 0x0

    .line 102
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 113
    :goto_0
    sput-boolean v2, Lcom/zte/mifavor/utils/DisplayModeManager;->sEnsured:Z

    .line 114
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static getCurrentMode(Landroid/content/Context;)I
    .locals 3

    .line 36
    invoke-static {p0}, Lcom/zte/mifavor/utils/DisplayModeManager;->ensureInstance(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 42
    :cond_0
    :try_start_0
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v1, "getCurrentMode"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v1, "getCurrentMode"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    goto :goto_0

    .line 45
    :cond_1
    new-array p0, v0, [Ljava/lang/Class;

    .line 46
    sget-object v1, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentMode"

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 47
    sget-object v1, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v2, "getCurrentMode"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    sget-object v2, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static getFocusDisplayId(Landroid/content/Context;)I
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/zte/mifavor/utils/DisplayModeManager;->ensureInstance(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 70
    :cond_0
    :try_start_0
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v1, "getFocusDisplayId"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 71
    sget-object p0, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v1, "getFocusDisplayId"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    goto :goto_0

    .line 73
    :cond_1
    new-array p0, v0, [Ljava/lang/Class;

    .line 74
    sget-object v1, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getFocusDisplayId"

    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 75
    sget-object v1, Lcom/zte/mifavor/utils/DisplayModeManager;->sMethodMap:Ljava/util/HashMap;

    const-string v2, "getFocusDisplayId"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 79
    sget-object v2, Lcom/zte/mifavor/utils/DisplayModeManager;->sRealInstance:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public static isInZoomMode(Landroid/content/Context;)Z
    .locals 1

    .line 32
    invoke-static {p0}, Lcom/zte/mifavor/utils/DisplayModeManager;->isMulty(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zte/mifavor/utils/DisplayModeManager;->getCurrentMode(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMulty(Landroid/content/Context;)Z
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/zte/mifavor/utils/DisplayModeManager;->ensureInstance(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
