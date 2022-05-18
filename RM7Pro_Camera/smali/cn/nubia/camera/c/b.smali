.class public Lcn/nubia/camera/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "cn.nubia.camera"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 23
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 35
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 0

    .line 79
    invoke-static {p0, p1}, Lcn/nubia/camera/c/d;->a(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 43
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 39
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 51
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 47
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    .line 63
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 59
    sget-object v0, Lcn/nubia/camera/c/b;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/nubia/camera/c/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 91
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
