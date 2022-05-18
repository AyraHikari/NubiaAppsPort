.class public Lcn/nubia/gallery3d/permission/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/permission/PermissionRequestUtil$PermissionRequestCallback;
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceArguments(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad args, please check context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", packagename : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://cn.nubia.security.permission.requester"

    .line 74
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "PermissionRequestUtil"

    const-string p1, "Current system not support this operation."

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 80
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "packagename"

    .line 81
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 82
    array-length p1, p2

    if-eqz p1, :cond_1

    const-string p1, "permissions"

    .line 83
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string p1, "requestPermission"

    .line 86
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 92
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    return-object v0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 94
    :cond_4
    throw p1
.end method

.method public static requestPackagePermission(Landroid/content/Context;)I
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, p2, v0}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/gallery3d/permission/PermissionRequestUtil$PermissionRequestCallback;)I

    move-result p0

    return p0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/gallery3d/permission/PermissionRequestUtil$PermissionRequestCallback;)I
    .locals 0

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 28
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_1

    return p1

    :cond_1
    if-eqz p3, :cond_2

    .line 34
    invoke-interface {p3, p0}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    :cond_2
    const-string p2, "grant_count"

    .line 36
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return p1
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/permission/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
