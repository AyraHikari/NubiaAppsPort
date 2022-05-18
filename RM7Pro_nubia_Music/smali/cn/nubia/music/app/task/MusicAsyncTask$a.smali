.class Lcn/nubia/music/app/task/MusicAsyncTask$a;
.super Ljava/lang/Object;
.source "MusicAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/task/MusicAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcn/nubia/music/app/task/MusicAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/music/app/task/MusicAsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/music/app/task/MusicAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/app/task/MusicAsyncTask",
            "<***>;[TData;)V"
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->a:Lcn/nubia/music/app/task/MusicAsyncTask;

    .line 210
    iput-object p2, p0, Lcn/nubia/music/app/task/MusicAsyncTask$a;->b:[Ljava/lang/Object;

    .line 211
    return-void
.end method
