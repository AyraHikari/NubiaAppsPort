.class public abstract Lcn/nubia/music/online/api/NubiaRadioManager;
.super Ljava/lang/Object;
.source "NubiaRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/api/NubiaRadioManager$INubiaRadioListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/music/online/api/NubiaRadioManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    const-class v1, Lcn/nubia/music/online/api/NubiaRadioManager;

    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcn/nubia/music/online/api/NubiaManagerFactory;->createManager(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcn/nubia/music/online/api/NubiaRadioManager;

    if-eqz v2, :cond_0

    .line 20
    check-cast v0, Lcn/nubia/music/online/api/NubiaRadioManager;

    monitor-exit v1

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "create NubiaRadioManager failed"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract clean(Lcn/nubia/music/online/api/NubiaRadioManager$INubiaRadioListener;)V
.end method

.method public abstract getRadioAsync(Lcn/nubia/music/online/data/RadioEntry;IILcn/nubia/music/online/api/NubiaRadioManager$INubiaRadioListener;)Lcn/nubia/music/online/api/Task;
.end method

.method public abstract getRadioTypeAsync(Lcn/nubia/music/online/api/NubiaRadioManager$INubiaRadioListener;)Lcn/nubia/music/online/api/Task;
.end method
