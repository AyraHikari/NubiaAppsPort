.class public abstract Lcn/nubia/music/database/AccessRequest;
.super Ljava/lang/Object;
.source "AccessRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/database/AccessRequest$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile mIsCancel:Z

.field private mListener:Lcn/nubia/music/database/AccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/database/AccessListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResult:Lcn/nubia/music/database/AccessRequest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/database/AccessRequest$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRunnableThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcn/nubia/music/database/AccessListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/database/AccessListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/music/database/AccessRequest;->mListener:Lcn/nubia/music/database/AccessListener;

    .line 16
    return-void
.end method


# virtual methods
.method protected abstract accessInBackground()V
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mRunnableThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mRunnableThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 22
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/database/AccessRequest;->mIsCancel:Z

    .line 23
    return-void
.end method

.method protected final deliverData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-boolean v0, p0, Lcn/nubia/music/database/AccessRequest;->mIsCancel:Z

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/music/database/AccessRequest$a;

    invoke-direct {v0, p1}, Lcn/nubia/music/database/AccessRequest$a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mResult:Lcn/nubia/music/database/AccessRequest$a;

    .line 36
    invoke-static {}, Lcn/nubia/music/database/DAOAccessManager;->getInstance()Lcn/nubia/music/database/DAOAccessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/music/database/DAOAccessManager;->succeed(Lcn/nubia/music/database/AccessRequest;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected final deliverError(Lcn/nubia/music/database/AccessError;)V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcn/nubia/music/database/AccessRequest;->mIsCancel:Z

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcn/nubia/music/database/AccessRequest$a;

    invoke-direct {v0, p1}, Lcn/nubia/music/database/AccessRequest$a;-><init>(Lcn/nubia/music/database/AccessError;)V

    iput-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mResult:Lcn/nubia/music/database/AccessRequest$a;

    .line 30
    invoke-static {}, Lcn/nubia/music/database/DAOAccessManager;->getInstance()Lcn/nubia/music/database/DAOAccessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/music/database/DAOAccessManager;->fail(Lcn/nubia/music/database/AccessRequest;)V

    .line 32
    :cond_0
    return-void
.end method

.method getListener()Lcn/nubia/music/database/AccessListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/music/database/AccessListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mListener:Lcn/nubia/music/database/AccessListener;

    return-object v0
.end method

.method getResult()Lcn/nubia/music/database/AccessRequest$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/music/database/AccessRequest$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mResult:Lcn/nubia/music/database/AccessRequest$a;

    return-object v0
.end method

.method getThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/database/AccessRequest;->mRunnableThread:Ljava/lang/Thread;

    return-object v0
.end method

.method isCanceled()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcn/nubia/music/database/AccessRequest;->mIsCancel:Z

    return v0
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/music/database/AccessRequest;->mRunnableThread:Ljava/lang/Thread;

    .line 54
    return-void
.end method
