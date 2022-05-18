.class public Lcn/nubia/camera/g/d;
.super Lcn/nubia/camera/g/b;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/j/b;

.field private b:Lcom/android/preference/ListPreference;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/j/b;Lcom/android/preference/ListPreference;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p3, p1}, Lcn/nubia/camera/g/b;-><init>(Lcom/android/preference/ListPreference;Lcn/nubia/camera/ad/a;)V

    .line 23
    iput-object p2, p0, Lcn/nubia/camera/g/d;->a:Lcn/nubia/camera/j/b;

    .line 24
    iput-object p3, p0, Lcn/nubia/camera/g/d;->b:Lcom/android/preference/ListPreference;

    .line 25
    iput-object p4, p0, Lcn/nubia/camera/g/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 29
    invoke-super {p0}, Lcn/nubia/camera/g/b;->a()V

    .line 30
    iget-object v0, p0, Lcn/nubia/camera/g/d;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcn/nubia/camera/g/d;->a:Lcn/nubia/camera/j/b;

    iget-object v2, p0, Lcn/nubia/camera/g/d;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/j/b;->a(Z)V

    return-void
.end method
