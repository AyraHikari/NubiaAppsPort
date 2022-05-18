.class public Lcom/huanju/ssp/base/hotfix/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ClassAccessor;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;,
        Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    }
.end annotation


# static fields
.field private static final LOAD_CLASS_FROM_PACKAGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ModuleManager"

.field private static final sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;-><init>(Lcom/huanju/ssp/base/hotfix/ModuleManager$1;)V

    sput-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mContext:Landroid/content/Context;

    .line 109
    if-eqz p1, :cond_1

    .line 110
    sget-object v1, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    .line 112
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p1, v2, v3, v4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$200(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    .line 114
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    .line 116
    :cond_0
    monitor-exit v1

    .line 118
    :cond_1
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialListener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mContext:Landroid/content/Context;

    .line 132
    if-eqz p1, :cond_1

    .line 133
    sget-object v1, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    .line 135
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, p2, p3}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$200(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;ZLcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;)V

    .line 137
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    .line 139
    :cond_0
    monitor-exit v1

    .line 141
    :cond_1
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$2600()Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    return-object v0
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1500(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)V

    .line 267
    return-void
.end method

.method public static setUseDefaultDexOptDir(Z)V
    .locals 1
    .param p0, "useDefault"    # Z

    .prologue
    .line 257
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {p0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1300(Z)V

    .line 258
    return-void
.end method

.method public static terminate()V
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1400(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;)V

    .line 263
    return-void
.end method


# virtual methods
.method public addModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;Z)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "triggerExisting"    # Z

    .prologue
    .line 228
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$800(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;Landroid/os/Handler;Z)V

    .line 229
    return-void
.end method

.method public getAllModules(Landroid/content/Context;I)Ljava/util/List;
    .locals 2
    .param p1, "defContext"    # Landroid/content/Context;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$500(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;ZLandroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModule(Ljava/lang/String;Landroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "defContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1, v1, v1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$400(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;ZZLandroid/content/Context;)Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleInfo;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModuleInterface(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p3, "staticMethod"    # Ljava/lang/String;
    .param p5, "paramObjs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 154
    .local v6, "iface":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Impl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager;->getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .end local v6    # "iface":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v6
.end method

.method public getModuleInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "staticMethod"    # Ljava/lang/String;
    .param p5, "paramObjs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$300(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    return v0
.end method

.method public provideModulePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "modulePackagePath"    # Ljava/lang/String;
    .param p4, "preloadInterface"    # Ljava/lang/String;
    .param p5, "deleteSource"    # Z

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    iget-object v1, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$600(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeModule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$700(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;)Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeModuleUpdatedListener(Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;

    .prologue
    .line 234
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$900(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleUpdateListener;)V

    .line 235
    return-void
.end method

.method public setExcludedClasses(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "classNames"    # [Ljava/lang/String;

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->mValid:Z

    if-eqz v0, :cond_0

    .line 248
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1, p2}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1200(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Ljava/lang/String;[Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setExpectedSignatures([Landroid/content/pm/Signature;)V
    .locals 1
    .param p1, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 242
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1100(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;[Landroid/content/pm/Signature;)V

    .line 243
    return-void
.end method

.method public setPackageProcessor(Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;

    .prologue
    .line 238
    sget-object v0, Lcom/huanju/ssp/base/hotfix/ModuleManager;->sImpl:Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;

    invoke-static {v0, p1}, Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;->access$1000(Lcom/huanju/ssp/base/hotfix/ModuleManager$ModuleManagerImpl;Lcom/huanju/ssp/base/hotfix/ModuleManager$PackageProcessor;)V

    .line 239
    return-void
.end method
