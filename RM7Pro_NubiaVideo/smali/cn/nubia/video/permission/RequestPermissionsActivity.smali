.class public Lcn/nubia/video/permission/RequestPermissionsActivity;
.super Lcn/nubia/video/permission/d;
.source "SourceFile"


# static fields
.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/permission/RequestPermissionsActivity;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/permission/d;-><init>()V

    return-void
.end method

.method public static h(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/permission/RequestPermissionsActivity;->c:[Ljava/lang/String;

    const-class v1, Lcn/nubia/video/permission/RequestPermissionsActivity;

    invoke-static {p0, v0, v1}, Lcn/nubia/video/permission/d;->g(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 3

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/permission/RequestPermissionsActivity;->c:[Ljava/lang/String;

    return-object v0
.end method
