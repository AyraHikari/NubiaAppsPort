.class public Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;
.super Ljava/lang/Object;
.source "ShareModeSelectionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareModeSelectionManager"


# instance fields
.field private mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getSelected(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->getSelectedCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getSelectedCount()I
    .locals 3

    .line 31
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 32
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setClickedSet(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toggle(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/ShareModeSelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
