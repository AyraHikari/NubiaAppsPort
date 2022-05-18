.class public abstract Lcom/android/preference/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/android/preference/a;->b:Landroid/content/SharedPreferences;

    .line 25
    sget-object p3, Lcom/android/preference/f$a;->q:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 27
    sget p2, Lcom/android/preference/f$a;->r:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/preference/a;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/preference/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/preference/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/preference/a;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public abstract c()V
.end method
