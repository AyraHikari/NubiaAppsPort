.class public Lcn/nubia/music/utils/SettingQualityUtils;
.super Ljava/lang/Object;
.source "SettingQualityUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingQualityByType(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 12
    invoke-static {v3, p0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 13
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    .line 15
    :cond_0
    invoke-static {v3, p0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    move v0, v1

    .line 17
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";current quality is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 18
    return v0
.end method

.method public static onAccountLogOut(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 22
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->DOWN_LOAD_QUALITY_SETTING:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 24
    sget-object v1, Lcn/nubia/music/utils/SharedPrefersHelper;->PLAY_QUALITY_SETTING:Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAccountLogOut, current downSongQuality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";playSongQuality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 28
    if-ne v0, v6, :cond_0

    .line 29
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->DOWN_LOAD_QUALITY_SETTING:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 32
    :cond_0
    if-ne v1, v6, :cond_1

    .line 33
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->PLAY_QUALITY_SETTING:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcn/nubia/music/utils/SharedPrefersHelper;->putInt(ILjava/lang/String;I)V

    .line 36
    :cond_1
    return-void
.end method
