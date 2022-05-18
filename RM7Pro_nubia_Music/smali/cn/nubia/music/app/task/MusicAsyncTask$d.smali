.class abstract Lcn/nubia/music/app/task/MusicAsyncTask$d;
.super Ljava/lang/Object;
.source "MusicAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/task/MusicAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask$1;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcn/nubia/music/app/task/MusicAsyncTask$d;-><init>()V

    return-void
.end method
