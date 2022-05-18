.class public Lcn/nubia/touping/Utils/PermissionListUtils;
.super Ljava/lang/Object;
.source "PermissionListUtils.java"


# static fields
.field private static final allPermissionList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/touping/Utils/PermissionListUtils;->allPermissionList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPermissionList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/nubia/touping/Utils/PermissionListUtils;->allPermissionList:[Ljava/lang/String;

    return-object v0
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    new-instance v0, Lcn/nubia/touping/Utils/PermissionListUtils$1;

    invoke-direct {v0, p0}, Lcn/nubia/touping/Utils/PermissionListUtils$1;-><init>(Landroid/app/Activity;)V

    .line 62
    .local v0, "callback":Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/nubia/touping/Utils/PermissionListUtils;->allPermissionList:[Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcn/nubia/touping/Utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/touping/Utils/PermissionRequestUtil$PermissionRequestCallback;)I

    .line 63
    return-void
.end method
