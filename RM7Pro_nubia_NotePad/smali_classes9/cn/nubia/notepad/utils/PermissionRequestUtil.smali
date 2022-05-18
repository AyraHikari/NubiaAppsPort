.class public Lcn/nubia/notepad/utils/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# static fields
.field public static final KEY_GRANT_COUNT:Ljava/lang/String; = "grant_count"

.field private static final PROVIDER_ARG_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final PROVIDER_ARG_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PROVIDER_METHOD_NAME:Ljava/lang/String; = "requestPermission"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://cn.nubia.security.permission.requester"

.field private static final TAG:Ljava/lang/String; = "PermissionRequestUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceArguments(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
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

    .line 45
    :cond_1
    return-void
.end method

.method private static realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x18

    .line 50
    const/4 v4, 0x0

    .line 51
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 52
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "content://cn.nubia.security.permission.requester"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 53
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 54
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 55
    const-string v7, "PermissionRequestUtil"

    const-string v8, "Current system not support this operation."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-object v6

    .line 58
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "packagename"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz p2, :cond_2

    array-length v7, p2

    if-nez v7, :cond_2

    .line 61
    const-string v7, "permissions"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    :cond_2
    :try_start_0
    const-string v7, "requestPermission"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 69
    if-eqz v1, :cond_3

    .line 70
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_3

    .line 71
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    move-object v6, v4

    .line 75
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    if-eqz v1, :cond_0

    .line 70
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    .line 70
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v9, :cond_4

    .line 71
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 74
    :cond_4
    throw v6
.end method

.method public static requestPackagePermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "packagename":Ljava/lang/String;
    invoke-static {p0, v1}, Lcn/nubia/notepad/utils/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, v1, p1}, Lcn/nubia/notepad/utils/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 28
    .local v2, "result":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 29
    const-string v3, "grant_count"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, "grantCount":I
    const-string v3, "Notepad"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permission grant_count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-ltz v0, :cond_0

    .line 32
    const/4 v3, 0x1

    .line 37
    .end local v0    # "grantCount":I
    :goto_0
    return v3

    .line 34
    .restart local v0    # "grantCount":I
    :cond_0
    const-string v3, "Notepad"

    const-string v4, "fail_reason"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .end local v0    # "grantCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
