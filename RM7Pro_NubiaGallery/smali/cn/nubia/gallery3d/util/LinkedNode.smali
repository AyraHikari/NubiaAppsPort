.class public Lcn/nubia/gallery3d/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/LinkedNode$List;
    }
.end annotation


# instance fields
.field public mNext:Lcn/nubia/gallery3d/util/LinkedNode;

.field public mPrev:Lcn/nubia/gallery3d/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object p0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    return-void
.end method

.method public static newList()Lcn/nubia/gallery3d/util/LinkedNode$List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/nubia/gallery3d/util/LinkedNode;",
            ">()",
            "Lcn/nubia/gallery3d/util/LinkedNode$List<",
            "TT;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcn/nubia/gallery3d/util/LinkedNode$List;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/LinkedNode$List;-><init>()V

    return-object v0
.end method


# virtual methods
.method public insert(Lcn/nubia/gallery3d/util/LinkedNode;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object v0, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    .line 32
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object p1, v0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    .line 33
    iput-object p0, p1, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    .line 34
    iput-object p1, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    return-void
.end method

.method public remove()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    if-eq v0, p0, :cond_0

    .line 39
    iget-object v1, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object v0, v1, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object v1, v0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mNext:Lcn/nubia/gallery3d/util/LinkedNode;

    iput-object v0, p0, Lcn/nubia/gallery3d/util/LinkedNode;->mPrev:Lcn/nubia/gallery3d/util/LinkedNode;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
