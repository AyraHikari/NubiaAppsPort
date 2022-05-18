.class public Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:[Lcn/nubia/camera/af/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/nubia/camera/af/a;

    .line 29
    sget-object v1, Lcn/nubia/camera/af/a;->O:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->C:Lcn/nubia/camera/af/a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->a:[Lcn/nubia/camera/af/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 80
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, p0, v1}, Lcn/nubia/camera/aq/b;->a(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/camera/af/a;Z)Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/camera/af/a;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcn/nubia/camera/h;

    invoke-direct {v0}, Lcn/nubia/camera/h;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-static {}, Lcn/nubia/camera/af/a;->values()[Lcn/nubia/camera/af/a;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const/4 v7, 0x0

    .line 89
    invoke-virtual {v0, v7, v6}, Lcn/nubia/camera/h;->b(Lcn/nubia/camera/af/b;Lcn/nubia/camera/af/a;)Lcn/nubia/camera/ac/c;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 91
    invoke-virtual {v7}, Lcn/nubia/camera/ac/c;->a()Lcn/nubia/a/c;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 92
    invoke-static {}, Lcn/nubia/camera/CameraApplication;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/a/c;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 93
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    sget-object v0, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->a:[Lcn/nubia/camera/af/a;

    array-length v2, v0

    if-ge v4, v2, :cond_2

    .line 98
    aget-object v0, v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private b()V
    .locals 9

    .line 46
    sget-object v0, Lcn/nubia/camera/af/a;->b:Lcn/nubia/camera/af/a;

    const-string v1, "0"

    .line 48
    invoke-static {v0, v1}, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    sget-object v3, Lcn/nubia/camera/trackclinet/b;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 50
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 52
    invoke-virtual {v0}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v3, v4

    aget-object v7, v3, v4

    const-string v8, "null"

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v1, v6, v7}, Lcn/nubia/camera/ba/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 12

    .line 57
    invoke-static {}, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->a()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/af/a;

    .line 59
    new-instance v2, Lcn/nubia/camera/h;

    invoke-direct {v2}, Lcn/nubia/camera/h;-><init>()V

    .line 60
    invoke-virtual {v2, v1}, Lcn/nubia/camera/h;->a(Lcn/nubia/camera/af/a;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'s camera is not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirstDayBootReceiver"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/af/b;

    .line 67
    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 68
    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/nubia/camera/trackclinet/b;->a(Lcn/nubia/camera/af/a;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 71
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 72
    aget-object v7, v5, v6

    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcn/nubia/camera/trackclinet/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual {v1}, Lcn/nubia/camera/af/a;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcn/nubia/camera/af/b;->c()Ljava/lang/String;

    move-result-object v9

    aget-object v10, v5, v6

    const-string v11, "null"

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v7, v10}, Lcn/nubia/camera/ba/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->b()V

    .line 41
    invoke-direct {p0}, Lcn/nubia/camera/trackclinet/FirstDayBootReceiver;->c()V

    return-void
.end method
