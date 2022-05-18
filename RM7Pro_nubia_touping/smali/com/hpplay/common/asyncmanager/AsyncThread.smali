.class public Lcom/hpplay/common/asyncmanager/AsyncThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static volatile mThreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 37
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 27
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    .line 22
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 48
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 32
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 33
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 54
    sget v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/hpplay/common/asyncmanager/AsyncThread;->mThreadCount:I

    .line 55
    return-void
.end method
