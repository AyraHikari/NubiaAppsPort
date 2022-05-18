.class public interface abstract Lcn/nubia/gallery3d/util/AlbumPreference;
.super Ljava/lang/Object;
.source "AlbumPreference.java"


# virtual methods
.method public abstract get()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsString()Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;)Z
.end method

.method public abstract put(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract remove(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
