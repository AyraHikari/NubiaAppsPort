.class public Lcn/nubia/deftmachanism/DeftContextRegister;
.super Ljava/lang/Object;
.source "DeftContextRegister.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftRegister;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeftContextRegister"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mRegisterMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mRegisterMap:Ljava/util/WeakHashMap;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public register(Landroid/content/Context;)I
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v1, Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;-><init>(Lcn/nubia/deftmachanism/DeftContextRegister;Lcn/nubia/deftmachanism/DeftContextRegister$1;)V

    .line 23
    .local v1, "regInfo":Lcn/nubia/deftmachanism/DeftContextRegister$RegisterInfo;
    iget-object v3, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 24
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mRegisterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v3

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "clientId":I
    return v0

    .line 25
    .end local v0    # "clientId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcn/nubia/deftmachanism/DeftContextRegister;->mRegisterMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
