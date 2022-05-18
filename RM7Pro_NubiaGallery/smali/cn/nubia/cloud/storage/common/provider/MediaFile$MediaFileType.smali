.class public Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/storage/common/provider/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;->fileType:I

    .line 126
    iput-object p2, p0, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-void
.end method
