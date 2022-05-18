.class public Lcn/nubia/improve/rename/MediaItemRename;
.super Ljava/lang/Object;
.source "MediaItemRename.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;,
        Lcn/nubia/improve/rename/MediaItemRename$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaItemRename"


# instance fields
.field private MAX_LENGTH:I

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mIsCloudImage:Z

.field private mItem:Lcn/nubia/gallery3d/data/MediaItem;

.field private mListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    const/16 v1, 0x32

    .line 27
    iput v1, p0, Lcn/nubia/improve/rename/MediaItemRename;->MAX_LENGTH:I

    .line 28
    iput-object v0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mFileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mIsCloudImage:Z

    .line 38
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ShowDiag(Landroid/content/Context;)V
    .locals 7

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0070

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090096

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 61
    iget-object v3, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 62
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 61
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v3, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;

    invoke-direct {v3, p0, v2}, Lcn/nubia/improve/rename/MediaItemRename$MyTextWatcher;-><init>(Lcn/nubia/improve/rename/MediaItemRename;Lcn/nubia/improve/rename/MediaItemRename$1;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcn/nubia/improve/rename/MediaItemRename$2;

    invoke-direct {v3, p0, p1}, Lcn/nubia/improve/rename/MediaItemRename$2;-><init>(Lcn/nubia/improve/rename/MediaItemRename;Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcn/nubia/improve/rename/MediaItemRename$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/rename/MediaItemRename$1;-><init>(Lcn/nubia/improve/rename/MediaItemRename;)V

    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/rename/MediaItemRename;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/improve/rename/MediaItemRename;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/improve/rename/MediaItemRename;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mIsCloudImage:Z

    return p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/improve/rename/MediaItemRename$Listener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/rename/MediaItemRename;)Lcn/nubia/gallery3d/data/MediaItem;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/improve/rename/MediaItemRename;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/rename/MediaItemRename;->checkFileName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/rename/MediaItemRename;)I
    .locals 0

    .line 24
    iget p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->MAX_LENGTH:I

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/rename/MediaItemRename;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkFileName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p2, 0x7f1000c3

    .line 118
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lcn/nubia/improve/rename/MediaItemRename;->MAX_LENGTH:I

    const v3, 0x7f1000c2

    const v4, 0x7f1000c0

    if-le v0, v2, :cond_2

    .line 124
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename;->mFileName:Ljava/lang/String;

    .line 125
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->inValidFilename(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    const p2, 0x7f1000ad

    .line 130
    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 131
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 132
    iget-object p2, p0, Lcn/nubia/improve/rename/MediaItemRename;->mFileName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/nubia/improve/rename/MediaItemRename;->fileIsExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 134
    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 136
    :cond_2
    invoke-direct {p0, p2}, Lcn/nubia/improve/rename/MediaItemRename;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 139
    :cond_3
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->inValidFilename(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 141
    invoke-static {p1, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private fileIsExists(Ljava/lang/String;)Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public setListener(Lcn/nubia/improve/rename/MediaItemRename$Listener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mListener:Lcn/nubia/improve/rename/MediaItemRename$Listener;

    return-void
.end method

.method public setRename(Lcn/nubia/gallery3d/data/MediaItem;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mIsCloudImage:Z

    .line 48
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/nubia/improve/rename/MediaItemRename;->ShowDiag(Landroid/content/Context;)V

    return-void
.end method

.method public setRename(Lcn/nubia/gallery3d/data/MediaItem;Z)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mItem:Lcn/nubia/gallery3d/data/MediaItem;

    .line 53
    iput-boolean p2, p0, Lcn/nubia/improve/rename/MediaItemRename;->mIsCloudImage:Z

    .line 54
    iget-object p1, p0, Lcn/nubia/improve/rename/MediaItemRename;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcn/nubia/improve/rename/MediaItemRename;->ShowDiag(Landroid/content/Context;)V

    return-void
.end method
