.class public Lcom/android/preference/PreferenceGroup;
.super Lcom/android/preference/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/preference/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/preference/a;

    .line 91
    instance-of v2, v1, Lcom/android/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 92
    check-cast v1, Lcom/android/preference/ListPreference;

    .line 93
    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 94
    :cond_1
    instance-of v2, v1, Lcom/android/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 95
    check-cast v1, Lcom/android/preference/PreferenceGroup;

    .line 96
    invoke-virtual {v1, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/android/preference/a;->a(Landroid/content/SharedPreferences;)V

    .line 106
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/preference/a;

    .line 107
    invoke-virtual {v1, p1}, Lcom/android/preference/a;->a(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/android/preference/a;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Lcom/android/preference/a;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/preference/a;

    return-object p1

    :cond_1
    return-object v1
.end method

.method public c()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/preference/a;

    .line 78
    invoke-virtual {v1}, Lcom/android/preference/a;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/preference/PreferenceGroup;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
