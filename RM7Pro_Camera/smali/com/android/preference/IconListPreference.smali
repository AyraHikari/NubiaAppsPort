.class public Lcom/android/preference/IconListPreference;
.super Lcom/android/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    const/4 p3, 0x0

    .line 35
    iput p3, p0, Lcom/android/preference/IconListPreference;->a:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/preference/IconListPreference;->b:[I

    .line 37
    iput-object v0, p0, Lcom/android/preference/IconListPreference;->c:[I

    .line 38
    iput-object v0, p0, Lcom/android/preference/IconListPreference;->d:[I

    .line 39
    iput p3, p0, Lcom/android/preference/IconListPreference;->e:I

    .line 43
    sget-object v0, Lcom/android/preference/f$a;->E:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 46
    sget v0, Lcom/android/preference/f$a;->I:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/preference/IconListPreference;->a:I

    .line 48
    sget v0, Lcom/android/preference/f$a;->F:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/preference/IconListPreference;->b(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->b:[I

    .line 50
    sget v0, Lcom/android/preference/f$a;->H:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/preference/IconListPreference;->b(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->c:[I

    .line 52
    sget v0, Lcom/android/preference/f$a;->G:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/preference/IconListPreference;->b(Landroid/content/res/Resources;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->d:[I

    .line 54
    sget v0, Lcom/android/preference/f$a;->F:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/android/preference/IconListPreference;->a(Landroid/content/res/Resources;I)I

    move-result p1

    iput p1, p0, Lcom/android/preference/IconListPreference;->e:I

    .line 56
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 91
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    .line 93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return p2
.end method

.method private b(Landroid/content/res/Resources;I)[I
    .locals 4

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    .line 103
    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    .line 105
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/android/preference/IconListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/android/preference/d;

    invoke-direct {v1}, Lcom/android/preference/d;-><init>()V

    .line 115
    new-instance v2, Lcom/android/preference/d;

    invoke-direct {v2}, Lcom/android/preference/d;-><init>()V

    .line 116
    new-instance v3, Lcom/android/preference/d;

    invoke-direct {v3}, Lcom/android/preference/d;-><init>()V

    .line 118
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 119
    aget-object v6, v0, v5

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/android/preference/IconListPreference;->b:[I

    if-eqz v6, :cond_0

    .line 121
    aget v6, v6, v5

    invoke-virtual {v1, v6}, Lcom/android/preference/d;->a(I)V

    .line 123
    :cond_0
    iget-object v6, p0, Lcom/android/preference/IconListPreference;->c:[I

    if-eqz v6, :cond_1

    .line 124
    aget v6, v6, v5

    invoke-virtual {v2, v6}, Lcom/android/preference/d;->a(I)V

    .line 126
    :cond_1
    iget-object v6, p0, Lcom/android/preference/IconListPreference;->d:[I

    if-eqz v6, :cond_2

    .line 127
    aget v6, v6, v5

    invoke-virtual {v3, v6}, Lcom/android/preference/d;->a(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/android/preference/IconListPreference;->b:[I

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {v1}, Lcom/android/preference/d;->a()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v1, v0}, Lcom/android/preference/d;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->b:[I

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/android/preference/IconListPreference;->c:[I

    if-eqz v0, :cond_5

    .line 135
    invoke-virtual {v2}, Lcom/android/preference/d;->a()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v2, v0}, Lcom/android/preference/d;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->c:[I

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/android/preference/IconListPreference;->d:[I

    if-eqz v0, :cond_6

    .line 138
    invoke-virtual {v3}, Lcom/android/preference/d;->a()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v3, v0}, Lcom/android/preference/d;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/IconListPreference;->d:[I

    .line 140
    :cond_6
    invoke-super {p0, p1}, Lcom/android/preference/ListPreference;->a(Ljava/util/List;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/android/preference/IconListPreference;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/android/preference/IconListPreference;->a:I

    return v0
.end method

.method public f()[I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/preference/IconListPreference;->b:[I

    return-object v0
.end method

.method public g()[I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/preference/IconListPreference;->c:[I

    return-object v0
.end method
