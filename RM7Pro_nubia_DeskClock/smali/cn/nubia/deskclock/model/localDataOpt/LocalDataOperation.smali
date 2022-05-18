.class public Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
.super Ljava/lang/Object;
.source "LocalDataOperation.java"

# interfaces
.implements Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;


# instance fields
.field private mDBLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

.field private mFileLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

.field private mSharedPrefLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/FileLocalDataOperation;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/localDataOpt/FileLocalDataOperation;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mFileLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    .line 8
    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/DBLocalDataOperation;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/localDataOpt/DBLocalDataOperation;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mDBLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    .line 9
    new-instance v0, Lcn/nubia/deskclock/model/localDataOpt/SharedPrefLocalDataOperation;

    invoke-direct {v0}, Lcn/nubia/deskclock/model/localDataOpt/SharedPrefLocalDataOperation;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mSharedPrefLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    return-void
.end method


# virtual methods
.method public getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v1, :cond_2

    .line 32
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mFileLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v1, :cond_3

    .line 35
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mDBLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_3
    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mSharedPrefLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_2

    .line 49
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mFileLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    .line 51
    :cond_2
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_3

    .line 52
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mDBLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    .line 54
    :cond_3
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mSharedPrefLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    goto :goto_0
.end method

.method public saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 1
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 13
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_2

    .line 17
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mFileLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->DB:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_3

    .line 19
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mDBLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    goto :goto_0

    .line 20
    :cond_3
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    if-ne p2, v0, :cond_0

    .line 21
    iget-object v0, p0, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->mSharedPrefLocalDataOperation:Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;

    invoke-interface {v0, p1, p2}, Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;->saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    goto :goto_0
.end method
