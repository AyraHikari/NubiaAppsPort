.class final Lcn/nubia/deskclock/database/WorldclockDbHelper$1;
.super Ljava/lang/Object;
.source "WorldclockDbHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadAllSupportedCities(Landroid/content/Context;)[Lcn/nubia/deskclock/model/City;
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
        "Lcn/nubia/deskclock/model/City;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;

.field final synthetic val$compareWithPinyin:Z


# direct methods
.method constructor <init>(ZLjava/text/Collator;)V
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->val$compareWithPinyin:Z

    iput-object p2, p0, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/nubia/deskclock/model/City;Lcn/nubia/deskclock/model/City;)I
    .locals 3
    .param p1, "c1"    # Lcn/nubia/deskclock/model/City;
    .param p2, "c2"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->val$compareWithPinyin:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    iget-object v2, p2, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->val$collator:Ljava/text/Collator;

    iget-object v1, p1, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    iget-object v2, p2, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lcn/nubia/deskclock/model/City;

    check-cast p2, Lcn/nubia/deskclock/model/City;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/deskclock/database/WorldclockDbHelper$1;->compare(Lcn/nubia/deskclock/model/City;Lcn/nubia/deskclock/model/City;)I

    move-result v0

    return v0
.end method
