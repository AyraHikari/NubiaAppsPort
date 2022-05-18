.class public final Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "AsyncDifferConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;
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


# static fields
.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/DiffUtil$ItemCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    .line 156
    sput-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 159
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;

    invoke-direct {v0, v1}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder$MainThreadExecutor;-><init>(Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/util/DiffUtil$ItemCallback;)V
    .locals 0
    .param p1    # Landroid/support/v7/util/DiffUtil$ItemCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/DiffUtil$ItemCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    .local p1, "diffCallback":Landroid/support/v7/util/DiffUtil$ItemCallback;, "Landroid/support/v7/util/DiffUtil$ItemCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    .line 86
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_2

    .line 141
    sget-object v1, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 145
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    sget-object v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 148
    :cond_2
    new-instance v0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mDiffCallback:Landroid/support/v7/util/DiffUtil$ItemCallback;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/support/v7/util/DiffUtil$ItemCallback;Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$1;)V

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBackgroundThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 119
    return-object p0
.end method

.method public setMainThreadExecutor(Ljava/util/concurrent/Executor;)Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;, "Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder<TT;>;"
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 103
    return-object p0
.end method
