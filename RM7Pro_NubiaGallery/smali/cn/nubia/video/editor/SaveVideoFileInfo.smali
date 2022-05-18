.class public Lcn/nubia/video/editor/SaveVideoFileInfo;
.super Ljava/lang/Object;
.source "SaveVideoFileInfo.java"


# instance fields
.field public mDirectory:Ljava/io/File;

.field public mFile:Ljava/io/File;

.field public mFileName:Ljava/lang/String;

.field public mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    .line 23
    iput-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    return-void
.end method
