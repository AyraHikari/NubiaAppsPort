.class public Lcom/hpplay/common/utils/Preference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_LASTEST_PKG_INFOS:Ljava/lang/String; = "key_lastest_pkg_infos"

.field private static final KEY_MAC:Ljava/lang/String; = "key_mac"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final KEY_MAC_B:Ljava/lang/String; = "key_mac_b"

.field private static final KEY_PERMISSION_DID:Ljava/lang/String; = "key_permission_did"

.field private static sInstance:Lcom/hpplay/common/utils/Preference;


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/hpplay/common/utils/Preference;->sInstance:Lcom/hpplay/common/utils/Preference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_mac"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/hpplay/common/utils/Preference;->setDeviceMac(Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_mac"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "Preference"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/hpplay/common/utils/Preference;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/hpplay/common/utils/Preference;->sInstance:Lcom/hpplay/common/utils/Preference;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/hpplay/common/utils/Preference;

    invoke-direct {v0, p0}, Lcom/hpplay/common/utils/Preference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hpplay/common/utils/Preference;->sInstance:Lcom/hpplay/common/utils/Preference;

    .line 41
    :cond_0
    sget-object v0, Lcom/hpplay/common/utils/Preference;->sInstance:Lcom/hpplay/common/utils/Preference;

    return-object v0
.end method


# virtual methods
.method public getDeviceMac()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_mac_b"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "Preference"

    invoke-static {v2, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getLastestPkgInfos()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_lastest_pkg_infos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionDid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "key_permission_did"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceMac(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_mac_b"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v1, "Preference"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method public setLastestPkgInfos(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_lastest_pkg_infos"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method

.method public setPermissionDid(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/common/utils/Preference;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_permission_did"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method
