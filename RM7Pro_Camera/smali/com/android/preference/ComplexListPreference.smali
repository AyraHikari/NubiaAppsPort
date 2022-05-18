.class public Lcom/android/preference/ComplexListPreference;
.super Lcom/android/preference/ExtraListPreference;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/ExtraListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 13
    sget-object p3, Lcom/android/preference/f$a;->t:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 15
    sget p2, Lcom/android/preference/f$a;->u:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/preference/ComplexListPreference;->a([Ljava/lang/CharSequence;)V

    .line 16
    sget p2, Lcom/android/preference/f$a;->v:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/preference/ComplexListPreference;->b([Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/preference/ComplexListPreference;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method public b([Ljava/lang/CharSequence;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/preference/ComplexListPreference;->b:[Ljava/lang/CharSequence;

    return-void
.end method

.method public d()[Ljava/lang/CharSequence;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/preference/ComplexListPreference;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 3

    .line 46
    invoke-virtual {p0}, Lcom/android/preference/ComplexListPreference;->n()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/preference/ComplexListPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    aget-object v0, v1, v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
