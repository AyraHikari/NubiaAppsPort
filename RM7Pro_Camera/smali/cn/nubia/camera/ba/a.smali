.class public Lcn/nubia/camera/ba/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ba/a$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static b:Z = false

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:F

.field private static i:Lcn/nubia/camera/ba/a$a;

.field private static j:I

.field private static k:Z

.field private static l:Z

.field private static m:Z

.field private static n:Z

.field private static o:Ljava/lang/String;

.field private static p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    sget-object v0, Lcn/nubia/camera/ba/a$a;->a:Lcn/nubia/camera/ba/a$a;

    sput-object v0, Lcn/nubia/camera/ba/a;->i:Lcn/nubia/camera/ba/a$a;

    const/4 v0, 0x0

    .line 139
    sput v0, Lcn/nubia/camera/ba/a;->j:I

    .line 140
    sput-boolean v0, Lcn/nubia/camera/ba/a;->k:Z

    const/4 v1, 0x1

    .line 141
    sput-boolean v1, Lcn/nubia/camera/ba/a;->l:Z

    .line 142
    sput-boolean v0, Lcn/nubia/camera/ba/a;->m:Z

    .line 143
    sput-boolean v0, Lcn/nubia/camera/ba/a;->n:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 503
    sput-object v0, Lcn/nubia/camera/ba/a;->q:[I

    return-void
.end method

.method public static A()Z
    .locals 2

    .line 852
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 2

    .line 856
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX667"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .locals 2

    .line 860
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static D()Z
    .locals 2

    const-string v0, "persist.sys.pcb_version_ext"

    const/4 v1, 0x0

    .line 864
    invoke-static {v0, v1}, Lcn/nubia/camera/ba/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX669J_V1A"

    .line 865
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NX669J_V1E"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NX669J_V1K"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static E()Z
    .locals 2

    .line 933
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static F()V
    .locals 4

    const-string v0, "CameraUtil"

    .line 964
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/camera/ba/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcn/nubia/camera/ba/a;->o:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 968
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 970
    :cond_0
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const-string v1, "dump hprof X"

    .line 971
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump hprof fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static G()V
    .locals 2

    .line 1000
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/d/c;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    return-void
.end method

.method public static H()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1148
    sget-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method public static I()Z
    .locals 2

    .line 1152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "lahaina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static J()Ljava/lang/String;
    .locals 8

    .line 1174
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    neg-int v0, v0

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz v0, :cond_0

    const-string v2, "+"

    goto :goto_0

    :cond_0
    const-string v2, "-"

    .line 1176
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    .line 1178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    const-string v5, ""

    const/16 v6, 0xa

    if-ge v2, v6, :cond_1

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object v7, v5

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    .line 1179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v2, v2, 0x3c

    sub-int/2addr v0, v2

    .line 1181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v6, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static K()Lcn/nubia/camera/ba/a$a;
    .locals 3

    .line 594
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 595
    sget-object v1, Lcn/nubia/camera/ba/a$a;->a:Lcn/nubia/camera/ba/a$a;

    const-string v2, "ZTE"

    .line 596
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NUBIA"

    .line 597
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    :cond_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    .line 599
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 600
    array-length v2, v0

    if-lez v2, :cond_1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 601
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    .line 604
    sget-object v1, Lcn/nubia/camera/ba/a$a;->c:Lcn/nubia/camera/ba/a$a;

    goto :goto_1

    :cond_2
    const/16 v1, 0x51

    if-ne v0, v1, :cond_3

    .line 606
    sget-object v1, Lcn/nubia/camera/ba/a$a;->b:Lcn/nubia/camera/ba/a$a;

    goto :goto_1

    .line 608
    :cond_3
    sget-object v1, Lcn/nubia/camera/ba/a$a;->a:Lcn/nubia/camera/ba/a$a;

    .line 613
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/ba/a;->i:Lcn/nubia/camera/ba/a$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraUtil"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static L()Z
    .locals 2

    const-string v0, "sys.nubia_internal_version_flag"

    const-string v1, "default"

    .line 631
    invoke-static {v0, v1}, Lcn/nubia/camera/ba/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 633
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static M()I
    .locals 7

    .line 711
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 714
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDoubleScreenMode"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 715
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v3, "CameraUtil"

    .line 716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    move v0, v1

    .line 722
    :goto_0
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v3

    move v0, v1

    .line 720
    :goto_1
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v3

    move v0, v1

    .line 718
    :goto_2
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_3
    if-ne v0, v1, :cond_0

    :try_start_2
    const-string v1, "android.view.SurfaceControl"

    .line 727
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getActiveConfig"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 728
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 729
    check-cast v5, Landroid/os/IBinder;

    aput-object v5, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    :catch_6
    move-exception v1

    .line 737
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_7
    move-exception v1

    .line 735
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_8
    move-exception v1

    .line 733
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_4

    :catch_9
    move-exception v1

    .line 731
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_0
    :goto_4
    return v0
.end method

.method private static N()I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.SurfaceControl"

    .line 771
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBuiltInDisplay"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 772
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getActiveConfig"

    new-array v5, v3, [Ljava/lang/Class;

    .line 773
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 774
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 775
    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 784
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 782
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 780
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private static O()V
    .locals 6

    .line 1138
    sget-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    .line 1140
    sget-object v1, Lcn/nubia/camera/aq/f;->b:Ljava/lang/String;

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/camera/aq/f;->a:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/camera/aq/f;->c:Ljava/lang/String;

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcn/nubia/camera/ba/a;->p:Ljava/util/HashMap;

    sget-object v1, Lcn/nubia/camera/aq/f;->d:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v2

    int-to-double v2, v2

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 9

    const-string v0, "CameraUtil"

    const-string v1, "orientation"

    .line 978
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 982
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 983
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 984
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 992
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v8, :cond_2

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "SQLiteException in thumbnail"

    .line 989
    invoke-static {v0, v2, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v8, :cond_2

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v2, "SQLiteDiskIOException in thumbnail"

    .line 987
    invoke-static {v0, v2, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    goto :goto_0

    .line 995
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query image orientation fail. uri:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :goto_2
    if-eqz v8, :cond_3

    .line 992
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 994
    :cond_3
    throw p0
.end method

.method public static a(Landroid/content/res/Resources;)I
    .locals 2

    .line 264
    invoke-static {}, Lcn/nubia/camera/ba/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {}, Lcn/nubia/camera/ba/a;->h()I

    move-result v0

    const v1, 0x7f07011f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    const v0, 0x7f0700be

    .line 267
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/Context;)I
    .locals 5

    .line 517
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const v0, 0x7f0f02ce

    .line 518
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_water_mark_logo_key"

    .line 517
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 518
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 519
    :goto_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0f02d1

    .line 520
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "pref_water_mark_time_key"

    .line 519
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 520
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ak/a;->aa()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-eqz p0, :cond_3

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    return v2
.end method

.method public static a(Ljava/io/FileDescriptor;)I
    .locals 1

    .line 1076
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1078
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1080
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1083
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1085
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return p0

    .line 1083
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1085
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1087
    :goto_3
    throw p0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/af/b;
    .locals 4

    .line 908
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcn/nubia/camera/ba/b;->b(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    invoke-virtual {p1}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 911
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    .line 913
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->l()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 911
    :goto_2
    invoke-static {v1, v0, p2, v2}, Lcn/nubia/camera/aq/b;->a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;

    move-result-object p2

    .line 914
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p2, "pref_moresetting_picturesize_key"

    const/4 v1, 0x0

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 915
    sget-object p2, Lcn/nubia/camera/aq/f;->e:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 916
    new-instance p1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1, v0, v1}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public static a(Landroid/app/Activity;IIZ)Lcn/nubia/camera/am/a;
    .locals 1

    .line 280
    new-instance v0, Lcn/nubia/camera/am/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/am/a$a;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v0, p1}, Lcn/nubia/camera/am/a$a;->c(I)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p2}, Lcn/nubia/camera/am/a$a;->a(I)Lcn/nubia/camera/am/a$a;

    move-result-object p1

    new-instance p2, Lcn/nubia/camera/ba/a$1;

    invoke-direct {p2, p3, p0}, Lcn/nubia/camera/ba/a$1;-><init>(ZLandroid/app/Activity;)V

    const p0, 0x7f0f0031

    .line 283
    invoke-virtual {p1, p0, p2}, Lcn/nubia/camera/am/a$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/camera/am/a$a;

    move-result-object p0

    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1}, Lcn/nubia/camera/am/a$a;->a(Z)Lcn/nubia/camera/am/a$a;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Lcn/nubia/camera/am/a$a;->a()Lcn/nubia/camera/am/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Lcom/android/common/ui/RotateImageView;
    .locals 3

    .line 459
    invoke-static {}, Lcn/nubia/camera/ba/a;->x()Z

    move-result v0

    const-string v1, "CameraUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->y()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "getSpecificationView failed, because isInternational."

    .line 460
    invoke-static {v1, p0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 463
    :cond_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->U()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    .line 466
    :cond_2
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "getSpecificationView failed, because isScreenLocked."

    .line 467
    invoke-static {v1, p0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 470
    :cond_3
    new-instance v0, Lcom/android/common/ui/RotateImageView;

    invoke-direct {v0, p0}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a9

    .line 471
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 472
    new-instance v1, Lcn/nubia/camera/specification/a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/specification/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/util/Size;)Ljava/lang/String;
    .locals 1

    .line 954
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->c(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f00eb

    .line 955
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 956
    :cond_0
    invoke-static {p1}, Lcn/nubia/camera/ba/b;->a(Landroid/util/Size;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0f00ea

    .line 957
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 869
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "auto"

    return-object p0

    :cond_0
    const-string p0, "off"

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 186
    sput-boolean v0, Lcn/nubia/camera/ba/a;->b:Z

    .line 187
    sput-boolean v0, Lcn/nubia/camera/ba/a;->n:Z

    .line 189
    invoke-static {}, Lcn/nubia/camera/ak/a;->b()V

    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call CameraUtil\'s resetInitState from non main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(DDLandroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addGPS] latitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget v0, Lcn/nubia/d/a;->aQ:I

    invoke-static {p0, p1}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 576
    sget v0, Lcn/nubia/d/a;->aS:I

    invoke-static {p2, p3}, Lcn/nubia/d/a;->a(D)[Lcn/nubia/d/l;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 577
    sget v0, Lcn/nubia/d/a;->aP:I

    const-wide/16 v1, 0x0

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_0

    const-string p0, "N"

    goto :goto_0

    :cond_0
    const-string p0, "S"

    :goto_0
    invoke-virtual {p4, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 580
    sget p0, Lcn/nubia/d/a;->aR:I

    cmpl-double p1, p2, v1

    if-ltz p1, :cond_1

    const-string p1, "E"

    goto :goto_1

    :cond_1
    const-string p1, "W"

    :goto_1
    invoke-virtual {p4, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 163
    sget-boolean v0, Lcn/nubia/camera/ba/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcn/nubia/camera/c/a;->a(Landroid/content/Context;)V

    .line 169
    invoke-static {p0}, Lcn/nubia/camera/c/b;->a(Landroid/content/Context;)V

    .line 170
    invoke-static {p0}, Lcn/nubia/camera/av/c;->a(Landroid/content/Context;)V

    .line 171
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/ak/a;->a(Landroid/content/Context;)V

    .line 173
    invoke-static {}, Lcn/nubia/camera/ba/a;->K()Lcn/nubia/camera/ba/a$a;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/ba/a;->i:Lcn/nubia/camera/ba/a$a;

    const/4 v0, 0x1

    .line 174
    sput-boolean v0, Lcn/nubia/camera/ba/a;->b:Z

    .line 175
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->b(Landroid/content/Context;)V

    .line 176
    invoke-static {}, Lcn/nubia/camera/ba/a;->L()Z

    move-result v1

    sput-boolean v1, Lcn/nubia/camera/ba/a;->m:Z

    .line 177
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcn/nubia/camera/ba/a;->m:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcn/nubia/camera/ba/a;->n:Z

    .line 178
    invoke-static {}, Lcn/nubia/camera/ba/a;->O()V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/ba/a;->o:Ljava/lang/String;

    return-void

    .line 161
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t call CameraUtil\'s initialize from non main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "vibrator"

    .line 407
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 408
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 370
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string v0, "Can\'t broadcast new picture"

    .line 374
    invoke-static {p1, v0, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/content/Context;ZZJJZ)V
    .locals 5

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/camera/ba/a;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    const-string v1, "CameraUtil"

    if-nez v0, :cond_0

    .line 307
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Uri invalid. uri="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewUri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "cameraview"

    const/4 v3, 0x1

    .line 315
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "multishoot"

    .line 317
    invoke-virtual {v0, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "multishoot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {v1, p8}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const-string p8, "wlancamera"

    .line 322
    invoke-virtual {v0, p8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p3, "secure_camera"

    .line 327
    invoke-virtual {v0, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p3, 0x2

    new-array p3, p3, [J

    const/4 p8, 0x0

    aput-wide p4, p3, p8

    aput-wide p6, p3, v3

    const-string p4, "secure_album_time"

    .line 328
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_2
    const/16 p3, 0x2711

    :try_start_0
    const-string p4, "cn.nubia.gallery3d"

    .line 332
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_3

    .line 334
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 336
    :cond_3
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 340
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "review image fail. uri="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static a(Landroid/util/SparseArray;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 1186
    invoke-static {}, Lcn/nubia/k/c/d;->a()Lcn/nubia/k/c/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/k/c/d;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 1187
    sget p2, Lcn/nubia/d/a;->t:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1188
    sget p2, Lcn/nubia/d/a;->O:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1189
    sget p2, Lcn/nubia/d/a;->N:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1191
    invoke-static {}, Lcn/nubia/camera/ba/a;->J()Ljava/lang/String;

    move-result-object p1

    .line 1192
    sget p2, Lcn/nubia/d/a;->Q:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1193
    sget p2, Lcn/nubia/d/a;->P:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1194
    sget p2, Lcn/nubia/d/a;->R:I

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/content/res/Resources;)V
    .locals 2

    .line 1033
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 1034
    invoke-static {v1, p2, p1}, Lcn/nubia/camera/ba/f;->a(ILandroid/content/res/Resources;I)I

    move-result p1

    .line 1035
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p1, p2, :cond_0

    .line 1036
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1037
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 2

    .line 1042
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1043
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/res/Resources;)I

    move-result p1

    .line 1044
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p1, v1, :cond_0

    .line 1045
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1046
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3

    .line 1056
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1057
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1058
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1059
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/widget/RelativeLayout;Lcn/nubia/camera/a/a;)V
    .locals 2

    .line 926
    invoke-virtual {p1}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object p1

    .line 927
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 928
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 929
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 587
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "CameraUtil"

    const-string v1, "fail to close"

    .line 589
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 299
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static a(FFLandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 507
    :cond_0
    sget-object v1, Lcn/nubia/camera/ba/a;->q:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 508
    sget-object v1, Lcn/nubia/camera/ba/a;->q:[I

    aget v2, v1, v0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    sget-object p0, Lcn/nubia/camera/ba/a;->q:[I

    aget v1, p0, v3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    aget p0, p0, v3

    .line 509
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p0, p2

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 1

    .line 1156
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 1157
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 1158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CAMERA_AUTO_TEST"

    .line 1159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.camera.action.DualCalibrationForSale"

    .line 1160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "keyguard_locked"

    const/4 v1, 0x0

    .line 441
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 442
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_2

    .line 443
    invoke-static {p1}, Lcn/nubia/camera/ba/a;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static a(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "CameraUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "r"

    .line 352
    invoke-virtual {p1, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_1

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to open URI. URI="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 357
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Fail to open URI."

    .line 359
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static a(Lcn/nubia/camera/ad/a;)Z
    .locals 1

    .line 894
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object p0

    .line 895
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/preference/c;Landroid/content/res/Resources;Lcn/nubia/camera/af/a;Ljava/lang/String;)Z
    .locals 2

    .line 804
    invoke-static {}, Lcn/nubia/camera/ba/a;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ad()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    if-ne p2, v0, :cond_2

    .line 809
    :cond_1
    invoke-static {p3}, Lcn/nubia/camera/ba/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    invoke-static {p2, p3}, Lcn/nubia/camera/ba/b;->c(Lcn/nubia/camera/af/a;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0f025e

    .line 812
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_multi_focus_key"

    .line 811
    invoke-virtual {p0, p2, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "on"

    .line 812
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static a(Lcn/nubia/b/a/f;)[B
    .locals 14

    .line 1126
    invoke-interface {p0}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/a/f$a;

    .line 1127
    invoke-interface {p0}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/b/a/f$a;

    .line 1128
    invoke-interface {p0}, Lcn/nubia/b/a/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/b/a/f$a;

    .line 1129
    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->b()I

    move-result v4

    invoke-interface {v0}, Lcn/nubia/b/a/f$a;->a()I

    move-result v5

    .line 1130
    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->b()I

    move-result v7

    invoke-interface {v1}, Lcn/nubia/b/a/f$a;->a()I

    move-result v8

    .line 1131
    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->c()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->b()I

    move-result v10

    invoke-interface {v2}, Lcn/nubia/b/a/f$a;->a()I

    move-result v11

    invoke-interface {p0}, Lcn/nubia/b/a/f;->f()I

    move-result v12

    invoke-interface {p0}, Lcn/nubia/b/a/f;->c()I

    move-result v13

    .line 1129
    invoke-static/range {v3 .. v13}, Lcn/nubia/algorithm/utils/YUVAlgorithm;->a(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)Lcn/nubia/algorithm/utils/a;

    move-result-object p0

    .line 1132
    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->b()[B

    move-result-object v0

    .line 1133
    invoke-virtual {p0}, Lcn/nubia/algorithm/utils/a;->a()V

    return-object v0
.end method

.method public static a([BII)[B
    .locals 2

    .line 938
    array-length v0, p0

    new-array v0, v0, [B

    mul-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 942
    aget-byte v1, p0, p2

    aput-byte v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 945
    :cond_0
    :goto_1
    array-length p2, p0

    if-ge p1, p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    .line 946
    aget-byte v1, p0, p2

    aput-byte v1, v0, p1

    .line 947
    aget-byte v1, p0, p1

    aput-byte v1, v0, p2

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "r"

    .line 1098
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1100
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/camera/ba/a;->a(Ljava/io/FileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1107
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1109
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return p0

    :cond_2
    if-eqz v1, :cond_3

    .line 1107
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1103
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 1107
    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1109
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_4

    .line 1107
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1109
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1112
    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    return v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    .line 1004
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1005
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 1006
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 1007
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p0, :cond_0

    .line 1008
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    .line 197
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 200
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 201
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 203
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 204
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 205
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 207
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcn/nubia/camera/ba/a;->c:I

    .line 208
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcn/nubia/camera/ba/a;->d:I

    .line 209
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcn/nubia/camera/ba/a;->e:I

    .line 210
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcn/nubia/camera/ba/a;->f:I

    .line 211
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    sput v0, Lcn/nubia/camera/ba/a;->g:I

    .line 217
    :cond_0
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 219
    sput v1, Lcn/nubia/camera/ba/a;->h:F

    .line 220
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 221
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    sput v1, Lcn/nubia/camera/ba/a;->h:F

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phone dimension: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->d:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v2, Lcn/nubia/camera/ba/a;->c:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v3, Lcn/nubia/camera/ba/a;->d:I

    int-to-float v3, v3

    sget v4, Lcn/nubia/camera/ba/a;->c:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "); real phone dimension: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v3, Lcn/nubia/camera/ba/a;->f:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->e:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->f:I

    int-to-float v1, v1

    sget v2, Lcn/nubia/camera/ba/a;->e:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "); ExifModel: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 228
    invoke-static {}, Lcn/nubia/camera/ba/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; WidowsPeakHeight: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->g:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", sNavBottomMargin = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->j:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; DensityScale: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget v1, Lcn/nubia/camera/ba/a;->h:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "; versionName: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; Build.type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraUtil"

    .line 224
    invoke-static {v0, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t call CameraUtil\'s initialize from non main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 383
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string v0, "Can\'t broadcast new video"

    .line 386
    invoke-static {p1, v0, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 193
    sget-boolean v0, Lcn/nubia/camera/ba/a;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Intent;)Z
    .locals 2

    .line 1164
    invoke-static {p0}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "factory"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static b(Lcom/android/preference/c;Landroid/content/Context;)Z
    .locals 2

    const v0, 0x7f0f03bd

    .line 1026
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    invoke-static {}, Lcn/nubia/camera/ba/a;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0f03bc

    goto :goto_0

    :cond_0
    const v1, 0x7f0f0262

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_normal_ai_key"

    .line 1028
    invoke-virtual {p0, v1, p1}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c()I
    .locals 1

    .line 240
    sget v0, Lcn/nubia/camera/ba/a;->j:I

    return v0
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 4

    .line 1012
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-wide/16 v1, 0x0

    .line 1014
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x9

    .line 1020
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 1021
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz p0, :cond_0

    .line 1022
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    return-wide v1

    :catch_0
    move-exception p0

    const-string p1, "CameraUtil"

    const-string v3, "setDataSource error"

    .line 1016
    invoke-static {p1, v3, p0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1
.end method

.method public static c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    :try_start_0
    const-string v0, "rw"

    .line 1118
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1120
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DCIM"

    .line 1063
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1065
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relativePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "power"

    .line 427
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 428
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "dualcameracalibration"

    const/4 v1, 0x0

    .line 1169
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.camera.action.DualCalibrationForSale"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static d()I
    .locals 1

    .line 244
    sget v0, Lcn/nubia/camera/ba/a;->c:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "keyguard"

    .line 434
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 435
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKeyguardLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUtil"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static e()I
    .locals 1

    .line 248
    sget v0, Lcn/nubia/camera/ba/a;->d:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 537
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ab()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 540
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f0f02ce

    .line 541
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_water_mark_logo_key"

    .line 540
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 546
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_water_mark_custom_key"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f()I
    .locals 1

    .line 252
    sget v0, Lcn/nubia/camera/ba/a;->e:I

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1051
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 1052
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g()I
    .locals 1

    .line 256
    sget v0, Lcn/nubia/camera/ba/a;->f:I

    return v0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "keyguard"

    .line 560
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 561
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v1, 0x0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isDeviceLocked"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 565
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string v2, "CameraUtil"

    const-string v3, "isDeviceLocked is not had"

    .line 568
    invoke-static {v2, v3}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static h()I
    .locals 1

    .line 260
    sget v0, Lcn/nubia/camera/ba/a;->g:I

    return v0
.end method

.method private static h(Landroid/content/Context;)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "nubia.os.screenswitch.ScreenSwitchManager"

    .line 751
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getCurrentDisplayId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 753
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 754
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    .line 755
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string p0, "CameraUtil"

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rom screeid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 764
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 762
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 760
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 758
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static i()F
    .locals 1

    .line 272
    sget v0, Lcn/nubia/camera/ba/a;->h:F

    return v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 795
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 796
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 798
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static j()Lcn/nubia/camera/ba/a$a;
    .locals 1

    .line 276
    sget-object v0, Lcn/nubia/camera/ba/a;->i:Lcn/nubia/camera/ba/a$a;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .line 479
    invoke-static {}, Lcn/nubia/camera/ba/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Red Magic 5S"

    return-object v0

    .line 481
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "REDMAGIC 6Pro"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "persist.vendor.camera.exif.model"

    .line 484
    invoke-static {v1, v0}, Lcn/nubia/camera/ba/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ro.vendor.feature.nubia.exif.module"

    const-string v1, "nubia"

    .line 486
    invoke-static {v0, v1}, Lcn/nubia/camera/ba/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "_"

    const-string v2, " "

    .line 489
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 496
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Z
    .locals 1

    .line 645
    sget-boolean v0, Lcn/nubia/camera/ba/a;->m:Z

    return v0
.end method

.method public static n()Z
    .locals 1

    .line 650
    sget-boolean v0, Lcn/nubia/camera/ba/a;->n:Z

    return v0
.end method

.method public static o()Z
    .locals 1

    .line 673
    sget v0, Lcn/nubia/camera/ba/a;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static p()Z
    .locals 1

    .line 677
    sget-boolean v0, Lcn/nubia/camera/ba/a;->k:Z

    return v0
.end method

.method public static q()I
    .locals 4

    .line 681
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 684
    :cond_0
    invoke-static {}, Lcn/nubia/camera/ba/a;->t()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 685
    invoke-static {}, Lcn/nubia/camera/ba/a;->N()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 688
    :cond_2
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/a;->h(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 690
    invoke-static {}, Lcn/nubia/camera/ba/a;->M()I

    move-result v0

    const/16 v3, 0x3e9

    if-ne v0, v3, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-ne v0, v2, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public static r()Z
    .locals 2

    .line 703
    invoke-static {}, Lcn/nubia/camera/ba/a;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static s()Z
    .locals 2

    .line 790
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t()Z
    .locals 2

    .line 818
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX616J"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 2

    .line 822
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .locals 2

    .line 826
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "629"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 2

    .line 830
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    .line 835
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX659"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 2

    const-string v0, "persist.sys.pcb_version_ext"

    const/4 v1, 0x0

    .line 839
    invoke-static {v0, v1}, Lcn/nubia/camera/ba/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NX659J_V1S"

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static z()Z
    .locals 2

    .line 848
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX667"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
