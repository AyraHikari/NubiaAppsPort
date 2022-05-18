.class public Lcn/nubia/music/app/model/FileInfo;
.super Ljava/io/File;
.source "FileInfo.java"


# instance fields
.field private mDisPlayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/music/app/model/FileInfo;->mDisPlayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-super {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/app/model/FileInfo;->mDisPlayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDisPlayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcn/nubia/music/app/model/FileInfo;->mDisPlayName:Ljava/lang/String;

    .line 21
    return-void
.end method
