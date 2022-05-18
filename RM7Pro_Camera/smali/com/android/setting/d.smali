.class public Lcom/android/setting/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/setting/ZtemtInlineSettingSwitch$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setting/d$a;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;

.field private c:Lcom/android/setting/d$a;

.field private d:Lcom/android/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/setting/d$a;Lcom/android/preference/PreferenceGroup;[Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/setting/d;->a:[Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/setting/d;->b:Landroid/view/LayoutInflater;

    .line 27
    iput-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    .line 28
    iput-object v0, p0, Lcom/android/setting/d;->d:Lcom/android/preference/PreferenceGroup;

    if-nez p1, :cond_0

    const-string p1, "MoreSettingsAdapter"

    const-string p2, "MoreSettingsAdapter failed, because context is null"

    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_0
    iput-object p4, p0, Lcom/android/setting/d;->a:[Ljava/lang/String;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setting/d;->b:Landroid/view/LayoutInflater;

    .line 37
    iput-object p2, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    .line 38
    iput-object p3, p0, Lcom/android/setting/d;->d:Lcom/android/preference/PreferenceGroup;

    return-void
.end method

.method private g(Ljava/lang/String;)I
    .locals 1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/setting/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/setting/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setting/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 115
    sget p1, Lcom/android/setting/f$f;->f:I

    return p1

    .line 117
    :cond_1
    sget p1, Lcom/android/setting/f$f;->e:I

    return p1

    .line 113
    :cond_2
    :goto_0
    sget p1, Lcom/android/setting/f$f;->d:I

    return p1
.end method

.method private h(Ljava/lang/String;)Lcom/android/preference/ListPreference;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/setting/d;->d:Lcom/android/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/android/preference/PreferenceGroup;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/setting/d;->d:Lcom/android/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/setting/d;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/setting/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 74
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    sget-object v0, Lcom/android/setting/c;->a:Lcom/android/setting/c;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    sget-object v0, Lcom/android/setting/c;->b:Lcom/android/setting/c;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    sget-object v0, Lcom/android/setting/c;->c:Lcom/android/setting/c;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    sget-object v0, Lcom/android/setting/c;->d:Lcom/android/setting/c;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->a(Ljava/lang/String;)Lcom/android/setting/c;

    move-result-object p1

    sget-object v0, Lcom/android/setting/c;->e:Lcom/android/setting/c;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    invoke-interface {v0, p1}, Lcom/android/setting/d$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/setting/d;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 123
    iget-object p3, p0, Lcom/android/setting/d;->d:Lcom/android/preference/PreferenceGroup;

    const-string v0, "MoreSettingsAdapter"

    if-nez p3, :cond_0

    const-string p1, "group is null"

    .line 124
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 127
    :cond_0
    iget-object p3, p0, Lcom/android/setting/d;->a:[Ljava/lang/String;

    aget-object p3, p3, p1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, p3}, Lcom/android/setting/d;->h(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/setting/d;->c:Lcom/android/setting/d$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, p3}, Lcom/android/setting/d$a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    const/4 v4, 0x0

    if-eqz p2, :cond_7

    .line 133
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, p3}, Lcom/android/setting/d;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    .line 137
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, p3}, Lcom/android/setting/d;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 141
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 142
    instance-of v5, p2, Lcom/android/setting/ZtemtInlineSettingSwitch;

    if-nez v5, :cond_7

    goto :goto_4

    .line 138
    :cond_5
    :goto_2
    instance-of v5, p2, Lcom/android/setting/SettingsExpandHeader;

    if-nez v5, :cond_7

    goto :goto_4

    .line 134
    :cond_6
    :goto_3
    instance-of v5, p2, Lcom/android/setting/SettingsHeader;

    if-nez v5, :cond_7

    :goto_4
    move-object p2, v4

    :cond_7
    if-nez p2, :cond_8

    .line 149
    invoke-direct {p0, p3}, Lcom/android/setting/d;->g(Ljava/lang/String;)I

    move-result p2

    .line 150
    iget-object v5, p0, Lcom/android/setting/d;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, p3}, Lcom/android/setting/d;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_5

    .line 166
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 167
    move-object p1, p2

    check-cast p1, Lcom/android/setting/SettingsExpandHeader;

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/setting/SettingsExpandHeader;->a(Lcom/android/preference/ListPreference;ZZ)V

    goto :goto_6

    .line 168
    :cond_a
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 169
    move-object p1, p2

    check-cast p1, Lcom/android/setting/SettingsExpandHeader;

    invoke-virtual {p1, v0, v3, v1}, Lcom/android/setting/SettingsExpandHeader;->a(Lcom/android/preference/ListPreference;ZZ)V

    goto :goto_6

    .line 170
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 171
    move-object p1, p2

    check-cast p1, Lcom/android/setting/ZtemtInlineSettingSwitch;

    invoke-virtual {p1, v0, v1}, Lcom/android/setting/ZtemtInlineSettingSwitch;->a(Lcom/android/preference/ListPreference;Z)V

    .line 172
    invoke-virtual {p1, p0}, Lcom/android/setting/ZtemtInlineSettingSwitch;->setSettingChangedListener(Lcom/android/setting/ZtemtInlineSettingSwitch$a;)V

    goto :goto_6

    .line 174
    :cond_c
    move-object p1, p2

    check-cast p1, Lcom/android/setting/SettingsHeader;

    invoke-virtual {p1, v0}, Lcom/android/setting/SettingsHeader;->a(Lcom/android/preference/ListPreference;)V

    goto :goto_6

    .line 154
    :cond_d
    :goto_5
    move-object v1, p2

    check-cast v1, Lcom/android/setting/SettingsHeader;

    invoke-virtual {v1, v0}, Lcom/android/setting/SettingsHeader;->a(Lcom/android/preference/ListPreference;)V

    .line 155
    invoke-virtual {p0, p3}, Lcom/android/setting/d;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e

    if-eqz p1, :cond_e

    .line 156
    invoke-virtual {v1}, Lcom/android/setting/SettingsHeader;->a()V

    .line 158
    :cond_e
    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 159
    new-instance p1, Lcom/android/setting/d$1;

    invoke-direct {p1, p0}, Lcom/android/setting/d$1;-><init>(Lcom/android/setting/d;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_6
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const-string v0, "MoreSettingsAdapter"

    const-string v1, "notifyDataSetChanged"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
