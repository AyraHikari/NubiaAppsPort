.class public Lcn/nubia/videogenerator/local/VideoEditorSource;
.super Lcn/nubia/videogenerator/local/VideoSourceBase;
.source "VideoEditorSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoEditorSource"


# instance fields
.field private mReadTask:Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/VideoSourceBase;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mPath:Ljava/lang/String;

    .line 19
    new-instance p1, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;

    invoke-direct {p1, p0}, Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;-><init>(Lcn/nubia/videogenerator/local/VideoEditorSource;)V

    iput-object p1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mReadTask:Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mReadTask:Lcn/nubia/videogenerator/local/VideoEditorSource$ReadTask;

    const-string v2, "VideoLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/VideoEditorSource;->mIsReading:Z

    return-void
.end method
