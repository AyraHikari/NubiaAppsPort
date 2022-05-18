.class public Lcn/nubia/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/e/b$a;
    }
.end annotation


# instance fields
.field a:[Lcn/nubia/e/b$a;

.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcn/nubia/e/b;->d:Z

    const/4 v1, 0x2

    new-array v1, v1, [Lcn/nubia/e/b$a;

    .line 45
    new-instance v2, Lcn/nubia/e/b$a;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcn/nubia/e/b$a;-><init>(Lcn/nubia/e/b;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v0, Lcn/nubia/e/b$a;

    const-string v2, "network"

    invoke-direct {v0, p0, v2}, Lcn/nubia/e/b$a;-><init>(Lcn/nubia/e/b;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iput-object v1, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    const-string v0, "NubiaLocationManager"

    const-string v1, "Using Gaode lbs"

    .line 51
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Lcn/nubia/e/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/e/b;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcn/nubia/e/b;->d:Z

    return p0
.end method

.method private c()V
    .locals 10

    const-string v0, "provider does not exist "

    const-string v1, "fail to request location update, ignore"

    const-string v2, "NubiaLocationManager"

    .line 86
    iget-object v3, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcn/nubia/e/b;->b:Landroid/content/Context;

    const-string v4, "location"

    .line 88
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    .line 90
    :cond_0
    iget-object v4, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    if-eqz v4, :cond_1

    :try_start_0
    const-string v5, "network"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    .line 92
    iget-object v3, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    const/4 v9, 0x1

    aget-object v9, v3, v9

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 98
    invoke-static {v2, v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    iget-object v3, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    .line 109
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string v0, "startReceivingLocationUpdates"

    .line 113
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 119
    :goto_0
    iget-object v1, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    array-length v1, v1

    const-string v2, "NubiaLocationManager"

    if-ge v0, v1, :cond_1

    .line 121
    :try_start_0
    iget-object v1, p0, Lcn/nubia/e/b;->b:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcn/nubia/e/b;->c:Landroid/location/LocationManager;

    iget-object v3, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "fail to remove location listners, ignore"

    .line 125
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "stopReceivingLocationUpdates"

    .line 128
    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcn/nubia/e/b;->b:Landroid/content/Context;

    .line 58
    iget-object v1, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    .line 59
    aput-object v0, v1, v2

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcn/nubia/e/b;->d:Z

    if-eq v0, p1, :cond_1

    .line 76
    iput-boolean p1, p0, Lcn/nubia/e/b;->d:Z

    if-eqz p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcn/nubia/e/b;->c()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0}, Lcn/nubia/e/b;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 4

    .line 63
    iget-boolean v0, p0, Lcn/nubia/e/b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v2, p0, Lcn/nubia/e/b;->a:[Lcn/nubia/e/b$a;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 67
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcn/nubia/e/b$a;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "NubiaLocationManager"

    const-string v2, "No location received yet."

    .line 70
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
