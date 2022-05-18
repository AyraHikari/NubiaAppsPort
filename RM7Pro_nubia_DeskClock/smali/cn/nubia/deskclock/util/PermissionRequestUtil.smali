.class public Lcn/nubia/deskclock/util/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;
    }
.end annotation


# static fields
.field public static final KEY_GRANT_COUNT:Ljava/lang/String; = "grant_count"

.field public static final MOBILE_MODEL:Ljava/lang/String;

.field public static final MY_PERMISSIONS_REQUEST_EXTERNAL_STORAGE:I = 0x15

.field public static final MY_PERMISSIONS_REQUEST_POWER_OFF_ALARM:I = 0x14

.field public static final PERMISSION_POWER_OFF_ALARM:Ljava/lang/String; = "org.codeaurora.permission.POWER_OFF_ALARM"

.field private static final PROVIDER_ARG_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final PROVIDER_ARG_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final PROVIDER_METHOD_NAME:Ljava/lang/String; = "requestPermission"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://cn.nubia.security.permission.requester"

.field public static final REQUEST_RESULT_FAILED:I = -0x1

.field public static final REQUEST_RESULT_NOT_SUPPORT_METHOD:I = -0x2

.field public static final REQUEST_RESULT_SUCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PermissionRequestUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/util/PermissionRequestUtil;->MOBILE_MODEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enforceArguments(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
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

    .line 88
    :cond_1
    return-void
.end method

.method public static getPermissionShowInCtsDialog(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 167
    :cond_1
    const-string v0, "org.codeaurora.permission.POWER_OFF_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPermissions()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    .line 128
    .local v0, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "permissions":[Ljava/lang/String;
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string v1, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v1, v0, v3

    .line 131
    .restart local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 95
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "content://cn.nubia.security.permission.requester"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 96
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 97
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-nez v1, :cond_1

    .line 98
    const-string v7, "PermissionRequestUtil"

    const-string v8, "Current system not support this operation."

    invoke-static {v7, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-object v6

    .line 101
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "packagename"

    invoke-virtual {v0, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz p2, :cond_2

    array-length v7, p2

    if-nez v7, :cond_2

    .line 104
    const-string v7, "permissions"

    invoke-virtual {v0, v7, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    :cond_2
    :try_start_0
    const-string v7, "requestPermission"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 112
    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_3
    move-object v6, v4

    .line 116
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 115
    :cond_4
    throw v6
.end method

.method public static requestPackagePermission(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;)I

    move-result v0

    return v0
.end method

.method public static requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "permissionRequestCallback"    # Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;

    .prologue
    const/4 v3, -0x1

    .line 42
    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1, p2}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 47
    .local v2, "result":Landroid/os/Bundle;
    if-nez v2, :cond_2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "grant_count"

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-interface {p3, v0}, Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    .line 61
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return v3

    .line 54
    :cond_2
    if-eqz p3, :cond_3

    .line 55
    invoke-interface {p3, v2}, Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;->onRequestResult(Landroid/os/Bundle;)V

    .line 57
    :cond_3
    const-string v4, "grant_count"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "grantCount":I
    if-ltz v1, :cond_1

    .line 59
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestPackagePermissionWithResult(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->enforceArguments(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {p0, p1, p2}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->realRequestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 175
    new-array v0, v2, [Ljava/lang/String;

    .line 176
    .local v0, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->needCheckPowerOffAlarmPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "permissions":[Ljava/lang/String;
    const-string v1, "org.codeaurora.permission.POWER_OFF_ALARM"

    aput-object v1, v0, v2

    .line 180
    .restart local v0    # "permissions":[Ljava/lang/String;
    :cond_0
    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public static requestSdcardPermissions(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 185
    .local v0, "permissions":[Ljava/lang/String;
    const/16 v1, 0x15

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 186
    return-void
.end method

.method public static showWarningDialog(Ljava/lang/StringBuffer;Landroid/app/Activity;)V
    .locals 8
    .param p0, "permissionInCtsDialog"    # Ljava/lang/StringBuffer;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x0

    .line 135
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040034

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 137
    .local v1, "layout":Landroid/widget/RelativeLayout;
    const v4, 0x7f1200e1

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 138
    .local v3, "msg":Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v4, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v4, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    .line 141
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/deskclock/util/PermissionRequestUtil$2;

    invoke-direct {v6}, Lcn/nubia/deskclock/util/PermissionRequestUtil$2;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d0065

    .line 148
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/deskclock/util/PermissionRequestUtil$1;

    invoke-direct {v6, p1}, Lcn/nubia/deskclock/util/PermissionRequestUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 159
    .local v2, "mDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 160
    invoke-virtual {v2, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 161
    invoke-virtual {v2, v7}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 162
    return-void
.end method
