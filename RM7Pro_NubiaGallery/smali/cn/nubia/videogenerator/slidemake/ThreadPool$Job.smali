.class public interface abstract Lcn/nubia/videogenerator/slidemake/ThreadPool$Job;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/slidemake/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Job"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract run(Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/videogenerator/slidemake/ThreadPool$JobContext;",
            ")TT;"
        }
    .end annotation
.end method
