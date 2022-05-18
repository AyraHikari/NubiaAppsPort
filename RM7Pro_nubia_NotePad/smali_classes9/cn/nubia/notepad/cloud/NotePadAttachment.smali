.class public Lcn/nubia/notepad/cloud/NotePadAttachment;
.super Ljava/lang/Object;
.source "NotePadAttachment.java"


# static fields
.field public static final KEY_ATTACHMENT_MEDIA:Ljava/lang/String; = "media"

.field public static final KEY_ATTACHMENT_TEXT:Ljava/lang/String; = "text"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mNoteId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "noteId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "resource"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mNoteId:I

    .line 26
    iput-object p2, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mContent:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v5, Lcn/nubia/notepad/utils/ContentsData;

    invoke-direct {v5, p1}, Lcn/nubia/notepad/utils/ContentsData;-><init>(Landroid/content/Context;)V

    .line 46
    .local v5, "mContentsData":Lcn/nubia/notepad/utils/ContentsData;
    iget-object v7, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mContent:Ljava/lang/String;

    .line 47
    invoke-virtual {v5, v7}, Lcn/nubia/notepad/utils/ContentsData;->getContentsData(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 48
    .local v0, "contentsDatas":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;

    .line 49
    .local v1, "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    const-string v8, "image"

    iget-object v9, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 50
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesImageDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 53
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v3    # "file":Ljava/io/File;
    :cond_1
    const-string v8, "record"

    iget-object v9, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 56
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesRecordDir:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;->content:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 59
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v1    # "data":Lcn/nubia/notepad/utils/ContentsData$CONTENTS_DATA;
    .end local v3    # "file":Ljava/io/File;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcn/nubia/notepad/utils/ContentsData;->mAppFilesUserDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "defaultXml":Ljava/lang/String;
    const-string v6, ""

    .line 67
    .local v6, "result":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mNoteId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/notepad/utils/FileHelper;->zipFiles(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mNoteId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/nubia/notepad/utils/FileHelper;->zipFiles(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    :cond_3
    return-object v6
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "media"

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    sget-object v1, Lcn/nubia/notepad/provider/NotePadTable$Notes;->CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachment;->mNoteId:I

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
