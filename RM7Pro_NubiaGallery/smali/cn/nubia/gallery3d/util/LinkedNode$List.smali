.class public Lcn/nubia/gallery3d/util/LinkedNode$List;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/util/LinkedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/nubia/gallery3d/util/LinkedNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcn/nubia/gallery3d/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcn/nubia/gallery3d/util/LinkedNode;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/LinkedNode;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public getFirst()Lcn/nubia/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    :goto_0
    return-object v0
.end method

.method public getLast()Lcn/nubia/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    :goto_0
    return-object v0
.end method

.method public insertLast(Lcn/nubia/gallery3d/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v0, v0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/util/LinkedNode;->insert(Lcn/nubia/gallery3d/util/LinkedNode;)V

    return-void
.end method

.method public nextOf(Lcn/nubia/gallery3d/util/LinkedNode;)Lcn/nubia/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    :goto_0
    return-object p1
.end method

.method public previousOf(Lcn/nubia/gallery3d/util/LinkedNode;)Lcn/nubia/gallery3d/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 65
    iget-object v0, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    iget-object v1, p0, Lcn/nubia/gallery3d/util/LinkedNode$List;->mHead:Lcn/nubia/gallery3d/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    :goto_0
    return-object p1
.end method
