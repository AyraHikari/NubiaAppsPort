.class public Lcn/nubia/touping/Utils/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;
    }
.end annotation


# static fields
.field public static final KEY_GRANT_COUNT:Ljava/lang/String; = "grant_count"

.field private static final PROVIDER_ARG_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final PROVIDER_ARG_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PROVIDER_METHOD_NAME:Ljava/lang/String; = "requestPermission"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://cn.nubia.security.permission.requester"

.field public static final REQUEST_RESULT_FAILED:I = -0x1

.field public static final REQUEST_RESULT_FAILED_ADDFOR_DOT_SUPPORTFUNCTION:I = 0x2

.field public static final REQUEST_RESULT_SUCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionRequestUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static enforceArguments(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
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

    .line 71
    :cond_1
    return-void
.end method

.method private static realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 78
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "content://cn.nubia.security.permission.requester"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 79
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 80
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 81
    const-string v7, "PermissionRequestUtil"

    const-string v8, "Current system not support this operation."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-object v6

    .line 84
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "packagename"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p2, :cond_2

    array-length v7, p2

    if-nez v7, :cond_2

    .line 87
    const-string v7, "permissions"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    :cond_2
    :try_start_0
    const-string v7, "requestPermission"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    move-object v6, v4

    .line 99
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 95
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_4
    throw v6
.end method

.method public static requestPackagePermission(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "permissionRequestCallback"    # Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;

    .prologue
    const/4 v2, -0x1

    .line 26
    if-nez p1, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    invoke-static {p0, p1, p2}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 31
    .local v1, "result":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 32
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    .restart local v1    # "result":Landroid/os/Bundle;
    const-string v3, "grant_count"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-interface {p3, v1}, Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    .line 44
    :cond_1
    :goto_0
    return v2

    .line 37
    :cond_2
    if-eqz p3, :cond_3

    .line 38
    invoke-interface {p3, v1}, Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    .line 40
    :cond_3
    const-string v3, "grant_count"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "grantCount":I
    if-ltz v0, :cond_1

    .line 42
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p1, p2}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
