.class final Lcn/nubia/calendar/settings/WorldclockDbHelper$1;
.super Ljava/lang/Object;
.source "WorldclockDbHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/settings/WorldclockDbHelper;->loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/calendar/settings/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcn/nubia/calendar/settings/City;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/calendar/settings/City;Lcn/nubia/calendar/settings/City;)I
    .locals 4
    .param p1, "c1"    # Lcn/nubia/calendar/settings/City;
    .param p2, "c2"    # Lcn/nubia/calendar/settings/City;

    .prologue
    .line 154
    iget-object v1, p0, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->val$c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 155
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "localCountry":Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    iget-object v2, p1, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    iget-object v3, p2, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    iget-object v2, p1, Lcn/nubia/calendar/settings/City;->mCityNamePinYin:Ljava/lang/String;

    iget-object v3, p2, Lcn/nubia/calendar/settings/City;->mCityNamePinYin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lcn/nubia/calendar/settings/City;

    check-cast p2, Lcn/nubia/calendar/settings/City;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/settings/WorldclockDbHelper$1;->compare(Lcn/nubia/calendar/settings/City;Lcn/nubia/calendar/settings/City;)I

    move-result v0

    return v0
.end method
