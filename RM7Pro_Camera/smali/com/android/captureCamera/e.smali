.class public Lcom/android/captureCamera/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/captureCamera/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/captureCamera/e$a;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/android/captureCamera/e;->a:Lcom/android/captureCamera/e$a;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/android/captureCamera/e;->b:I

    .line 69
    new-instance v0, Lcom/android/captureCamera/e$a;

    const-string v1, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, p0, v1}, Lcom/android/captureCamera/e$a;-><init>(Lcom/android/captureCamera/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/captureCamera/e;->a:Lcom/android/captureCamera/e$a;

    .line 70
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "NX627"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX616"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/captureCamera/e;->c:Z

    return-void
.end method

.method private a(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p1, p2

    .line 79
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x2d

    .line 84
    div-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p1, p1, 0x5a

    rem-int/lit16 p1, p1, 0x168

    return p1

    :cond_2
    return p2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "DCIM"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relativePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureCameraUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Z
    .locals 2

    .line 128
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "NX627J"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 7

    .line 38
    iget-boolean v0, p0, Lcom/android/captureCamera/e;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "android.view.SurfaceControl"

    .line 42
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getBuiltInDisplay"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 43
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getActiveConfig"

    new-array v5, v3, [Ljava/lang/Class;

    .line 44
    const-class v6, Landroid/os/IBinder;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v1

    .line 46
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/android/captureCamera/e;->b:I

    return v0
.end method

.method public a(J)Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/captureCamera/e;->a:Lcom/android/captureCamera/e$a;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/captureCamera/e;->a:Lcom/android/captureCamera/e$a;

    invoke-virtual {v1, p1, p2}, Lcom/android/captureCamera/e$a;->a(J)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/captureCamera/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    rsub-int p1, p1, 0x168

    .line 64
    :cond_0
    iget v0, p0, Lcom/android/captureCamera/e;->b:I

    invoke-direct {p0, p1, v0}, Lcom/android/captureCamera/e;->a(II)I

    move-result p1

    iput p1, p0, Lcom/android/captureCamera/e;->b:I

    return-void
.end method
