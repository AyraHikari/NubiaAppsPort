.class public Lcn/nubia/camera/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "cn.nubia.camera"

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 25
    sget-boolean v0, Lcn/nubia/camera/c/a;->b:Z

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcn/nubia/camera/c/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/c/a;->a:Ljava/lang/String;

    const-string p0, "DebugCamera"

    const/4 v0, 0x3

    .line 21
    invoke-static {p0, v0}, Lcn/nubia/camera/c/a;->a(Ljava/lang/String;I)Z

    move-result p0

    sput-boolean p0, Lcn/nubia/camera/c/a;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcn/nubia/camera/c/d;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 39
    sget-boolean v0, Lcn/nubia/camera/c/a;->b:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcn/nubia/camera/c/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 53
    sget-boolean v0, Lcn/nubia/camera/c/a;->b:Z

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcn/nubia/camera/c/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 92
    sget-boolean v0, Lcn/nubia/camera/c/a;->b:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcn/nubia/camera/c/a;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
