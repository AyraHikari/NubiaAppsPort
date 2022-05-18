.class public Lcn/nubia/camera/av/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/av/c$a;
    }
.end annotation


# static fields
.field private static a:Lcn/nubia/camera/av/c$a;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcn/nubia/camera/av/c;->c(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/k/a/a;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, v0}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/k/a/a;II)Ljava/lang/String;
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/k/a/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p2}, Lcn/nubia/camera/af/a;->a(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method public static a(Lcn/nubia/k/a/a;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcn/nubia/camera/av/c;->a(Lcn/nubia/k/a/a;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 60
    sget-object v0, Lcn/nubia/camera/av/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/camera/av/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 26
    new-instance v0, Lcn/nubia/camera/av/c$a;

    const v1, 0x7f0f0110

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/av/c$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/camera/av/c;->a:Lcn/nubia/camera/av/c$a;

    const v0, 0x7f0f0320

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/av/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 68
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Lcn/nubia/k/a/a;)Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->f()J

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/k/a/a;->c()Z

    move-result p0

    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    .line 78
    sget-object v0, Lcn/nubia/camera/av/c;->a:Lcn/nubia/camera/av/c$a;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcn/nubia/camera/av/c;->a:Lcn/nubia/camera/av/c$a;

    invoke-virtual {v1, p0, p1}, Lcn/nubia/camera/av/c$a;->a(J)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c(J)Ljava/lang/String;
    .locals 2

    .line 72
    sget-object v0, Lcn/nubia/camera/av/c;->a:Lcn/nubia/camera/av/c$a;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcn/nubia/camera/av/c;->a:Lcn/nubia/camera/av/c$a;

    invoke-virtual {v1, p0, p1}, Lcn/nubia/camera/av/c$a;->a(J)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
