.class public Lcn/nubia/music/app/model/CompositeDir;
.super Ljava/lang/Object;
.source "CompositeDir.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/music/app/model/CompositeDir;",
        ">;"
    }
.end annotation


# instance fields
.field private mChildFileCount:I

.field private mChildList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/app/model/CompositeDir;",
            ">;"
        }
    .end annotation
.end field

.field private mDirFilter:Ljava/io/FileFilter;

.field private mIsSelected:Z

.field private mParent:Lcn/nubia/music/app/model/CompositeDir;

.field private mPath:Ljava/lang/String;

.field private mShowName:Ljava/lang/String;

.field private mShowTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mIsSelected:Z

    .line 24
    iput v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildFileCount:I

    .line 173
    new-instance v0, Lcn/nubia/music/app/model/CompositeDir$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/model/CompositeDir$1;-><init>(Lcn/nubia/music/app/model/CompositeDir;)V

    iput-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mDirFilter:Ljava/io/FileFilter;

    .line 27
    iput-object p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/nubia/music/app/model/CompositeDir;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mIsSelected:Z

    .line 24
    iput v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildFileCount:I

    .line 173
    new-instance v0, Lcn/nubia/music/app/model/CompositeDir$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/model/CompositeDir$1;-><init>(Lcn/nubia/music/app/model/CompositeDir;)V

    iput-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mDirFilter:Ljava/io/FileFilter;

    .line 32
    iput-object p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    .line 34
    return-void
.end method

.method private formatDisplayDate(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method


# virtual methods
.method public compare(Lcn/nubia/music/app/model/CompositeDir;Lcn/nubia/music/app/model/CompositeDir;)I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p1}, Lcn/nubia/music/app/model/CompositeDir;->getShowName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/nubia/music/app/model/CompositeDir;->getShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcn/nubia/music/app/model/CompositeDir;

    check-cast p2, Lcn/nubia/music/app/model/CompositeDir;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/app/model/CompositeDir;->compare(Lcn/nubia/music/app/model/CompositeDir;Lcn/nubia/music/app/model/CompositeDir;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getChildList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/app/model/CompositeDir;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParent()Lcn/nubia/music/app/model/CompositeDir;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectPath()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/music/app/model/CompositeDir;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-object v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/music/app/model/CompositeDir;->getChildList()Ljava/util/List;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/model/CompositeDir;

    .line 60
    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->getSelectPath()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getShowName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mShowTime:Ljava/lang/String;

    return-object v0
.end method

.method public isAllChildSelected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcn/nubia/music/app/model/CompositeDir;->getChildList()Ljava/util/List;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/model/CompositeDir;

    .line 117
    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 120
    goto :goto_0

    :cond_0
    move v1, v2

    .line 122
    :cond_1
    if-lez v1, :cond_2

    iget v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildFileCount:I

    if-ne v1, v0, :cond_2

    .line 123
    const/4 v2, 0x1

    .line 125
    :cond_2
    return v2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public isFileExist()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mIsSelected:Z

    return v0
.end method

.method public declared-synchronized listChild()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/app/model/CompositeDir;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/music/app/model/CompositeDir;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcn/nubia/music/app/model/CompositeDir;->mDirFilter:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    array-length v0, v1

    iput v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildFileCount:I

    .line 75
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildFileCount:I

    if-ge v0, v2, :cond_3

    .line 76
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v3, Lcn/nubia/music/app/model/CompositeDir;

    invoke-direct {v3, v2, p0}, Lcn/nubia/music/app/model/CompositeDir;-><init>(Ljava/lang/String;Lcn/nubia/music/app/model/CompositeDir;)V

    .line 78
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/nubia/music/app/model/CompositeDir;->setShowName(Ljava/lang/String;)V

    .line 79
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcn/nubia/music/app/model/CompositeDir;->formatDisplayDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/nubia/music/app/model/CompositeDir;->setShowTime(Ljava/lang/String;)V

    .line 80
    iget-boolean v2, p0, Lcn/nubia/music/app/model/CompositeDir;->mIsSelected:Z

    invoke-virtual {v3, v2}, Lcn/nubia/music/app/model/CompositeDir;->setSelected(Z)V

    .line 81
    iget-object v2, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 86
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/model/CompositeDir;

    .line 87
    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->isFileExist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 94
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public setParent(Lcn/nubia/music/app/model/CompositeDir;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    .line 144
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mIsSelected:Z

    .line 42
    return-void
.end method

.method public setShowName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mShowName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setShowTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/music/app/model/CompositeDir;->mShowTime:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public updateChildSelected(Z)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mChildList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/model/CompositeDir;

    .line 105
    invoke-virtual {v0, p1}, Lcn/nubia/music/app/model/CompositeDir;->setSelected(Z)V

    .line 106
    invoke-virtual {v0, p1}, Lcn/nubia/music/app/model/CompositeDir;->updateChildSelected(Z)V

    goto :goto_0

    .line 110
    :cond_0
    return-void
.end method

.method public updateSelected()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcn/nubia/music/app/model/CompositeDir;->isAllChildSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/app/model/CompositeDir;->setSelected(Z)V

    .line 47
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/music/app/model/CompositeDir;->mParent:Lcn/nubia/music/app/model/CompositeDir;

    invoke-virtual {v0}, Lcn/nubia/music/app/model/CompositeDir;->updateSelected()V

    .line 50
    :cond_0
    return-void
.end method
