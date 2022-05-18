.class public Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;
.super Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;
.source "RequestPermissionsActivity.java"


# static fields
.field private static final REQUIRED_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)Z
    .locals 2

    .line 38
    sget-object v0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    const-class v1, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;

    invoke-static {p0, v0, v1}, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getDesiredPermissions()[Ljava/lang/String;
    .locals 2

    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 27
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequiredPermissions()[Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/gallery3d/permission/RequestPermissionsActivity;->REQUIRED_PERMISSIONS:[Ljava/lang/String;

    return-object v0
.end method
