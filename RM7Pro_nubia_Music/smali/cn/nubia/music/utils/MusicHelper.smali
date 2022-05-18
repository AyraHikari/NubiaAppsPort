.class public Lcn/nubia/music/utils/MusicHelper;
.super Ljava/lang/Object;
.source "MusicHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-string v0, ""

    .line 44
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_2
    invoke-static {p2}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 54
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_4
    invoke-static {p3}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 60
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_6
    invoke-static {p4}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_7
    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->filterFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicUrl(IZ)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    if-ne p0, v1, :cond_0

    .line 7
    const-string v0, "https://openapi.baidu.com/rest/2.0/music/song/down?"

    .line 19
    :goto_0
    return-object v0

    .line 9
    :cond_0
    if-ne p0, v0, :cond_1

    .line 10
    const-string v0, "https://openapi.baidu.com/rest/2.0/music/song/getInfos?"

    goto :goto_0

    .line 13
    :cond_1
    if-ne p0, v1, :cond_2

    .line 14
    const-string v0, "http://openapi.baidu.com/rest/2.0/music/song/down?"

    goto :goto_0

    .line 16
    :cond_2
    if-ne p0, v0, :cond_3

    .line 17
    const-string v0, "http://openapi.baidu.com/rest/2.0/music/song/getInfos?"

    goto :goto_0

    .line 19
    :cond_3
    const-string v0, "http://openapi.baidu.com/rest/2.0/music/song/baseInfo?"

    goto :goto_0
.end method

.method public static getPageSize(I)I
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 31
    .line 32
    if-gtz p0, :cond_1

    .line 33
    const/16 p0, 0xa

    .line 37
    :cond_0
    :goto_0
    return p0

    .line 34
    :cond_1
    if-lt p0, v0, :cond_0

    move p0, v0

    .line 35
    goto :goto_0
.end method

.method public static getSongUrlDigest(JILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 25
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, v0}, Lcn/nubia/music/utils/MusicHelper;->getMusicUrl(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&songid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcn/nubia/music/utils/MD5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
