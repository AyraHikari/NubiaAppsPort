.class public Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;
.super Ljava/lang/Object;
.source "DisplayOptionsCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumDetailCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200b9

    .line 45
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 46
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 45
    return-object v0
.end method

.method public static getAlbumListCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200ba

    .line 34
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 35
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 34
    return-object v0
.end method

.method public static getArtistDetailAvatarOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200bc

    .line 24
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 25
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 24
    return-object v0
.end method

.method public static getArtistListAvatarOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200bd

    .line 13
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 14
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static getDefault()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200ba

    .line 116
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 117
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static getDefaultAlbumForChannel()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200e0

    const/16 v1, 0x96

    .line 126
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->displayWidth(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->displayHeight(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 129
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 126
    return-object v0
.end method

.method public static getDefaultAlbumForRemote()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f02008e

    const/16 v1, 0x96

    .line 137
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    .line 138
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->displayWidth(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->displayHeight(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 140
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public static getMinibarAlbumCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f0200bb

    .line 57
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method public static getPlaybackAlbumCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 3

    .prologue
    const v2, 0x7f020096

    .line 67
    new-instance v0, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 68
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public static getPlaylistDetailCoverOptions(J)Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 4

    .prologue
    .line 88
    invoke-static {p0, p1}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->selectDefaultPlaylistCover(J)I

    move-result v0

    .line 89
    new-instance v1, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 90
    invoke-virtual {v1, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {v1, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public static getPlaylistItemCoverOptions(J)Lcn/nubia/music/utils/imageloader/DisplayOptions;
    .locals 4

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->selectDefaultPlaylistCover(J)I

    move-result v0

    .line 78
    new-instance v1, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    invoke-direct {v1}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-virtual {v1, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->configBitmap(Landroid/graphics/Bitmap$Config;)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v1, v2}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->resizeToCircle(Z)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnFail(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageForEmptyUri(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->showImageOnLoading(I)Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/imageloader/DisplayOptions$Builder;->build()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method private static selectDefaultPlaylistCover(J)I
    .locals 4

    .prologue
    .line 99
    const-wide/16 v0, 0xc

    rem-long v0, p0, v0

    long-to-int v0, v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 101
    packed-switch v0, :pswitch_data_0

    .line 110
    :pswitch_0
    const v0, 0x7f0200b8

    :goto_0
    return v0

    .line 108
    :pswitch_1
    const v0, 0x7f0200be

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
