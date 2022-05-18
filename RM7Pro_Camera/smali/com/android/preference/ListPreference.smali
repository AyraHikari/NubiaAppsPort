.class public Lcom/android/preference/ListPreference;
.super Lcom/android/preference/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:[Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/CharSequence;

.field private f:[Ljava/lang/CharSequence;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    const/4 p3, 0x0

    .line 42
    iput-object p3, p0, Lcom/android/preference/ListPreference;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/android/preference/ListPreference;->d:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    .line 47
    iput-object p3, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    const/4 p3, 0x0

    .line 48
    iput-boolean p3, p0, Lcom/android/preference/ListPreference;->g:Z

    .line 53
    sget-object v0, Lcom/android/preference/f$a;->M:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    sget p2, Lcom/android/preference/f$a;->Q:I

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-static {p2}, Lcom/android/preference/ListPreference;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/preference/ListPreference;->a:Ljava/lang/String;

    .line 64
    sget p2, Lcom/android/preference/f$a;->N:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    iget v0, v0, Landroid/util/TypedValue;->type:I

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 69
    iput-object v0, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p3

    .line 73
    :goto_0
    sget p2, Lcom/android/preference/f$a;->O:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/preference/ListPreference;->c([Ljava/lang/CharSequence;)V

    .line 74
    sget p2, Lcom/android/preference/f$a;->P:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/preference/ListPreference;->d([Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 222
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/preference/ListPreference;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ListPreference"

    const-string v1, "setValueIndex failed."

    .line 165
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/preference/ListPreference;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v2, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 203
    iget-object v4, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 204
    iget-object v4, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v4, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 209
    new-array v2, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    .line 210
    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 152
    iput-object p1, p0, Lcom/android/preference/ListPreference;->b:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/preference/ListPreference;->e(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/android/preference/ListPreference;->g:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/preference/ListPreference;->b:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/preference/ListPreference;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c([Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    return-void
.end method

.method public d(Ljava/lang/String;)I
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/android/preference/ListPreference;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public d([Ljava/lang/CharSequence;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/preference/ListPreference;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/preference/ListPreference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()[Ljava/lang/CharSequence;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public j()[Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 108
    iget-boolean v0, p0, Lcom/android/preference/ListPreference;->g:Z

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/preference/ListPreference;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->m()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/ListPreference;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/android/preference/ListPreference;->g:Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/preference/ListPreference;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 118
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/android/preference/ListPreference;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 130
    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/android/preference/ListPreference;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/preference/ListPreference;->d:Ljava/lang/String;

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 136
    :goto_2
    iget-object v3, p0, Lcom/android/preference/ListPreference;->f:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 139
    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/preference/ListPreference;->d(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/preference/ListPreference;->e:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
