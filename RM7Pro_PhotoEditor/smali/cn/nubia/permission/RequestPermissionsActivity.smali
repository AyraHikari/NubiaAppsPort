.class public Lcn/nubia/permission/RequestPermissionsActivity;
.super Lcn/nubia/permission/RequestPermissionsActivityBase;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/permission/RequestPermissionsActivityBase;-><init>()V

    return-void
.end method

.method public static h(Landroid/app/Activity;)Z
    .locals 2

    sget-object v0, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    const-class v1, Lcn/nubia/permission/RequestPermissionsActivity;

    invoke-static {p0, v0, v1}, Lcn/nubia/permission/RequestPermissionsActivityBase;->g(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method protected b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    return-object v0
.end method
