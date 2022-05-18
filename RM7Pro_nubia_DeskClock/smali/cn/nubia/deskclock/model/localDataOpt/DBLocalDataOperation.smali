.class Lcn/nubia/deskclock/model/localDataOpt/DBLocalDataOperation;
.super Ljava/lang/Object;
.source "DBLocalDataOperation.java"

# interfaces
.implements Lcn/nubia/deskclock/model/localDataOpt/ILocalDataOperation;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 20
    return-void
.end method

.method public saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/Object;
    .param p2, "eLocalDataOptType"    # Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .prologue
    .line 10
    return-void
.end method
