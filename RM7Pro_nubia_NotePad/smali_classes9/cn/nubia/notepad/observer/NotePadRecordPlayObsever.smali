.class public Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;
.super Ljava/util/Observable;
.source "NotePadRecordPlayObsever.java"


# static fields
.field private static mInstance:Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;
    .locals 2

    .prologue
    .line 11
    const-class v1, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->mInstance:Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    invoke-direct {v0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;-><init>()V

    sput-object v0, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->mInstance:Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    .line 15
    :cond_0
    sget-object v0, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->mInstance:Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->countObservers()I

    move-result v1

    if-nez v1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->setChanged()V

    .line 26
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
