.class public Lcom/android/preference/ExtraListPreference;
.super Lcom/android/preference/ListPreference;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 39
    sget-object p3, Lcom/android/preference/f$a;->y:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 41
    sget p2, Lcom/android/preference/f$a;->z:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/preference/ExtraListPreference;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/preference/ExtraListPreference;->a:Ljava/lang/String;

    return-object v0
.end method
