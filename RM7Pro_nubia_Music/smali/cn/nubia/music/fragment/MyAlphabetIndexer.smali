.class public Lcn/nubia/music/fragment/MyAlphabetIndexer;
.super Ljava/lang/Object;
.source "MyAlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

.field public mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    .line 21
    iput-object p1, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mFragmentType:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    .line 22
    invoke-virtual {p0, p2}, Lcn/nubia/music/fragment/MyAlphabetIndexer;->changeCursor(Ljava/util/List;)V

    .line 23
    return-void
.end method


# virtual methods
.method public changeCursor(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    :cond_1
    if-eqz p1, :cond_4

    .line 34
    const/4 v1, 0x0

    .line 35
    const/16 v0, 0x20

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 37
    iget-char v0, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    .line 38
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_2

    .line 39
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 41
    :cond_2
    if-eq v1, v0, :cond_3

    .line 42
    iget-object v1, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v2, 0x1

    :goto_1
    move v2, v1

    move v1, v0

    .line 49
    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    .line 52
    :cond_4
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 63
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->positions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    if-ne v0, p1, :cond_0

    .line 70
    :goto_1
    return v1

    .line 66
    :cond_0
    if-lt v0, p1, :cond_1

    .line 67
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/music/fragment/MyAlphabetIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
