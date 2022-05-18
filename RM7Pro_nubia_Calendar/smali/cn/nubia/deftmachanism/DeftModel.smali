.class public Lcn/nubia/deftmachanism/DeftModel;
.super Landroid/database/Observable;
.source "DeftModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcn/nubia/deftmachanism/IDeftObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChanged(I)V
    .locals 3
    .param p1, "changeFlag"    # I

    .prologue
    .line 17
    iget-object v2, p0, Lcn/nubia/deftmachanism/DeftModel;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftModel;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 19
    iget-object v1, p0, Lcn/nubia/deftmachanism/DeftModel;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/deftmachanism/IDeftObserver;

    invoke-interface {v1, p1}, Lcn/nubia/deftmachanism/IDeftObserver;->onChanged(I)V

    .line 18
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v2

    .line 22
    return-void

    .line 21
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
