.class public Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;
.super Ljava/lang/Object;
.source "MusicScanFoundFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/MusicScanFoundFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioFolder"
.end annotation


# instance fields
.field public mFolderDescription:Ljava/lang/String;

.field public mFolderIsChecked:J

.field public mFolderIsSelected:J

.field public mFolderIsWhtList:J

.field public mFolderName:Ljava/lang/String;

.field public mFolderPath:Ljava/lang/String;

.field public mFolderSongCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderName:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderDescription:Ljava/lang/String;

    .line 87
    iput-wide v2, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsWhtList:J

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderSongCount:I

    .line 89
    iput-wide v2, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsChecked:J

    .line 90
    iput-wide v2, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderIsSelected:J

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderPath:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;->mFolderName:Ljava/lang/String;

    .line 82
    return-void
.end method
