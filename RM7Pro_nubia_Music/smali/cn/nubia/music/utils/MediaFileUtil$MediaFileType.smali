.class public Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/utils/MediaFileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final mFileType:I

.field public final mMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;->mFileType:I

    .line 20
    iput-object p2, p0, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;->mMimeType:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getFileType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;->mFileType:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;->mMimeType:Ljava/lang/String;

    return-object v0
.end method
