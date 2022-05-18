.class public Lcn/nubia/gallery3d/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    return v0
.end method

.method public update(DD)D
    .locals 1

    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    move-wide p1, p3

    :cond_0
    return-wide p1
.end method

.method public update(II)I
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    move p1, p2

    :cond_0
    return p1
.end method

.method public update(JJ)J
    .locals 1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    move-wide p1, p3

    :cond_0
    return-wide p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 49
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcn/nubia/gallery3d/util/UpdateHelper;->mUpdated:Z

    move-object p1, p2

    :cond_0
    return-object p1
.end method
