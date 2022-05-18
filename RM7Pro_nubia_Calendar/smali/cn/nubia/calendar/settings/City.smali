.class public Lcn/nubia/calendar/settings/City;
.super Ljava/lang/Object;
.source "City.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CITY_ID:Ljava/lang/String; = "city_id_"

.field private static final CITY_NAME:Ljava/lang/String; = "city_name_"

.field private static final CITY_SORT_KEY:Ljava/lang/String; = "city_sort_key"

.field private static final CITY_TIME_ZONE:Ljava/lang/String; = "city_tz_"

.field private static final COUNTRY_NAME:Ljava/lang/String; = "country_name_"


# instance fields
.field public mChecked:Z

.field public mCityId:Ljava/lang/String;

.field public mCityLetter:Ljava/lang/String;

.field public mCityName:Ljava/lang/String;

.field public mCityNamePinYin:Ljava/lang/String;

.field public mCountryName:Ljava/lang/String;

.field public mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;I)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/settings/City;->mChecked:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_tz_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "country_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    .line 93
    invoke-static {v0}, Lcn/nubia/calendar/util/CitySectionIndexer;->getPinyinSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcn/nubia/calendar/util/CitySectionIndexer;->getSectionForPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "countryName"    # Ljava/lang/String;
    .param p3, "timezone"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/settings/City;->mChecked:Z

    .line 41
    iput-object p1, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcn/nubia/calendar/util/CitySectionIndexer;->getPinyinSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcn/nubia/calendar/util/CitySectionIndexer;->getSectionForPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityLetter:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/calendar/util/CitySectionIndexer;->getPinyinSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/settings/City;->mCityNamePinYin:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 53
    new-instance v0, Lcn/nubia/calendar/settings/City;

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/calendar/settings/City;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "cityobject":Lcn/nubia/calendar/settings/City;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    if-ne p0, p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v2

    .line 70
    :cond_1
    instance-of v0, p1, Lcn/nubia/calendar/settings/City;

    .line 71
    .local v0, "b":Z
    if-eqz v0, :cond_3

    move-object v1, p1

    .line 72
    check-cast v1, Lcn/nubia/calendar/settings/City;

    .line 73
    .local v1, "ci":Lcn/nubia/calendar/settings/City;
    iget-object v4, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    iget-object v5, v1, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    iget-object v5, v1, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    iget-object v5, v1, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    .line 78
    goto :goto_0

    .end local v1    # "ci":Lcn/nubia/calendar/settings/City;
    :cond_3
    move v2, v3

    .line 81
    goto :goto_0
.end method

.method public saveCityToSharedPrefs(Landroid/content/SharedPreferences$Editor;I)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "index"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_tz_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city_id_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "country_name_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCountryName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
