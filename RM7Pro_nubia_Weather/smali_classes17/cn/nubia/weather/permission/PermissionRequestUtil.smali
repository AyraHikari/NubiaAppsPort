.class public Lcn/nubia/weather/permission/PermissionRequestUtil;
.super Ljava/lang/Object;
.source "PermissionRequestUtil.java"


# static fields
.field public static PERMISSION:[Ljava/lang/String; = null

.field public static final REQUSET_PERMISSOM_ALL:I = 0xc

.field private static final TAG:Ljava/lang/String; = "PermissionRequestUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/weather/permission/PermissionRequestUtil;->PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermissions(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .local v3, "sdk_int":I
    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    .line 28
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v6

    .line 31
    :cond_1
    const/4 v0, 0x1

    .line 32
    .local v0, "checkPermissionsResult":Z
    const/16 v4, 0x1c

    if-le v3, v4, :cond_2

    .line 33
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v7, v4, v6

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v7, v4, v5

    sput-object v4, Lcn/nubia/weather/permission/PermissionRequestUtil;->PERMISSION:[Ljava/lang/String;

    .line 38
    :cond_2
    sget-object v8, Lcn/nubia/weather/permission/PermissionRequestUtil;->PERMISSION:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v1, v8, v7

    .line 39
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "result":I
    const-string v4, "PermissionRequestUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " checkPermissions permission :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-nez v2, :cond_3

    move v4, v5

    :goto_2
    and-int/2addr v0, v4

    .line 38
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_3
    move v4, v6

    .line 42
    goto :goto_2

    .line 44
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_4
    if-ne v0, v5, :cond_0

    move v6, v0

    .line 45
    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    :cond_5
    move v6, v5

    .line 49
    goto :goto_0
.end method

.method public static checkPermissionsInBackground(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 54
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .local v3, "sdk_int":I
    const/16 v4, 0x17

    if-lt v3, v4, :cond_5

    .line 56
    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v6

    .line 59
    :cond_1
    const/4 v0, 0x1

    .line 60
    .local v0, "checkPermissionsResult":Z
    const/16 v4, 0x1c

    if-le v3, v4, :cond_2

    .line 61
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v7, v4, v6

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v7, v4, v5

    const/4 v7, 0x2

    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v8, v4, v7

    sput-object v4, Lcn/nubia/weather/permission/PermissionRequestUtil;->PERMISSION:[Ljava/lang/String;

    .line 66
    :cond_2
    sget-object v8, Lcn/nubia/weather/permission/PermissionRequestUtil;->PERMISSION:[Ljava/lang/String;

    array-length v9, v8

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v1, v8, v7

    .line 67
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 69
    .local v2, "result":I
    const-string v4, "PermissionRequestUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " checkPermissions permission :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-nez v2, :cond_3

    move v4, v5

    :goto_2
    and-int/2addr v0, v4

    .line 66
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_1

    :cond_3
    move v4, v6

    .line 70
    goto :goto_2

    .line 72
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_4
    if-ne v0, v5, :cond_0

    move v6, v0

    .line 73
    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    :cond_5
    move v6, v5

    .line 77
    goto :goto_0
.end method
