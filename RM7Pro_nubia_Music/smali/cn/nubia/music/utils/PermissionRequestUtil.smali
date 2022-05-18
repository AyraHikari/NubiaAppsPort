.class public Lcn/nubia/music/utils/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/PermissionRequestUtil$PermissionRequestCallback;
    }
.end annotation


# static fields
.field public static final KEY_GRANT_COUNT:Ljava/lang/String; = "grant_count"

.field private static final PROVIDER_ARG_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final PROVIDER_ARG_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PROVIDER_METHOD_NAME:Ljava/lang/String; = "requestPermission"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://cn.nubia.security.permission.requester"

.field public static final REQUEST_RESULT_FAILED:I = -0x1

.field public static final REQUEST_RESULT_SUCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionRequestUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceArguments(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad args, please check context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packagename : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    return-void
.end method

.method private static realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    const-string v2, "content://cn.nubia.security.permission.requester"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 76
    if-nez v2, :cond_1

    .line 77
    const-string v1, "PermissionRequestUtil"

    const-string v2, "Current system not support this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    const-string v3, "packagename"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p2, :cond_2

    array-length v3, p2

    if-nez v3, :cond_2

    .line 83
    const-string v3, "permissions"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 86
    :cond_2
    :try_start_0
    const-string v3, "requestPermission"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    throw v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/music/utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/music/utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/music/utils/PermissionRequestUtil$PermissionRequestCallback;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/music/utils/PermissionRequestUtil$PermissionRequestCallback;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/music/utils/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 30
    if-nez v1, :cond_2

    .line 40
    :cond_1
    :goto_0
    return v0

    .line 33
    :cond_2
    if-eqz p3, :cond_3

    .line 34
    invoke-interface {p3, v1}, Lcn/nubia/music/utils/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    .line 36
    :cond_3
    const-string v2, "grant_count"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 37
    if-ltz v1, :cond_1

    .line 38
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/music/utils/PermissionRequestUtil;->requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcn/nubia/music/utils/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
