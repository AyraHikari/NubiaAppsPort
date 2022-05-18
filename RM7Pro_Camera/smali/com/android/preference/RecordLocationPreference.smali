.class public Lcom/android/preference/RecordLocationPreference;
.super Lcom/android/preference/IconListPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/IconListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static b(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "pref_camera_recordlocation_key"

    const-string v1, "off"

    .line 51
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/preference/RecordLocationPreference;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/preference/RecordLocationPreference;->b(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    return-object v0
.end method
